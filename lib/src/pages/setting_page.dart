import 'package:flutter/material.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/helpers/build_context_helper.dart';
import 'package:kfa_mobile_nu/src/pages/about_us_page.dart';
import 'package:kfa_mobile_nu/src/pages/account_page.dart';
import 'package:kfa_mobile_nu/src/pages/contact_us_page.dart';
import 'package:kfa_mobile_nu/src/pages/login_page.dart';
import 'package:kfa_mobile_nu/src/providers/theme_provider.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode =
        ref.watch(themeProvider.select((value) => value == ThemeMode.dark));

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
        child: ListView(
          children: [
            const SizedBox(height: 20),
            _buildSettingCard(
              icon: Icons.account_circle,
              title: 'Account',
              onTap: () => context.push((_) => const AccountPage()),
              isDarkMode: isDarkMode,
            ),
            _buildSettingCard(
              icon: Icons.notifications,
              title: 'Notifications',
              onTap: () {
                // TODO: Implement notifications settings
              },
              isDarkMode: isDarkMode,
            ),
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
            _buildSettingCard(
              icon: Icons.exit_to_app,
              title: 'Logout',
              onTap: () {
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
