import 'package:kfa_mobile_nu/src/models/property_model.dart';
import 'package:kfa_mobile_nu/src/widgets/property_type_dropdown.dart';

import '../../exports.dart';
import '../helpers/build_context_helper.dart';
import '../models/property_type_model.schema.dart';
import '../providers/property_provider.dart';
import 'property_detail_page.dart';

class PropertyListPage extends ConsumerStatefulWidget {
  const PropertyListPage({super.key});

  @override
  ConsumerState<PropertyListPage> createState() => _PropertyListPageState();
}

class _PropertyListPageState extends ConsumerState<PropertyListPage> {
  PropertyListingType? _type;
  PropertyTypeModel? _selectedPropertyType;

  @override
  Widget build(BuildContext context) {
    final firstPageCountAsync = ref.watch(
      propertyListProvider(
        page: 0,
        filter: PropertyListFilter(
          listingType: _type,
          propertyType: _selectedPropertyType,
        ),
      ).select((v) => v.whenData((v) => v.length)),
    );

    return Scaffold(
      body: Column(
        children: [
          _buildFilterButtons(),
          _buildPropertyTypeDropdown(),
          Expanded(
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
                return _GridView(
                  type: _type,
                  propertyType: _selectedPropertyType,
                );
              },
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
    final isSelected =
        (_type == null && valueType == null) || _type == valueType;
    return ElevatedButton.icon(
      onPressed: () => setState(() {
        _type = valueType;
        // Do not reset _selectedPropertyType when filter changes
      }),
      icon: Icon(icon, color: isSelected ? Colors.white : Colors.grey),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        foregroundColor: isSelected ? Colors.white : Colors.black,
        backgroundColor:
            isSelected ? Theme.of(context).primaryColor : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Widget _buildPropertyTypeDropdownButton() {
    final isSelected = _selectedPropertyType == null && _type == null;
    return ElevatedButton.icon(
      onPressed: () => setState(() {
        _selectedPropertyType = null;
        _type = null; // Reset listing type when filter changes
      }),
      icon: Icon(Icons.list, color: isSelected ? Colors.white : Colors.grey),
      label: const Text('All'),
      style: ElevatedButton.styleFrom(
        foregroundColor: isSelected ? Colors.white : Colors.black,
        backgroundColor:
            isSelected ? Theme.of(context).primaryColor : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Widget _buildPropertyTypeDropdown() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2),
      child: PropertyTypeDropDown(
        value: _selectedPropertyType,
        onChanged: (newValue) {
          setState(() {
            _selectedPropertyType = newValue;
          });
        },
      ),
    );
  }
}

class _GridView extends ConsumerWidget {
  final PropertyListingType? type;
  final PropertyTypeModel? propertyType;
  const _GridView({this.type, this.propertyType});

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
            filter: PropertyListFilter(
              listingType: type,
              propertyType: propertyType,
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
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(10)),
                    child: CachedNetworkImage(
                      imageUrl: item.images.first,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
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
                final isFavorite = ref.watch(favoriteProvider(item.id));
                return IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.white,
                  ),
                  onPressed: () {
                    ref.read(favoriteProvider(item.id).notifier).toggle();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(isFavorite
                            ? 'Removed from favorites'
                            : 'Added to favorites'),
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
