import 'dart:math';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_picker_dialog.dart';
import 'package:kfa_mobile_nu/src/pages/admin/user_detail_page.dart';
import 'package:kfa_mobile_nu/src/providers/admin_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';

import '../../../exports.dart';
import 'widgets/admin_list_dropdown.dart';

class UserListPage extends HookConsumerWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useState('');
    final currentUser = ref.watch(currentUserProvider).requireValue;
    final adminCtr = useTextEditingController();
    final adminFilter = useState<UserModel?>(null);
    final scrollController = useScrollController();

    // Animation controller for the search bar
    final isSearchExpanded = useState(false);

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('User Management'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                // Animated search bar
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 55,
                  width: isSearchExpanded.value
                      ? MediaQuery.of(context).size.width - 32
                      : MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    onChanged: (value) => searchController.value = value,
                    onTap: () => isSearchExpanded.value = true,
                    onSubmitted: (_) => isSearchExpanded.value = false,
                    decoration: InputDecoration(
                      hintText: 'Search by name or email...',
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      suffixIcon: searchController.value.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear, color: Colors.grey),
                              onPressed: () {
                                searchController.value = '';
                                isSearchExpanded.value = false;
                                FocusScope.of(context).unfocus();
                              },
                            )
                          : null,
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                    ),
                  ),
                ),

                // Admin filter (only for super admins)
                if (currentUser!.isSuperAdmin || currentUser.isAdmin)
                  Container(
                    margin: const EdgeInsets.only(top: 12),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.admin_panel_settings,
                            color: Colors.grey),
                        const SizedBox(width: 8),
                        Expanded(
                          child: InkWell(
                            onTap: () async {
                              final result = await showDialog<UserModel>(
                                context: context,
                                builder: (context) => const AdminPickerDialog(),
                              );
                              if (result != null) {
                                adminCtr.text = result.fullName;
                                adminFilter.value = result;
                              }
                            },
                            child: Text(
                              adminFilter.value?.fullName ?? 'Filter by Admin',
                              style: TextStyle(
                                color: adminFilter.value != null
                                    ? Colors.black87
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        if (adminFilter.value != null)
                          IconButton(
                            icon: const Icon(Icons.clear, size: 20),
                            onPressed: () {
                              adminCtr.clear();
                              adminFilter.value = null;
                            },
                          ),
                      ],
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          // Stats summary
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child:
                _buildUserStats(ref, searchController.value, adminFilter.value),
          ),

          Expanded(
            child: _buildUserList(
              ref,
              searchController.value,
              adminFilter.value,
              scrollController,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserStats(
      WidgetRef ref, String searchString, UserModel? adminFilter) {
    // Watch overall user count
    final userCountAsync = ref.watch(
      userListProvider(
        page: 0,
        searchString: searchString,
        admin: adminFilter,
      ).select((v) => v.whenData((v) => v.length)),
    );

    // Watch active user count
    final activeUserCountAsync = ref.watch(
      userListProvider(
        page: 0,
        searchString: searchString,
        admin: adminFilter,
      ).select((v) =>
          v.whenData((v) => v.where((user) => user.active == true).length)),
    );

    // Watch inactive user count
    final inactiveUserCountAsync = ref.watch(
      userListProvider(
        page: 0,
        searchString: searchString,
        admin: adminFilter,
      ).select((v) =>
          v.whenData((v) => v.where((user) => user.active == false).length)),
    );

    return userCountAsync.when(
      loading: () => const SizedBox(height: 40),
      error: (_, __) => const SizedBox(height: 40),
      data: (totalCount) {
        // Get active and inactive counts
        final activeCount = activeUserCountAsync.valueOrNull ?? 0;
        final inactiveCount = inactiveUserCountAsync.valueOrNull ?? 0;

        return Row(
          children: [
            Expanded(
              child: _buildStatCard(
                context: ref.context,
                icon: Icons.people,
                title: 'Users',
                value: totalCount.toString(),
                color: Colors.blue,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildStatCard(
                context: ref.context,
                icon: Icons.admin_panel_settings,
                title: 'Active',
                value: activeCount.toString(), // Display active user count
                color: Colors.green,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildStatCard(
                context: ref.context,
                icon: Icons.person_off,
                title: 'Inactive',
                value: inactiveCount.toString(), // Display inactive user count
                color: Colors.red,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildStatCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 18),
              const SizedBox(width: 6),
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserList(
    WidgetRef ref,
    String searchString,
    UserModel? adminFilter,
    ScrollController scrollController,
  ) {
    final firstPageCountAsync = ref.watch(
      userListProvider(
        page: 0,
        searchString: searchString,
        admin: adminFilter,
      ).select((v) => v.whenData((v) => v.length)),
    );

    return firstPageCountAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 60, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              'Error: $error',
              style: const TextStyle(color: Colors.red),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.invalidate(userListProvider(
                  page: 0,
                  searchString: searchString,
                  admin: adminFilter,
                ));
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
      data: (count) {
        if (count == 0) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  searchString.isNotEmpty || adminFilter != null
                      ? Icons.search_off
                      : Icons.people_outline,
                  size: 80,
                  color: Colors.grey[400],
                ),
                const SizedBox(height: 16),
                Text(
                  searchString.isNotEmpty || adminFilter != null
                      ? 'No matching users found'
                      : 'No users available',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (searchString.isNotEmpty || adminFilter != null)
                  TextButton(
                    onPressed: () {
                      ref.invalidate(userListProvider(
                        page: 0,
                        searchString: '',
                        admin: null,
                      ));
                    },
                    child: const Text('Clear filters'),
                  ),
              ],
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(userListProvider(
              page: 0,
              searchString: searchString,
              admin: adminFilter,
            ));
          },
          child: ListView.builder(
            controller: scrollController,
            padding: const EdgeInsets.only(bottom: 80),
            itemCount: count,
            itemBuilder: (context, index) {
              final userAsync = ref.watch(
                userAtIndexProvider(
                  index: index,
                  searchString: searchString,
                  admin: adminFilter,
                ),
              );

              return userAsync?.whenOrNull(
                    loading: (_) => const _UserListItemSkeleton(),
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
    final bool isActive = user.active;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
        border: Border.all(
          color: isActive ? Colors.transparent : Colors.red.withOpacity(0.3),
          width: isActive ? 0 : 1,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              context.push((_) => UserDetailPage(user: user));
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Avatar with status indicator
                      Stack(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                              border: Border.all(
                                color: isActive
                                    ? Colors.green.withOpacity(0.5)
                                    : Colors.red.withOpacity(0.5),
                                width: 2,
                              ),
                              image: user.photo != null
                                  ? DecorationImage(
                                      image: NetworkImage(user.photo!),
                                      fit: BoxFit.cover,
                                    )
                                  : null,
                            ),
                            child: user.photo == null
                                ? Center(
                                    child: Text(
                                      user.firstName.isNotEmpty
                                          ? user.firstName[0].toUpperCase()
                                          : 'U',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: isActive
                                            ? Colors.black54
                                            : Colors.grey,
                                      ),
                                    ),
                                  )
                                : null,
                          ),

                          // Status indicator
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: isActive ? Colors.green : Colors.red,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 12),

                      // User info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    user.fullName,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: isActive
                                          ? Colors.black87
                                          : Colors.grey,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),

                                // Role badge
                                if (user.isAdmin || user.isSuperAdmin)
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 3,
                                    ),
                                    decoration: BoxDecoration(
                                      color: user.isSuperAdmin
                                          ? Colors.orange[50]
                                          : Colors.blue[50],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      user.isSuperAdmin
                                          ? 'Super Admin'
                                          : 'Admin',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: user.isSuperAdmin
                                            ? Colors.orange[700]
                                            : Colors.blue[700],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 2),
                            Text(
                              user.email,
                              style: TextStyle(
                                fontSize: 13,
                                color: isActive
                                    ? Colors.grey[600]
                                    : Colors.grey[400],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            if (user.phone != 'N/A')
                              Text(
                                user.phone,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: isActive
                                      ? Colors.grey[500]
                                      : Colors.grey[400],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Show admin assignment only for regular users
                  if (user.isUser)
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.supervisor_account,
                            size: 16,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Managed by:',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 8),
                          if (user.managedBy != null)
                            Text(
                              user.managedBy!.fullName,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            )
                          else
                            const Text(
                              'No admin assigned',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (user.isUser)
                    SizedBox(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.assignment_ind,
                            size: 16,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Assign to admin:',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: AdminAssignmentDropdown(
                              user: user,
                              onChanged: (success) {
                                if (success) {
                                  BotToast.showText(
                                    text: user.managedBy != null
                                        ? 'Admin assigned successfully'
                                        : 'Admin unassigned successfully',
                                    duration: const Duration(seconds: 2),
                                  );
                                } else {
                                  BotToast.showText(
                                    text: 'Failed to assign admin',
                                    duration: const Duration(seconds: 2),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Skeleton loading widget
class _UserListItemSkeleton extends StatelessWidget {
  const _UserListItemSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 16,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 12,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 10,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
