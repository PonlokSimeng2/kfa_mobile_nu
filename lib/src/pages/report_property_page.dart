import 'package:intl/intl.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/models.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_property_detail_page.dart';
import 'package:kfa_mobile_nu/src/pages/property_detail_page.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import '../providers/auth_provider.dart';
import '../providers/property_provider.dart';
import '../widgets/auth_wrapper_widget.dart';
import '../widgets/property_type_dropdown.dart';

class ReportPropertyPage extends ConsumerStatefulWidget {
  static final filter = StateProvider.autoDispose<PropertyListFilter>((ref) {
    return PropertyListFilter(
      listingType: null,
      propertyType: null,
      userId: ref.read(authProvider),
      showHiddenFromHomePageItem: true,
      statuses: PropertyAndAutoVerbalStatus.values.lock,
    );
  });

  static void setDateRangeFilter(
      WidgetRef ref, DateTime? dateFrom, DateTime? dateTo) {
    ref.read(ReportPropertyPage.filter.notifier).update((old) {
      return old.copyWith(dateFrom: dateFrom, dateTo: dateTo);
    });
  }

  const ReportPropertyPage({
    super.key,
    this.openItemInAdminPage = false,
    this.dateRange,
  });

  final bool openItemInAdminPage;
  final DateTimeRange? dateRange;

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
  DateTimeRange? _dateRange;

  @override
  void initState() {
    super.initState();
    _dateRange = widget.dateRange;
    if (_dateRange != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(ReportPropertyPage.filter.notifier).update((old) {
          return old.copyWith(
              dateFrom: _dateRange?.start, dateTo: _dateRange?.end);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final firstPageCountAsync = ref.watch(
      propertyListProvider(
        page: 0,
        filter: ref.watch(ReportPropertyPage.filter),
      ).select((v) => v.whenData((v) => v.length)),
    );

    return AuthWrapperWidget(
      child: _ReportPropInherited(
        openItemInAdminPage: widget.openItemInAdminPage,
        child: Scaffold(
          body: ListView(
            // shrinkWrap: true,
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
                      filter: ref.watch(ReportPropertyPage.filter),
                    );
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _generatePDF(context),
            child: const Icon(Icons.print),
          ),
        ),
      ),
    );
  }

  Future<void> _generatePDF(BuildContext context) async {
    final filter = ref.read(ReportPropertyPage.filter);
    final fromDate = filter.dateFrom;
    final toDate = filter.dateTo;

    final pdf = pw.Document();
    final properties = await ref.read(
      propertyListProvider(
        page: 0,
        filter: ref.read(ReportPropertyPage.filter),
      ).future,
    );

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Header(
                level: 0,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text('Property Report',
                        style: pw.TextStyle(
                            fontSize: 24, fontWeight: pw.FontWeight.bold)),
                  ],
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Container(
                padding: const pw.EdgeInsets.all(10),
                decoration: pw.BoxDecoration(
                  border: pw.Border.all(color: PdfColors.grey300),
                  borderRadius:
                      const pw.BorderRadius.all(pw.Radius.circular(10)),
                ),
                child: pw.Text(
                  'Date Range: ${DateFormat('yyyy-MM-dd').format(fromDate ?? DateTime.now())} - ${DateFormat('yyyy-MM-dd').format(toDate ?? DateTime.now())}',
                  style: pw.TextStyle(fontSize: 14, color: PdfColors.grey700),
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Table.fromTextArray(
                context: context,
                border: null,
                headerStyle: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold, color: PdfColors.white),
                headerDecoration:
                    const pw.BoxDecoration(color: PdfColors.blueGrey700),
                cellHeight: 30,
                cellAlignments: {
                  0: pw.Alignment.centerLeft,
                  1: pw.Alignment.centerLeft,
                  2: pw.Alignment.centerRight,
                  3: pw.Alignment.center,
                  4: pw.Alignment.center,
                },
                headers: [
                  'ID',
                  'Property Type',
                  'Price',
                  'Sale/Rent',
                  'Created At'
                ],
                data: properties
                    .map((property) => [
                          property.propertyId.toString(),
                          property.propertyType.name,
                          '\$${NumberFormat('#,##0.00').format(property.price)}',
                          property.listingType.name,
                          DateFormat('yyyy-MM-dd').format(property.createdAt),
                        ])
                    .toList(),
              ),
              pw.SizedBox(height: 20),
              pw.Container(
                padding: const pw.EdgeInsets.all(10),
                decoration: pw.BoxDecoration(
                  color: PdfColors.grey200,
                  borderRadius:
                      const pw.BorderRadius.all(pw.Radius.circular(10)),
                ),
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text(
                      'Total Properties: ${properties.length}',
                      style: pw.TextStyle(
                          fontSize: 16, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.Text(
                      'Report Generated By: ${ref.read(currentUserProvider).when(
                            data: (user) =>
                                '${user?.firstName} ${user?.lastName}' ??
                                'Unknown',
                            loading: () => 'Loading...',
                            error: (_, __) => 'Unknown',
                          )}',
                      style:
                          pw.TextStyle(fontSize: 12, color: PdfColors.grey700),
                    ),
                  ],
                ),
              ),
              pw.Expanded(child: pw.SizedBox()),
              pw.Footer(
                leading: pw.Text(
                    'Generated on: ${DateFormat('yyyy-MM-dd HH:mm').format(DateTime.now())}'),
                trailing: pw.Text(
                    'Page ${context.pageNumber} of ${context.pagesCount}'),
              ),
            ],
          );
        },
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }

  Widget _buildFilterButtons() {
    return Center(
      child: SingleChildScrollView(
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
      onPressed: () {
        setState(() {
          _type = valueType;
          _selectedPropertyType = null;
        });
        ref.read(ReportPropertyPage.filter.notifier).update((old) {
          return old.copyWith(listingType: valueType);
        });
      },
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
        showValidation: false,
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
  final PropertyListFilter filter;
  const _GridView({required this.filter});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataSource = _PropertyDataSource(
      context: context,
      ref: ref,
      filter: filter,
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
    final propertyAsync = ref.read(
        propertyListProvider(page: index ~/ propertyListLimit, filter: filter));
    return propertyAsync.when(
      loading: () => DataRow(
        cells: List.generate(8, (_) => const DataCell(Text('Loading...'))),
      ),
      error: (error, stack) => DataRow(
        cells: [
          DataCell(Text(error.toString())),
          ...List.generate(7, (_) => const DataCell(Text(''))),
        ],
      ),
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
              Text('\$${NumberFormat('#,##0.00').format(property.price)}'),
            ),
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
