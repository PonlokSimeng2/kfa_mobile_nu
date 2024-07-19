import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_account_page.dart';
import 'package:kfa_mobile_nu/src/pages/admin/property_report_page.dart';
import 'package:kfa_mobile_nu/src/pages/admin/user_list_page.dart';

class AdminHomePage extends HookConsumerWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final activeIndex = useState(0);

    return Scaffold(
      body: switch (activeIndex.value) {
        0 => const PropertyReportPage(),
        1 => const UserListPage(),
        2 => const AdminAccountPage(),
        _ => Container(),
      },
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => activeIndex.value = value,
        currentIndex: activeIndex.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'User List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
