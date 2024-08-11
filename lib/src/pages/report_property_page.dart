import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/models.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_property_detail_page.dart';
import 'package:kfa_mobile_nu/src/pages/property_detail_page.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:intl/intl.dart';

import '../providers/property_provider.dart';
import '../widgets/auth_wrapper_widget.dart';
import '../widgets/property_type_dropdown.dart';

class ReportPropertyPage extends ConsumerStatefulWidget {
  const ReportPropertyPage({super.key, this.openItemInAdminPage = false});

  final bool openItemInAdminPage;

  @override
  ConsumerState<ReportPropertyPage> createState() => _ReportPropertyPageState();
}

class _ReportPropInherited extends InheritedWidget {
  final bool openItemInAdminPage;

  const _ReportPropInherited({
    super.key,
    required this.openItemInAdminPage,
    required super.child,
  });

  static _ReportPropInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_ReportPropInherited>();
  }

  @override
  bool updateShouldNotify(_ReportPropInherited oldWidget) {
    return openItemInAdminPage != oldWidget.openItemInAdminPage;
  }
}

class _ReportPropertyPageState extends ConsumerState<ReportPropertyPage> {
  PropertyListingType? _type;
  PropertyTypeModel? _selectedPropertyType;

  @override
  Widget build(BuildContext context) {
    final userAsync = ref.watch(currentUserProvider);
    final firstPageCountAsync = ref.watch(
      propertyListProvider(
        page: 0,
        filter: PropertyListFilter(
          listingType: _type,
          propertyType: _selectedPropertyType,
          userId: userAsync.value?.id,
          showHiddenFromHomePageItem: true,
          statuses: PropertyAndAutoVerbalStatus.values.lock,
        ),
      ).select((v) => v.whenData((v) => v.length)),
    );

    return AuthWrapperWidget(
      child: _ReportPropInherited(
        openItemInAdminPage: widget.openItemInAdminPage,
        child: Scaffold(
          body: Column(
            children: [
              _buildFilterButtons(),
              _buildPropertyTypeDropdown(),
              Expanded(
                child: firstPageCountAsync.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
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
        ),
      ),
    );
  }

  Widget _buildFilterButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            _buildFilterButton('All', Icons.list, null),
            const SizedBox(width: 10),
            _buildFilterButton('Rent', Icons.home, PropertyListingType.rent),
            const SizedBox(width: 10),
            _buildFilterButton('Sale', Icons.sell, PropertyListingType.sale),
          ],
        ),
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
        _selectedPropertyType = null;
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
    final userAsync = ref.watch(currentUserProvider);
    final dataSource = _PropertyDataSource(
      context: context,
      ref: ref,
      filter: PropertyListFilter(
        listingType: type,
        propertyType: propertyType,
        userId: userAsync.value?.id,
        showHiddenFromHomePageItem: true,
        statuses: PropertyAndAutoVerbalStatus.values.lock,
      ),
      onTap: (item) {
        final reportPropInherited = _ReportPropInherited.of(context);
        if (reportPropInherited!.openItemInAdminPage) {
          context.push((_) => AdminPropertyDetailPage(property: item));
        } else {
          context.push((_) => PropertyDetailPage(data: item));
        }
      },
    );

    return PaginatedDataTable(
      columns: const [
        DataColumn(label: Text('No.')),
        DataColumn(label: Text('Actions')),
        DataColumn(label: Text('Image')),
        DataColumn(label: Text('Property Type')),
        DataColumn(label: Text('Address')),
        DataColumn(label: Text('Price')),
        DataColumn(label: Text('Status')),
        DataColumn(label: Text('Date')),
      ],
      source: dataSource,
      rowsPerPage: 5,
    );
  }
}

class _PropertyDataSource extends DataTableSource {
  final BuildContext context;
  final WidgetRef ref;
  final PropertyListFilter filter;
  final Function(PropertyModel) onTap;
  int _rowCount = 0;

  _PropertyDataSource({
    required this.context,
    required this.ref,
    required this.filter,
    required this.onTap,
  }) {
    _fetchRowCount();
  }

  void _fetchRowCount() {
    ref
        .read(propertyListProvider(page: 0, filter: filter).future)
        .then((value) {
      _rowCount = value.length;
      notifyListeners();
    });
  }

  @override
  DataRow? getRow(int index) {
    final propertyAsync =
        ref.watch(propertyListProvider(page: index ~/ 10, filter: filter));
    return propertyAsync.when(
      loading: () => DataRow(
          cells: List.generate(8, (_) => const DataCell(Text('Loading...')))),
      error: (error, stack) => DataRow(cells: [
        DataCell(Text(error.toString())),
        ...List.generate(7, (_) => const DataCell(Text(''))),
      ]),
      data: (properties) {
        if (index >= properties.length) return null;
        final property = properties[index % 10];
        return DataRow(
          cells: [
            DataCell(Text('${index + 1}')),
            DataCell(
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () => onTap(property),
              ),
            ),
            DataCell(
              property.images.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: property.images.first,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    )
                  : const Icon(Icons.image_not_supported),
            ),
            DataCell(Text(property.propertyType.name)),
            DataCell(Text(property.province.name)),
            DataCell(
                Text('\$${NumberFormat('#,##0.00').format(property.price)}')),
            DataCell(Text(property.status.name)),
            DataCell(Text(DateFormat('yyyy-MM-dd').format(property.createdAt))),
          ],
        );
      },
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _rowCount;

  @override
  int get selectedRowCount => 0;
}
