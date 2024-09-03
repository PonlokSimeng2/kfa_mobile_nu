import 'package:bot_toast/bot_toast.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/max_width_box.dart';
import 'package:intl/intl.dart'; // Added for date formatting
import 'package:kfa_mobile_nu/src/providers/report_provider.dart'; // Added for property count

class UserDetailPage extends ConsumerStatefulWidget {
  final UserModel user;

  const UserDetailPage({super.key, required this.user});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends ConsumerState<UserDetailPage> {
  bool isAdmin = false;

  @override
  void initState() {
    super.initState();
    isAdmin = widget.user.isAdmin;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        actions: [
          GFButton(
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
                          final delete = ref.read(
                            deleteUserProvider(
                              widget.user.id,
                            ).notifier,
                          );
                          final result = await delete.call();
                          close();
                          if (result.isFailure) {
                            BotToast.showText(text: result.failure!.message());
                            return;
                          }
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
            text: 'Delete User',
            color: Colors.red,
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
                // _buildInfoTile(
                //     'VPoints', widget.user.vpoints.toString(), context),
                Consumer(
                  builder: (context, ref, child) {
                    final count = ref.watch(
                      countPropertyAndAutoVerbalProvider(
                        userId: widget.user.id,
                        statuses: [PropertyAndAutoVerbalStatus.approved].lock,
                      ).select(
                        (v) => v.whenOrNull(
                          data: (data) => data.propertyCount,
                        ),
                      ),
                    );
                    return _buildInfoTile('Total Property',
                        '${count?.toString()} cases' ?? "...", context);
                  },
                ),
                Consumer(
                  builder: (context, ref, child) {
                    final count = ref.watch(
                      countPropertyAndAutoVerbalProvider(
                        userId: widget.user.id,
                        statuses: [PropertyAndAutoVerbalStatus.approved].lock,
                      ).select(
                        (v) => v.whenOrNull(
                          data: (data) => data.autoVerbalCount,
                        ),
                      ),
                    );
                    return _buildInfoTile('Total Auto Verbal',
                        '${count?.toString()} cases' ?? "...", context);
                  },
                ),
                _buildInfoTile(
                  'Joined At',
                  _formatDate(widget.user.joinedAt),
                  context,
                ),
                ListTile(
                  title: Text('Admin'),
                  trailing: Switch(
                    value: isAdmin,
                    onChanged: (bool value) async {
                      setState(() {
                        isAdmin = value;
                      });
                      ref
                          .read(toggleUserAdminStatusProvider(widget.user.id)
                              .notifier)
                          .call(widget.user.id, value);
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
