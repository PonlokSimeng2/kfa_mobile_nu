import 'package:bot_toast/bot_toast.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/pages/admin/user_detail_page.dart';
import 'package:kfa_mobile_nu/src/providers/admin_provider.dart';

import '../../../exports.dart';
import '../../providers/user_provider.dart';
import 'admin_picker_dialog.dart';

class UserListPage extends HookConsumerWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useState('');
    final currentUser = ref.watch(currentUserProvider).requireValue;
    final adminCtr = useTextEditingController();
    final admin = useState<UserModel?>(currentUser);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
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
                const SizedBox(height: 12),
                TextField(
                  controller: adminCtr,
                  readOnly: true,
                  onTap: () async {
                    final result = await AdminPickerDialog.show(context, null);
                    if (result != null) {
                      adminCtr.text = result.fullName;
                      admin.value = result;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Filter by Admin',
                    prefixIcon: const Icon(Icons.admin_panel_settings_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    suffixIcon: admin.value != null
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              adminCtr.clear();
                              admin.value = null;
                            },
                          )
                        : null,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: _buildUserList(ref, searchController.value, admin.value),
          ),
        ],
      ),
    );
  }

  Widget _buildUserList(WidgetRef ref, String searchString, UserModel? admin) {
    final firstPageCountAsync = ref.watch(
      userListProvider(page: 0, searchString: searchString, admin: admin)
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
            ref.invalidate(
              userListProvider(
                page: 0,
                searchString: searchString,
                admin: admin,
              ),
            );
          },
          child: ListView.builder(
            itemCount: count,
            itemBuilder: (context, index) {
              final userAsync = ref.watch(
                userAtIndexProvider(
                  index: index,
                  searchString: searchString,
                  admin: admin,
                ),
              );
              return userAsync?.whenOrNull(
                    loading: (_) =>
                        const Center(child: CircularProgressIndicator()),
                    data: (user) => _buildUserListItem(context, ref, user),
                  ) ??
                  const SizedBox.shrink();
            },
          ),
        );
      },
    );
  }

  Widget _buildUserListItem(
    BuildContext context,
    WidgetRef ref,
    UserModel user,
  ) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: user.photo != null ? NetworkImage(user.photo!) : null,
        child: user.photo == null ? Text(user.firstName[0]) : null,
      ),
      title: user.active
          ? Text(user.fullName)
          : Row(
              children: [
                Text(user.fullName, style: const TextStyle(color: Colors.grey)),
                const Text(
                  ' (Inactive)',
                  style: TextStyle(color: Colors.red, fontSize: 10),
                ),
              ],
            ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.email,
            style: TextStyle(color: user.active ? null : Colors.grey),
          ),
          if (user.managedBy != null)
            Text(
              'Admin: ${user.managedBy!.firstName} ${user.managedBy!.lastName}',
            ),
          if (user.managedBy != null)
            Consumer(
              builder: (context, ref, child) {
                final currentUser = ref.watch(currentUserProvider);

                return currentUser.when(
                  data: (admin) {
                    if (admin != null && admin.id == user.managedBy!.id) {
                      return OutlinedButton(
                        onPressed: () async {
                          final close = BotToast.showLoading();
                          final result = await ref
                              .read(unAssignAdminProvider(user.id).notifier)
                              .call();
                          close();

                          if (result.isSuccess) {
                            BotToast.showText(text: 'Admin Unassigned');
                          }

                          if (result.isFailure) {
                            BotToast.showText(text: result.failure!.message());
                          }
                        },
                        child: const Text('Unassign Admin'),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                  loading: () => const SizedBox.shrink(),
                  error: (error, stack) => const SizedBox.shrink(),
                );
              },
            ),
          if (user.managedBy == null && user.isUser)
            OutlinedButton(
              onPressed: () async {
                final admin = await ref.read(currentUserProvider.future);
                if (admin != null) {
                  final close = BotToast.showLoading();
                  final result = await ref
                      .read(assignAdminProvider(user.id).notifier)
                      .call(admin.id);
                  close();

                  if (result.isSuccess) {
                    BotToast.showText(text: 'User Approved');
                  }

                  if (result.isFailure) {
                    BotToast.showText(text: result.failure!.message());
                  }
                }
              },
              child: const Text('Approve User'),
            ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            user.isAdmin ? Icons.admin_panel_settings : Icons.person,
            color: user.isAdmin ? Colors.red : Colors.grey,
          ),
          if (user.isSuperAdmin)
            const Text(
              'Super Admin',
              style: TextStyle(fontSize: 10, color: Colors.green),
            ),
        ],
      ),
      onTap: () {
        context.push((_) => UserDetailPage(user: user));
      },
    );
  }
}
