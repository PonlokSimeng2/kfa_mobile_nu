import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/widgets/max_width_box.dart';

class UserDetailPage extends StatelessWidget {
  final UserModel user;

  const UserDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
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
                    tag: 'user_avatar_${user.userId}',
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey[200],
                      child: ClipOval(
                        child: user.photo != null
                            ? CachedNetworkImage(
                                imageUrl: user.photo!,
                                placeholder: (context, url) => const CircularProgressIndicator(),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                                fit: BoxFit.cover,
                                width: 120,
                                height: 120,
                              )
                            : const Icon(Icons.person, size: 60, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                _buildInfoTile('Full Name', user.fullName),
                _buildInfoTile('Email', user.email),
                _buildInfoTile('Phone', user.phone),
                _buildInfoTile('User ID', user.userId),
                _buildInfoTile('VPoints', user.vpoints.toString()),
                _buildInfoTile('Admin', user.isAdmin ? 'Yes' : 'No'),
                _buildInfoTile('Joined At', _formatDate(user.joinedAt)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoTile(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
          const Divider(height: 24),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute}';
  }
}
