import 'package:getwidget/getwidget.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';

import '../../exports.dart';
import '../models/base.dart';
import '../models/property_model.dart';
import 'admin/widgets/admin_property_list_widget.dart';

final _propertyStatus = PropertyAndAutoVerbalStatus.values.where(
  (e) =>
      e != PropertyAndAutoVerbalStatus.resubmit &&
      e != PropertyAndAutoVerbalStatus.approved,
);

final _listingTypeProvider =
    StateProvider.autoDispose<PropertyListingType?>((ref) {
  return null;
});

class MyPropertyPage extends HookConsumerWidget {
  const MyPropertyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabCtr = useTabController(initialLength: _propertyStatus.length + 1);

    return AuthWrapperWidget(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: context.isDarkMode ? Colors.grey[900] : Colors.blue,
          title: const Text('My Property'),
          actions: [
            Consumer(
              builder: (context, ref, child) {
                final listingType = ref.watch(_listingTypeProvider);
                return GFButton(
                  onPressed: () {
                    ref.read(_listingTypeProvider.notifier).state =
                        listingType == null
                            ? PropertyListingType.sale
                            : (listingType == PropertyListingType.sale
                                ? PropertyListingType.rent
                                : null);
                  },
                  child: Text(
                    listingType == null
                        ? 'All'
                        : (listingType == PropertyListingType.sale
                            ? 'Sale'
                            : 'Rent'),
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              },
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
              ..._propertyStatus
                  .where((e) => e != PropertyAndAutoVerbalStatus.approved)
                  .map((e) => Tab(text: e.name.capitalize())),
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
    final listingType = ref.watch(_listingTypeProvider);
    return AdminPropertyListWidget(
      filter: PropertyListFilter(
        listingType: listingType,
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
