import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/pages/about_us_page.dart';
import 'package:kfa_mobile_nu/src/pages/account_page.dart';
import 'package:kfa_mobile_nu/src/pages/contact_us_page.dart';
import 'package:kfa_mobile_nu/src/pages/login_page.dart';
import 'package:kfa_mobile_nu/src/providers/theme_provider.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: context.isDarkMode ? Colors.grey[900] : Colors.blue[800],
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: context.isDarkMode
                ? [Colors.grey[900]!, Colors.grey[700]!]
                : [Colors.blue[800]!, Colors.blue[200]!],
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            _buildSettingCard(
              context: context,
              icon: Icons.account_circle,
              title: 'Account',
              onTap: () => context.push((_) => const AccountPage()),
            ),
            _buildSettingCard(
              context: context,
              icon: Icons.notifications,
              title: 'Notifications',
              onTap: () {
                // TODO: Implement notifications settings
              },
            ),
            _buildSettingCard(
              context: context,
              icon: context.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              title: 'Theme',
              onTap: () {
                final themeNotifier = ref.read(appThemeModeProvider.notifier);
                themeNotifier.toggleTheme();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Theme changed to ${context.isDarkMode ? 'Dark' : 'Light'}',
                    ),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              trailing: Switch(
                value: context.isDarkMode,
                onChanged: (_) {
                  ref.read(appThemeModeProvider.notifier).toggleTheme();
                },
              ),
            ),
            _buildSettingCard(
              context: context,
              icon: Icons.info,
              title: 'About',
              onTap: () {
                context.push((context) => const AboutUsPage());
              },
            ),
            _buildSettingCard(
              context: context,
              icon: Icons.contact_phone,
              title: 'Contact Us',
              onTap: () {
                context.push((context) => const ContactUsPage());
              },
            ),
            _buildSettingCard(
              context: context,
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? color,
    Widget? trailing,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      color: context.isDarkMode ? Colors.grey[800] : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(
          icon,
          color: color ?? (context.isDarkMode ? Colors.blue[300] : Colors.blue[800]),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color ?? (context.isDarkMode ? Colors.white : Colors.black87),
          ),
        ),
        trailing: trailing ??
            Icon(
              Icons.chevron_right,
              color: color ?? (context.isDarkMode ? Colors.blue[300] : Colors.blue[800]),
            ),
        onTap: onTap,
      ),
    );
  }
}
