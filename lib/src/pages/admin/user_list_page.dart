import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/providers/admin_provider.dart';

import '../../../exports.dart';

class UserListPage extends HookConsumerWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useState('');

    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (value) => searchController.value = value,
              decoration: InputDecoration(
                hintText: 'Search users...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Expanded(
            child: _buildUserList(ref, searchController.value),
          ),
        ],
      ),
    );
  }

  Widget _buildUserList(WidgetRef ref, String searchString) {
    final firstPageCountAsync = ref.watch(
      userListProvider(page: 0, searchString: searchString)
          .select((v) => v.whenData((v) => v.length)),
    );

    return firstPageCountAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
      data: (count) {
        if (count == 0) {
          return const Center(
            child: Text(
              'No users found',
              style: TextStyle(fontSize: 18),
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(userListProvider(page: 0, searchString: searchString));
          },
          child: ListView.builder(
            itemCount: count,
            itemBuilder: (context, index) {
              final userAsync =
                  ref.watch(userAtIndexProvider(index: index, searchString: searchString));
              return userAsync?.whenOrNull(
                    loading: (_) => const Center(child: CircularProgressIndicator()),
                    data: (user) => _buildUserListItem(context, user),
                  ) ??
                  const SizedBox.shrink();
            },
          ),
        );
      },
    );
  }

  Widget _buildUserListItem(BuildContext context, UserModel user) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: user.photo != null ? NetworkImage(user.photo!) : null,
        child: user.photo == null ? Text(user.firstName[0]) : null,
      ),
      title: Text(user.fullName),
      subtitle: Text(user.email),
      trailing: Icon(
        user.isAdmin ? Icons.admin_panel_settings : Icons.person,
        color: user.isAdmin ? Colors.red : Colors.grey,
      ),
      onTap: () {
        // TODO: Implement user detail page navigation
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Tapped on ${user.fullName}')),
        );
      },
    );
  }
}
