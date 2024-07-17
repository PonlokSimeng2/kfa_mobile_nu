import 'package:flutter/material.dart';
import 'package:kfa_mobile_nu/src/models/property_model.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Listings'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          _buildFilterButtons(),
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
                return _GridView(filter: _selectedFilter);
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
          _buildFilterButton('Rent', Icons.home),
          _buildFilterButton('Sale', Icons.sell),
          _buildFilterButton('All', Icons.list),
        ],
      ),
    );
  }

  Widget _buildFilterButton(String label, IconData icon) {
    final isSelected =
        _selectedFilter == label || (label == 'All' && _selectedFilter == null);
    return ElevatedButton.icon(
      onPressed: () =>
          setState(() => _selectedFilter = label == 'All' ? null : label),
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
}

class _GridView extends ConsumerWidget {
  final String? filter;
  const _GridView({this.filter});

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
        final paginated = ref.watch(propertyAtIndexProvider(index: index));
        return paginated?.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
              data: (item) {
                if (filter != null &&
                    item.listingType.name.toLowerCase() !=
                        filter!.toLowerCase()) {
                  return const SizedBox.shrink();
                }
                return _buildPropertyCard(context, item);
              },
            ) ??
            const SizedBox.shrink();
      },
    );
  }

  Widget _buildPropertyCard(BuildContext context, PropertyModel item) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
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
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: item.listingType.name.toLowerCase() == 'rent'
                          ? Colors.blue
                          : Colors.green,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      item.listingType.name.capitalize(),
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
