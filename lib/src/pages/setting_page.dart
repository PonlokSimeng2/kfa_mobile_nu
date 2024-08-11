import 'package:flutter/material.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/helpers/build_context_helper.dart';
import 'package:kfa_mobile_nu/src/pages/about_us_page.dart';
import 'package:kfa_mobile_nu/src/pages/account_page.dart';
import 'package:kfa_mobile_nu/src/pages/contact_us_page.dart';
import 'package:kfa_mobile_nu/src/pages/login_page.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/theme_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode =
        ref.watch(themeProvider.select((value) => value == ThemeMode.dark));
    final userAsync = ref.watch(currentUserProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: isDarkMode ? Colors.grey[900] : Colors.blue[800],
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDarkMode
                ? [Colors.grey[900]!, Colors.grey[700]!]
                : [Colors.blue[800]!, Colors.blue[200]!],
          ),
        ),
        child: userAsync.when(
          data: (user) => _buildSettingsList(context, ref, isDarkMode, user),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Error: $error')),
        ),
      ),
    );
  }

  Widget _buildSettingsList(
      BuildContext context, WidgetRef ref, bool isDarkMode, UserModel? user) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        _buildUserInfoCard(context, user, isDarkMode),
        // _buildSettingCard(
        //   icon: Icons.account_circle,
        //   title: 'Account',
        //   onTap: () => context.push((_) => const AccountPage()),
        //   isDarkMode: isDarkMode,
        // ),
        // _buildSettingCard(
        //   icon: Icons.notifications,
        //   title: 'Notifications',
        //   onTap: () {
        //     // TODO: Implement notifications settings
        //   },
        //   isDarkMode: isDarkMode,
        //   trailing: Switch(
        //     value: isDarkMode,
        //     onChanged: null,
        //   ),
        // ),
        _buildSettingCard(
          icon: isDarkMode ? Icons.light_mode : Icons.dark_mode,
          title: 'Theme',
          onTap: () {
            final themeNotifier = ref.read(themeProvider.notifier);
            themeNotifier.toggleTheme();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    'Theme changed to ${themeNotifier.isDarkMode ? 'Dark' : 'Light'}'),
                duration: const Duration(seconds: 2),
              ),
            );
          },
          isDarkMode: isDarkMode,
          trailing: Switch(
            value: isDarkMode,
            onChanged: (_) {
              ref.read(themeProvider.notifier).toggleTheme();
            },
          ),
        ),
        _buildSettingCard(
          icon: Icons.info,
          title: 'About',
          onTap: () {
            context.push((context) => const AboutUsPage());
          },
          isDarkMode: isDarkMode,
        ),
        _buildSettingCard(
          icon: Icons.contact_phone,
          title: 'Contact Us',
          onTap: () {
            context.push((context) => const ContactUsPage());
          },
          isDarkMode: isDarkMode,
        ),
        if (ref.watch(isAdminProvider))
          _buildSettingCard(
            icon: Icons.admin_panel_settings,
            title: 'Admin Panel',
            onTap: () {
              // TODO: Implement admin panel navigation
            },
            isDarkMode: isDarkMode,
          ),
        _buildSettingCard(
          icon: Icons.exit_to_app,
          title: 'Logout',
          onTap: () async {
            await ref.read(authProvider.notifier).signOut();
            ref.invalidate(currentUserProvider);
            context.pushReplace(
              (context) => const LoginPage(
                openAsPage: true,
              ),
            );
          },
          color: Colors.red[400],
          isDarkMode: isDarkMode,
        ),
      ],
    );
  }

  Widget _buildUserInfoCard(
      BuildContext context, UserModel? user, bool isDarkMode) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      color: isDarkMode ? Colors.grey[800] : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage:
                  user?.photo != null ? NetworkImage(user!.photo!) : null,
              child: user?.photo == null
                  ? Icon(Icons.person,
                      size: 40,
                      color: isDarkMode ? Colors.white : Colors.black54)
                  : null,
            ),
            const SizedBox(height: 8),
            Text(
              user?.fullName ?? 'Unknown User',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isDarkMode ? Colors.white : Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              user?.email ?? 'No email',
              style: TextStyle(
                fontSize: 14,
                color: isDarkMode ? Colors.grey[300] : Colors.black,
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const AccountPage()),
                      );
                    },
                    child: Icon(Icons.edit,
                        size: 25,
                        color: isDarkMode ? Colors.white : Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? color,
    required bool isDarkMode,
    Widget? trailing,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      color: isDarkMode ? Colors.grey[800] : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon,
            color: color ?? (isDarkMode ? Colors.blue[300] : Colors.blue[800])),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color ?? (isDarkMode ? Colors.white : Colors.black87)),
        ),
        trailing: trailing ??
            Icon(Icons.chevron_right,
                color: color ??
                    (isDarkMode ? Colors.blue[300] : Colors.blue[800])),
        onTap: onTap,
      ),
    );
  }
}
