import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_account_page.dart';
import 'package:kfa_mobile_nu/src/pages/admin/auto_verbal_report_page.dart';
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
        1 => const AutoVerbalReportPage(),
        2 => const UserListPage(),
        3 => const AdminAccountPage(),
        _ => Container(),
      },
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) => activeIndex.value = value,
        currentIndex: activeIndex.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.pending),
            label: 'Property',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Auto Verbal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
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
