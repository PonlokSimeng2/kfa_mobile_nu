import '../helpers/build_context_helper.dart';
import 'property_detail_page.dart';
import '../providers/property_provider.dart';

import '../../exports.dart';

class PropertyListPage extends ConsumerStatefulWidget {
  const PropertyListPage({super.key});

  @override
  ConsumerState<PropertyListPage> createState() => _PropertyListPageState();
}

class _PropertyListPageState extends ConsumerState<PropertyListPage> {
  String? _selectedFilter;

  @override
  Widget build(BuildContext context) {
    final firstPageCountAsync = ref.watch(
      propertyListProvider(page: 0).select((v) => v.whenData((v) => v.length)),
    );

    return Column(
      children: [
        _buildFilterButtons(),
        Expanded(
          child: firstPageCountAsync.onData((count) {
            if (count == 0) {
              return const Center(
                child: Text(
                  'No Data',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }

            return _GridView(filter: _selectedFilter);
          }),
        ),
      ],
    );
  }

  Widget _buildFilterButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () => setState(() => _selectedFilter = 'Rent'),
          child: const Text('Rent'),
        ),
        ElevatedButton(
          onPressed: () => setState(() => _selectedFilter = 'Sale'),
          child: const Text('Sale'),
        ),
        ElevatedButton(
          onPressed: () => setState(() => _selectedFilter = null),
          child: const Text('All'),
        ),
      ],
    );
  }
}

class _GridView extends ConsumerWidget {
  final String? filter;
  const _GridView({this.filter});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        final paginated = ref.watch(propertyAtIndexProvider(index: index));
        return paginated?.whenOrNull(
          loading: (isFirstItem) {
            return const Center(child: CircularProgressIndicator());
          },
          data: (item) {
            if (filter != null && item.listingType.name.toLowerCase() != filter!.toLowerCase()) {
              return const SizedBox.shrink();
            }
            return Stack(
              children: [
                InkWell(
                  onTap: () {
                    context.push((_) => PropertyDetailPage(data: item));
                  },
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: item.images.first,
                        fit: BoxFit.cover,
                        progressIndicatorBuilder: (
                          context,
                          url,
                          downloadProgress,
                        ) {
                          return Center(
                            child: CircularProgressIndicator(
                              value: downloadProgress.progress,
                            ),
                          );
                        },
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                ),
                // Positioned(
                //   left: 2,
                //   bottom: 20,
                //   child: Text(
                //     'Address: ${list_value_all_2SR[index]['address'] ?? "N/A".toString()}',
                //     style: const TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 12,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                Positioned(
                  left: 2,
                  bottom: 5,
                  child: Text(
                    'Price: ${item.price} \$',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  right: 2,
                  bottom: 5,
                  child: Text(
                    item.listingType.name.capitalize(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
