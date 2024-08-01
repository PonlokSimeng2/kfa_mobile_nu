import 'package:kfa_mobile_nu/src/models/property_model.dart';
import 'package:kfa_mobile_nu/src/providers/favortie_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/property_type_dropdown.dart';

import '../../exports.dart';
import '../helpers/build_context_helper.dart';
import '../providers/property_provider.dart';
import 'property_detail_page.dart';

final _initialFilterProvider = Provider.autoDispose<PropertyListFilter>((ref) {
  throw UnimplementedError();
});

final _filterProvider = StateProvider<PropertyListFilter>(
  (ref) {
    return ref.read(_initialFilterProvider);
  },
  dependencies: [_initialFilterProvider],
);

class PropertyListPage extends ConsumerWidget {
  const PropertyListPage({super.key, this.initialFilter = const PropertyListFilter()});

  final PropertyListFilter initialFilter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [
        _initialFilterProvider.overrideWithValue(initialFilter),
      ],
      child: const _PropertyListPage(),
    );
  }
}

class _PropertyListPage extends ConsumerStatefulWidget {
  const _PropertyListPage({super.key});

  @override
  ConsumerState<_PropertyListPage> createState() => __PropertyListPageState();
}

class __PropertyListPageState extends ConsumerState<_PropertyListPage> {
  @override
  Widget build(BuildContext context) {
    final filter = ref.watch(_filterProvider);

    final firstPageCountAsync = ref.watch(
      propertyListProvider(page: 0, filter: filter).select((v) => v.whenData((v) => v.length)),
    );
    return Scaffold(
      body: Column(
        children: [
          _buildFilterButtons(),
          _buildPropertyTypeDropdown(),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(propertyListProvider);
              },
              child: firstPageCountAsync.when(
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
                  return const _GridView();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterButtons() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildFilterButton('Rent', Icons.home, PropertyListingType.rent),
          _buildFilterButton('Sale', Icons.sell, PropertyListingType.sale),
          _buildPropertyTypeDropdownButton(),
        ],
      ),
    );
  }

  Widget _buildFilterButton(
    String label,
    IconData icon,
    PropertyListingType? valueType,
  ) {
    final filter = ref.watch(_filterProvider);
    final isSelected =
        (filter.listingType == null && valueType == null) || filter.listingType == valueType;
    return ElevatedButton.icon(
      onPressed: () {
        ref.read(_filterProvider.notifier).update((old) {
          return old.copyWith(listingType: valueType);
        });
      },
      icon: Icon(icon, color: isSelected ? Colors.white : Colors.grey),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        foregroundColor: isSelected ? Colors.white : Colors.black,
        backgroundColor: isSelected ? Theme.of(context).primaryColor : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Widget _buildPropertyTypeDropdownButton() {
    final filter = ref.watch(_filterProvider);
    final isSelected = filter.listingType == null;
    return ElevatedButton.icon(
      onPressed: () {
        ref.read(_filterProvider.notifier).update((old) {
          return old.copyWith(listingType: null);
        });
      },
      icon: Icon(Icons.list, color: isSelected ? Colors.white : Colors.grey),
      label: const Text('All'),
      style: ElevatedButton.styleFrom(
        foregroundColor: isSelected ? Colors.white : Colors.black,
        backgroundColor: isSelected ? Theme.of(context).primaryColor : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Widget _buildPropertyTypeDropdown() {
    final filter = ref.watch(_filterProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2),
      child: PropertyTypeDropDown(
        value: filter.propertyType,
        onChanged: (newValue) {
          setState(() {
            ref.read(_filterProvider.notifier).update((old) {
              return old.copyWith(propertyType: newValue);
            });
          });
        },
      ),
    );
  }
}

class _GridView extends ConsumerWidget {
  const _GridView();

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
          propertyAtIndexProvider(
            index: index,
            filter: ref.watch(_filterProvider),
          ),
        );
        return paginated?.whenOrNull(
          loading: (isFirstItem) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          data: (item) {
            return _buildPropertyCard(context, item);
          },
        );
      },
    );
  }

  Widget _buildPropertyCard(BuildContext context, PropertyModel item) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          InkWell(
            onTap: () => context.push((_) => PropertyDetailPage(data: item)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                    child: CachedNetworkImage(
                      imageUrl: item.images.first,
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
                        item.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${item.price} \$',
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
                          color: item.listingType.name.toLowerCase() == 'rent'
                              ? Colors.blue
                              : Colors.green,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          item.listingType.name.capitalize(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Consumer(
              builder: (context, ref, child) {
                final isFavorite = ref.watch(isFavoriteProvider(item.id));
                return IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.white,
                  ),
                  onPressed: () {
                    final notifier = ref.read(favoritePropertyProvider.notifier);
                    if (isFavorite) {
                      notifier.removeFromFavorite(item.id);
                    } else {
                      notifier.markAsFavorite(item.id);
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          isFavorite ? 'Removed from favorites' : 'Added to favorites',
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
