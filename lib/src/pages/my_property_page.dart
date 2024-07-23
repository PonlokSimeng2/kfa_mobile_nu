import 'package:getwidget/getwidget.dart';
import 'package:kfa_mobile_nu/src/helpers/build_context_helper.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';

import '../../exports.dart';
import '../models/base.dart';
import 'add_property_page.dart';
import 'admin/widgets/admin_property_list_widget.dart';

final _propertyStatus =
    PropertyAndAutoVerbalStatus.values.where((e) => e != PropertyAndAutoVerbalStatus.resubmit);

class MyPropertyPage extends HookConsumerWidget {
  const MyPropertyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabCtr = useTabController(initialLength: _propertyStatus.length + 1);

    return AuthWrapperWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Property'),
          actions: [
            GFButton(
              onPressed: () {
                context.push((_) => AddPropertyPage());
              },
              icon: const Icon(Icons.add),
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 10),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            controller: tabCtr,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              const Tab(text: 'All'),
              ..._propertyStatus.map((e) => Tab(text: e.name.capitalize())),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabCtr,
          children: [
            _Content(statuses: PropertyAndAutoVerbalStatus.values.lock),
            ..._propertyStatus.map((e) => _Content(statuses: [e].lock)),
          ],
        ),
      ),
    );
  }
}

class _Content extends ConsumerWidget {
  const _Content({super.key, required this.statuses});

  final IList<PropertyAndAutoVerbalStatus> statuses;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AdminPropertyListWidget(
      filter: PropertyListFilter(
        statuses: [
          ...statuses,
          if (statuses.contains(PropertyAndAutoVerbalStatus.pending))
            PropertyAndAutoVerbalStatus.resubmit,
        ].lock,
        userId: ref.watch(authProvider),
      ),
    );
  }
}
