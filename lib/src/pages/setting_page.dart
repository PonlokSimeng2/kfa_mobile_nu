import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/pages/about_us_page.dart';
import 'package:kfa_mobile_nu/src/pages/account_page.dart';
import 'package:kfa_mobile_nu/src/pages/contact_us_page.dart';
import 'package:kfa_mobile_nu/src/pages/login_page.dart';
import 'package:kfa_mobile_nu/src/pages/register_page.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/notitfication_provider.dart';
import 'package:kfa_mobile_nu/src/providers/theme_provider.dart';

import '../providers/user_provider.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enabledNotification = ref.watch(notificationProvider).isEnabled;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: context.isDarkMode ? Colors.grey[900] : kPrimaryColor,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: context.isDarkMode
                ? [Colors.grey[900]!, Colors.grey[700]!]
                : [kPrimaryColor, kPrimaryColor],
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Consumer(
              builder: (context, ref, _) {
                final userAsync = ref.watch(currentUserProvider);
                return userAsync.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (_, __) =>
                      const Center(child: Text('Error loading user data')),
                  data: (user) => Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              if (user != null) ...[
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: user.photo != null
                                      ? NetworkImage(user.photo!)
                                      : null,
                                  child: user.photo == null
                                      ? const Icon(Icons.person, size: 50)
                                      : null,
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      user.firstName,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      user.lastName,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  user.email,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ] else ...[
                                Center(
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue[300]!,
                                          Colors.blue[700]!,
                                        ],
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.person,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                const Text(
                                  'Welcome, Guest!',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Log in to access all features',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton.icon(
                                  icon: const Icon(Icons.login),
                                  label: const Text('Log In'),
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.blue,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 24,
                                      vertical: 12,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  onPressed: () {
                                    context.push((context) => const LoginPage(
                                          openAsPage: true,
                                        ));
                                  },
                                ),
                                const SizedBox(height: 8),
                                TextButton(
                                  child: const Text('Create an account'),
                                  onPressed: () {
                                    context.push(
                                      (context) => const RegisterPage(),
                                    );
                                  },
                                ),
                              ],
                            ],
                          ),
                        ),
                        if (user != null)
                          Positioned(
                            right: 8,
                            bottom: 8,
                            child: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                context.push((context) => const AccountPage());
                              },
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
            _buildSettingCard(
              context: context,
              icon: Icons.notifications,
              title: 'Notifications',
              onTap: () {
                final notificationNotifier =
                    ref.read(notificationProvider.notifier);
                notificationNotifier.toggle();
              },
              subtitle: 'Configure your notification preferences',
              iconBackgroundColor: Colors.orange[400]!,
              trailing: Switch(
                value: enabledNotification,
                onChanged: (_) {
                  final notificationNotifier =
                      ref.read(notificationProvider.notifier);
                  notificationNotifier.toggle();
                },
              ),
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
              subtitle: 'Switch between light and dark mode',
              iconBackgroundColor: Colors.purple[400]!,
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
              subtitle: 'Learn more about our app',
              iconBackgroundColor: Colors.green[400]!,
            ),
            _buildSettingCard(
              context: context,
              icon: Icons.contact_phone,
              title: 'Contact Us',
              onTap: () {
                context.push((context) => const ContactUsPage());
              },
              subtitle: 'Get in touch with our support team',
              iconBackgroundColor: Colors.teal[400]!,
            ),
            _buildSettingCard(
              context: context,
              icon: Icons.exit_to_app,
              title: 'Logout',
              onTap: () async {
                await ref.read(authProvider.notifier).signOut();
                // ignore: use_build_context_synchronously
                context.pushReplace(
                  (context) => const LoginPage(openAsPage: true),
                );
              },
              subtitle: 'Sign out of your account',
              iconBackgroundColor: Colors.red[400]!,
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
    required String subtitle,
    required Color iconBackgroundColor,
    Widget? trailing,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      color: context.isDarkMode ? Colors.grey[800] : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: iconBackgroundColor,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: context.isDarkMode ? Colors.white : Colors.black87,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: context.isDarkMode ? Colors.grey[400] : Colors.grey[600],
          ),
        ),
        trailing: trailing ??
            Icon(
              Icons.chevron_right,
              color: context.isDarkMode ? Colors.blue[300] : Colors.blue[800],
            ),
        onTap: onTap,
      ),
    );
  }
}
