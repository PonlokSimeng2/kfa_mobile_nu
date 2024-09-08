import 'package:kfa_mobile_nu/src/helpers/build_context_helper.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/models/property_model.dart';
import 'package:kfa_mobile_nu/src/models/property_model.schema.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_property_detail_page.dart';

import '../../../../exports.dart';
import '../../../providers/property_provider.dart';

class AdminPropertyListWidget extends ConsumerWidget {
  const AdminPropertyListWidget({super.key, required this.filter});

  final PropertyListFilter filter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstPageCountAsync = ref.watch(
      propertyListProvider(page: 0, filter: filter)
          .select((v) => v.whenData((v) => v.length)),
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
        return RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(propertyListProvider(page: 0, filter: filter));
          },
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 250,
              maxCrossAxisExtent: 250,
              childAspectRatio: 1 / 1.8,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemCount: count,
            itemBuilder: (context, index) {
              final propertyAsync = ref
                  .watch(propertyAtIndexProvider(index: index, filter: filter));
              return propertyAsync?.whenOrNull(
                    loading: (isFirstItem) =>
                        const Center(child: CircularProgressIndicator()),
                    data: (property) => _buildListItem(context, property),
                  ) ??
                  const SizedBox.shrink();
            },
          ),
        );
      },
    );
  }

  Widget _buildListItem(BuildContext context, PropertyModel property) {
    return Card(
      //  elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          InkWell(
            onTap: () => context
                .push((_) => AdminPropertyDetailPage(property: property)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 160,
                  child: Expanded(
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(10)),
                      child: CachedNetworkImage(
                        imageUrl: property.images.first,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      property.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${property.price} \$',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: _getStatusColor(property.status),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        property.status.name.capitalize(),
                        style: TextStyle(
                          color: _getStatusTextColor(property.status),
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
    );
  }

  Color _getStatusColor(PropertyAndAutoVerbalStatus status) {
    switch (status) {
      case PropertyAndAutoVerbalStatus.pending:
        return Colors.yellow[100]!;
      case PropertyAndAutoVerbalStatus.approved:
        return Colors.green[100]!;
      case PropertyAndAutoVerbalStatus.rejected:
        return Colors.red[100]!;
      case PropertyAndAutoVerbalStatus.resubmit:
        return Colors.blue[100]!;
    }
  }

  Color _getStatusTextColor(PropertyAndAutoVerbalStatus status) {
    switch (status) {
      case PropertyAndAutoVerbalStatus.pending:
        return Colors.yellow[800]!;
      case PropertyAndAutoVerbalStatus.approved:
        return Colors.green[800]!;
      case PropertyAndAutoVerbalStatus.rejected:
        return Colors.red[800]!;
      case PropertyAndAutoVerbalStatus.resubmit:
        return Colors.blue[800]!;
    }
  }
}
