import 'package:bot_toast/bot_toast.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart'; // Updated import
import 'package:kfa_mobile_nu/src/widgets/max_width_box.dart';
import 'package:intl/intl.dart'; // Added for date formatting
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfa_mobile_nu/src/providers/report_provider.dart'; // Added for property count
import 'package:flutter/services.dart'; // Added for show password

class UserDetailPage extends StatefulWidget {
  final UserModel user;

  const UserDetailPage({super.key, required this.user});

  @override
  _UserDetailPageState createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  bool isAdmin = false;
  int propertyCount = 0; // Added to store property count
  bool _showPassword = false; // Added to show password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Delete'),
                    content: const Text(
                      'Are you sure you want to delete this user?',
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.error,
                        ),
                        child: const Text('Delete'),
                        onPressed: () async {
                          final close = BotToast.showLoading();
                          // final delete = ref.read(
                          //   deleteUserProvider(
                          //     widget.user.userId,
                          //   ).notifier,
                          // );
                          // await delete();
                          close();
                          if (!context.mounted) return;
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: MaxWidthBox(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Hero(
                    tag: 'user_avatar_${widget.user.userId}',
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey[200],
                      child: ClipOval(
                        child: widget.user.photo != null
                            ? CachedNetworkImage(
                                imageUrl: widget.user.photo!,
                                placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error, color: Colors.red),
                                fit: BoxFit.cover,
                                width: 120,
                                height: 120,
                              )
                            : const Icon(Icons.person,
                                size: 60, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                _buildInfoTile('Full Name', widget.user.fullName, context),
                _buildInfoTile('Email', widget.user.email, context),
                _buildInfoTile('Phone', widget.user.phone, context),
                _buildInfoTile('User ID', widget.user.userId, context),
                _buildInfoTile(
                    'VPoints', widget.user.vpoints.toString(), context),
                Consumer(
                  builder: (context, ref, child) {
                    final count = ref.watch(
                      countPropertyAndAutoVerbalProvider(
                        userId: widget.user.userId,
                        statuses: PropertyAndAutoVerbalStatus.values.lock,
                      ).select(
                        (v) => v.whenOrNull(
                          data: (data) => data.propertyCount,
                        ),
                      ),
                    );
                    return _buildInfoTile(
                        'Total Property', count?.toString() ?? "...", context);
                  },
                ),
                Consumer(
                  builder: (context, ref, child) {
                    final count = ref.watch(
                      countPropertyAndAutoVerbalProvider(
                        userId: widget.user.userId,
                        statuses: PropertyAndAutoVerbalStatus.values.lock,
                      ).select(
                        (v) => v.whenOrNull(
                          data: (data) => data.autoVerbalCount,
                        ),
                      ),
                    );
                    return _buildInfoTile('Total Auto Verbal',
                        count?.toString() ?? "...", context);
                  },
                ),
                _buildInfoTile(
                    'Joined At', _formatDate(widget.user.joinedAt), context),
                ListTile(
                  title: Text('Admin'),
                  trailing: Switch(
                    value: widget.user.isAdmin,
                    onChanged: (bool value) {
                      setState(() {
                        isAdmin = value;
                        // Assuming there's a method to update the user's admin status
                        // This is a placeholder for the actual update logic
                        // updateAdminStatus(widget.user.userId, isAdmin);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoTile(String title, String value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
                backgroundColor: Colors.grey[100]),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                backgroundColor: Colors.grey[100]),
          ),
          const Divider(height: 24),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }
}
