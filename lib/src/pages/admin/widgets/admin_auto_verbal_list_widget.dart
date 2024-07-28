import 'package:kfa_mobile_nu/src/helpers/build_context_helper.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_auto_verbal_detail_page.dart';

import '../../../../exports.dart';
import '../../../providers/auto_verbal_provider.dart';

class AdminAutoVerbalListWidget extends ConsumerWidget {
  const AdminAutoVerbalListWidget({super.key, required this.filter});

  final AutoVerbalListFilter filter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstPageCountAsync = ref.watch(
      autoVerbalListProvider(page: 0, filter: filter)
          .select((v) => v.whenData((v) => v.length)),
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
        return RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(autoVerbalListProvider(page: 0, filter: filter));
          },
          child: ListView.builder(
            itemCount: count,
            itemBuilder: (context, index) {
              final autoVerbalAsync = ref.watch(
                autoVerbalAtIndexProvider(index: index, filter: filter),
              );
              return autoVerbalAsync?.whenOrNull(
                    loading: (isFirstItem) =>
                        const Center(child: CircularProgressIndicator()),
                    data: (autoVerbal) => _buildListItem(context, autoVerbal),
                  ) ??
                  const SizedBox.shrink();
            },
          ),
        );
      },
    );
  }

  Widget _buildListItem(BuildContext context, AutoVerbalModel autoVerbal) {
    return InkWell(
      onTap: () {
        context.push((_) => AdminAutoVerbalDetailPage(autoVerbal: autoVerbal));
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
                imageUrl: autoVerbal.image.first,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    autoVerbal.province.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    autoVerbal.propertyType.name,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '\$${autoVerbal.minValue} - \$${autoVerbal.maxValue}',
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: _getStatusColor(autoVerbal.status),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    autoVerbal.status.name.toUpperCase(),
                    style: TextStyle(
                      color: _getStatusTextColor(autoVerbal.status),
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
