import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_account_page.dart';
import 'package:kfa_mobile_nu/src/pages/admin/auto_verbal_report_page.dart';
import 'package:kfa_mobile_nu/src/pages/admin/property_report_page.dart';
import 'package:kfa_mobile_nu/src/pages/admin/user_list_page.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';

import '../../widgets/max_width_box.dart';

final _navItems = [
  (Icons.pending, 'Property'),
  (Icons.insert_chart, 'Auto Verbal'),
  (Icons.people, 'User List'),
  (Icons.account_circle, 'Account'),
];

class AdminHomePage extends HookConsumerWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final activeIndex = useState(0);

    return AuthWrapperWidget(
      child: Scaffold(
        body: Row(
          children: [
            if (context.isLargeScreen)
              NavigationRail(
                selectedIndex: activeIndex.value,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                onDestinationSelected: (value) => activeIndex.value = value,
                destinations: _navItems
                    .map(
                      (item) => NavigationRailDestination(
                        icon: Icon(
                          item.$1,
                          size: 40,
                        ),
                        label: Text(
                          item.$2,
                        ),
                        indicatorColor: Theme.of(context).primaryColor,
                      ),
                    )
                    .toList(),
                labelType: NavigationRailLabelType.all,
              ),
            Expanded(
              child: MaxWidthBox(
                child: switch (activeIndex.value) {
                  0 => const PropertyReportPage(),
                  1 => const AutoVerbalReportPage(),
                  2 => const UserListPage(),
                  3 => const AdminAccountPage(),
                  _ => Container(),
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: context.isLargeScreen
            ? null
            : BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: (value) => activeIndex.value = value,
                currentIndex: activeIndex.value,
                items: _navItems
                    .map(
                      (item) => BottomNavigationBarItem(
                          icon: Icon(item.$1), label: item.$2),
                    )
                    .toList(),
              ),
      ),
    );
  }
}
