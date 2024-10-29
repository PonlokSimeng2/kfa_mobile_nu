import 'package:bot_toast/bot_toast.dart';
import 'package:intl/intl.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/theme_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:kfa_mobile_nu/src/providers/telegram_provider.dart';
import 'package:kfa_mobile_nu/src/pages/admin/notification/connect_telegram_dialog.dart';

import '../../../exports.dart';

class AdminAccountPage extends ConsumerWidget {
  const AdminAccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(currentUserProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Account',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white),),
        elevation: 0,
      ),
      body: userAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
        data: (user) {
          if (user == null) {
            return const Center(child: Text('User not found'));
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildProfileHeader(context, user),
                const SizedBox(height: 16),
                const _AdminSection(),
                const SizedBox(height: 16),
                _buildUserInfoCard(context, user),
                const SizedBox(height: 16),
                _buildSignOutButton(context, ref),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context, UserModel user) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Center(
        child: CircleAvatar(
          radius: 60,
          backgroundColor: Colors.white,
          backgroundImage:
              user.photo != null ? NetworkImage(user.photo!) : null,
          child: user.photo == null
              ? Text(
                  user.firstName[0],
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: Theme.of(context).primaryColor),
                )
              : null,
        ),
      ),
    );
  }

  Widget _buildUserInfoCard(BuildContext context, UserModel user) {
    return Card(
      margin: context.responsiveMargin,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildInfoTile(context, Icons.person, 'Name', user.fullName),
            _buildInfoTile(context, Icons.email, 'Email', user.email),
            _buildInfoTile(context, Icons.phone, 'Phone', user.phone),
            _buildInfoTile(context, Icons.admin_panel_settings, 'Admin',
                user.isAdmin ? 'Yes' : 'No',),
            _buildInfoTile(context, Icons.calendar_today, 'Joined',
                DateFormat('MMM d, yyyy').format(user.joinedAt),),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(
      BuildContext context, IconData icon, String title, String value,) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).primaryColor),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.bold),),
                const SizedBox(height: 4),
                Text(value, style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignOutButton(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: context.responsiveMargin,
      child: ElevatedButton.icon(
        onPressed: () async {
          await ref.read(authProvider.notifier).signOut();
        },
        icon: const Icon(Icons.logout),
        label: const Text('Sign Out'),
        style: ElevatedButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.onError,
          backgroundColor: Theme.of(context).colorScheme.error,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}

class _AdminSection extends ConsumerWidget {
  const _AdminSection();

  @override
  Widget build(BuildContext context, ref) {
    final isDarkMode = context.isDarkMode;
    final telegramConnected = ref.watch(telegramGroupIdProvider);

    return Card(
      margin: context.responsiveMargin,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Admin Settings',
                style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark Mode', style: Theme.of(context).textTheme.bodyLarge),
                Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    ref.read(appThemeModeProvider.notifier).toggleTheme();
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            telegramConnected.when(
              data: (id) {
                if (id == null) {
                  return ElevatedButton.icon(
                    onPressed: () async {
                      final close = BotToast.showLoading();
                      await ref.read(teleDartProvider.future);
                      close();
                      if (!context.mounted) return;

                      ConnectTelegramDialog.show(
                        context,
                        onConnected: (groupId) async {
                          final result = await ref
                              .read(updateTelegramGroupIdProvider.notifier)
                              .call(groupId: groupId);

                          if (result.isFailure) {
                            return result.failure?.message();
                          }
                          return null;
                        },
                      );
                    },
                    icon: const Icon(Icons.telegram),
                    label: const Text('Connect Telegram Group'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                  );
                }

                return ElevatedButton.icon(
                  onPressed: () async {
                    final result = await ref
                        .read(updateTelegramGroupIdProvider.notifier)
                        .call(groupId: null);
                    if (result.isFailure) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Failed to disconnect: ${result.failure?.message()}',
                            ),
                          ),
                        );
                      }
                    } else {
                      if (context.mounted) {
                        final teledart =
                            await ref.watch(teleDartProvider.future);
                        await teledart.leaveChat(id);
                        if (!context.mounted) return;
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'Successfully disconnected from Telegram group',),
                          ),
                        );
                      }
                    }
                  },
                  icon: const Icon(Icons.link_off),
                  label: const Text('Disconnect Telegram Group'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.onError,
                    backgroundColor: Theme.of(context).colorScheme.error,
                  ),
                );
              },
              loading: () => const SizedBox(
                height: 30,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: LinearProgressIndicator(),
                ),
              ),
              error: (error, stack) => Text('Error: $error'),
            ),
          ],
        ),
      ),
    );
  }
}
