import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/models/property_model.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/auto_verbal_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_property_detail_page.dart';
import 'package:kfa_mobile_nu/src/pages/property_detail_page.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_auto_verbal_detail_page.dart';
import 'package:kfa_mobile_nu/src/pages/client_auto_verbal_detail_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kfa_mobile_nu/exports.dart';

class PropertyAndAutoVerbalReportPage extends ConsumerStatefulWidget {
  const PropertyAndAutoVerbalReportPage({Key? key}) : super(key: key);

  @override
  ConsumerState<PropertyAndAutoVerbalReportPage> createState() =>
      _PropertyAndAutoVerbalReportPageState();
}

class _PropertyAndAutoVerbalReportPageState
    extends ConsumerState<PropertyAndAutoVerbalReportPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthWrapperWidget(
      child: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: [
            _PropertyReportTab(),
            _AutoVerbalReportTab(),
          ],
        ),
      ),
    );
  }
}

class _PropertyReportTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(currentUserProvider);
    final firstPageCountAsync = ref.watch(
      propertyListProvider(
        page: 0,
        filter: PropertyListFilter(
          userId: userAsync.value?.id,
        ),
      ).select((v) => v.whenData((v) => v.length)),
    );

    return firstPageCountAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
      data: (count) {
        if (count == 0) {
          return const Center(
            child: Text(
              'No properties available',
              style: TextStyle(fontSize: 18),
            ),
          );
        }
        return _PropertyGridView();
      },
    );
  }
}

class _PropertyGridView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(currentUserProvider);
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final paginated = ref.watch(
          propertyAtIndexProvider(
            index: index,
            filter: PropertyListFilter(
              userId: userAsync.value?.id,
            ),
          ),
        );
        return paginated?.whenOrNull(
          loading: (isFirstItem) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          data: (item) {
            return _buildCard(context, item, isProperty: true);
          },
        );
      },
    );
  }
}

class _AutoVerbalReportTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstPageCountAsync = ref.watch(
      autoVerbalListProvider(
        page: 0,
        filter: AutoVerbalListFilter(
          userId: ref.watch(authProvider),
        ),
      ).select((v) => v.whenData((v) => v.length)),
    );

    return firstPageCountAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
      data: (count) {
        if (count == 0) {
          return const Center(
            child: Text(
              'No auto verbals available',
              style: TextStyle(fontSize: 18),
            ),
          );
        }
        return _AutoVerbalGridView();
      },
    );
  }
}

class _AutoVerbalGridView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final paginated = ref.watch(
          autoVerbalAtIndexProvider(
            index: index,
            filter: AutoVerbalListFilter(
              userId: ref.watch(authProvider),
            ),
          ),
        );
        return paginated?.whenOrNull(
          loading: (isFirstItem) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          data: (item) {
            return _buildCard(context, item, isProperty: false);
          },
        );
      },
    );
  }
}

Widget _buildCard(BuildContext context, dynamic item,
    {required bool isProperty}) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: InkWell(
      onTap: () {
        if (isProperty) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PropertyDetailPage(data: item),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ClientDetailAutoVerbalPage(data: item),
            ),
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child: CachedNetworkImage(
                imageUrl: isProperty ? item.images.first : item.image,
                fit: BoxFit.cover,
                width: double.infinity,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isProperty ? item.title : 'ID: ${item.autoVerbalId}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  isProperty ? '${item.price} \$' : item.province.name,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    if (isProperty)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: item.listingType.name.toLowerCase() == 'rent'
                              ? Colors.blue
                              : Colors.green,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          item.listingType.name.capitalize(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                      ),
                    if (isProperty) const SizedBox(width: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: isProperty
                            ? _getStatusColor(item.status)
                            : item.status.statusColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        item.status.name.capitalize(),
                        style: TextStyle(
                          color: isProperty
                              ? Colors.white
                              : item.status.statusTextColor,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Color _getStatusColor(PropertyAndAutoVerbalStatus status) {
  switch (status) {
    case PropertyAndAutoVerbalStatus.pending:
      return Colors.orange;
    case PropertyAndAutoVerbalStatus.approved:
      return Colors.green;
    case PropertyAndAutoVerbalStatus.rejected:
      return Colors.red;
    case PropertyAndAutoVerbalStatus.resubmit:
      return Colors.yellow;
    default:
      return Colors.grey;
  }
}
