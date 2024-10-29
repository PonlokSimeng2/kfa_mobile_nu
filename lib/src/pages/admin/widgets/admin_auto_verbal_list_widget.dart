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
              final autoVerbalAsync = ref.watch(
                  autoVerbalAtIndexProvider(index: index, filter: filter),);
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
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          InkWell(
            onTap: () => context
                .push((_) => AdminAutoVerbalDetailPage(autoVerbal: autoVerbal)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 160,
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(10)),
                    child: CachedNetworkImage(
                      imageUrl: autoVerbal.image.first,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      autoVerbal.province.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${autoVerbal.minValue} - ${autoVerbal.maxValue} \$',
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
                        color: _getStatusColor(autoVerbal.status),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        autoVerbal.status.name.capitalize(),
                        style: TextStyle(
                          color: _getStatusTextColor(autoVerbal.status),
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
