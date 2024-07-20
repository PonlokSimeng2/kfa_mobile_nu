import 'package:kfa_mobile_nu/src/helpers/build_context_helper.dart';
import 'package:kfa_mobile_nu/src/models/property_model.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_property_detail_page.dart';

import '../../../../exports.dart';
import '../../../providers/property_provider.dart';

class AdminPropertyListWidget extends ConsumerWidget {
  const AdminPropertyListWidget({super.key, required this.filter});

  final PropertyListFilter filter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstPageCountAsync = ref.watch(
      propertyListProvider(page: 0, filter: filter).select((v) => v.whenData((v) => v.length)),
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
          child: ListView.builder(
            itemCount: count,
            itemBuilder: (context, index) {
              final propertyAsync =
                  ref.watch(propertyAtIndexProvider(index: index, filter: filter));
              return propertyAsync?.whenOrNull(
                    loading: (isFirstItem) => const Center(child: CircularProgressIndicator()),
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
    return InkWell(
      onTap: () {
        context.push((_) => AdminPropertyDetailPage(property: property));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey[200]!),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: property.images.first,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    property.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    property.propertyType.name,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '\$${property.price}',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: _getStatusColor(property.status),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    property.status.name.toUpperCase(),
                    style: TextStyle(
                      color: _getStatusTextColor(property.status),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                const Icon(Icons.chevron_right, color: Colors.grey),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(PropertyStatus status) {
    switch (status) {
      case PropertyStatus.pending:
        return Colors.yellow[100]!;
      case PropertyStatus.approved:
        return Colors.green[100]!;
      case PropertyStatus.rejected:
        return Colors.red[100]!;
      case PropertyStatus.resubmit:
        return Colors.blue[100]!;
    }
  }

  Color _getStatusTextColor(PropertyStatus status) {
    switch (status) {
      case PropertyStatus.pending:
        return Colors.yellow[800]!;
      case PropertyStatus.approved:
        return Colors.green[800]!;
      case PropertyStatus.rejected:
        return Colors.red[800]!;
      case PropertyStatus.resubmit:
        return Colors.blue[800]!;
    }
  }
}
