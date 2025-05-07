import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/providers/admin_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';

class AdminAssignmentDropdown extends ConsumerWidget {
  final UserModel user;
  final Function(bool success) onChanged;

  const AdminAssignmentDropdown({
    super.key,
    required this.user,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adminListAsync = ref.watch(adminListProvider);
    final currentUserAsync = ref.watch(currentUserProvider);

    return currentUserAsync.when(
      loading: () => const SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(),
      ),
      error: (error, stack) =>
          Text('Error: $error', style: const TextStyle(color: Colors.red)),
      data: (currentUser) {
        if (currentUser == null) {
          return const Text('Not logged in',
              style: TextStyle(fontSize: 12, color: Colors.red));
        }

        final isSuperAdmin =
            currentUser is UserModel && currentUser.isSuperAdmin;

        return adminListAsync.when(
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error',
              style: const TextStyle(color: Colors.red, fontSize: 12)),
          data: (admins) {
            final availableAdmins = admins.where((admin) {
              if (admin.id == user.id) return false;
              if (admin is UserModel) {
                return isSuperAdmin || !admin.isSuperAdmin;
              }
              return true;
            }).toList();

            final selectedAdminId =
                availableAdmins.any((admin) => admin.id == user.managedBy?.id)
                    ? user.managedBy?.id
                    : null;

            return DropdownButton<String?>(
              value: selectedAdminId,
              isExpanded: true,
              items: [
                const DropdownMenuItem<String?>(
                  value: null,
                  child: Text('No admin'),
                ),
                ...availableAdmins.map((admin) {
                  final displayName =
                      admin is UserModel ? admin.fullName : 'Unknown';

                  return DropdownMenuItem<String?>(
                    value: admin.id,
                    child: Text(displayName),
                  );
                }),
              ],
              onChanged: (String? newAdminId) async {
                final result = await ref
                    .read(updateUserAdminProvider(user.id).notifier)
                    .call(newAdminId);
                onChanged(result.isSuccess);
              },
            );
          },
        );
      },
    );
  }
}
