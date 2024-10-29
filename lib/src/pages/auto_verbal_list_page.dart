import 'package:intl/intl.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/models.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_auto_verbal_detail_page.dart';
import 'package:kfa_mobile_nu/src/pages/client_auto_verbal_detail_page.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../providers/auth_provider.dart';
import '../providers/auto_verbal_provider.dart';
import '../widgets/auth_wrapper_widget.dart';

class AutoVerbalListPage extends ConsumerStatefulWidget {
  static final filter = StateProvider.autoDispose<AutoVerbalListFilter>((ref) {
    return AutoVerbalListFilter(
      userId: ref.read(authProvider),
      statuses: PropertyAndAutoVerbalStatus.values.lock,
    );
  });

  static void setDateRangeFilter(
      WidgetRef ref, DateTime? dateFrom, DateTime? dateTo,) {
    Future.microtask(() {
      ref.read(AutoVerbalListPage.filter.notifier).update((old) {
        return old.copyWith(dateFrom: dateFrom, dateTo: dateTo);
      });
    });
  }

  const AutoVerbalListPage({
    super.key,
    this.openItemInAdminPage = false,
    this.dateRange,
    this.userId,
  });

  final bool openItemInAdminPage;
  final DateTimeRange? dateRange;
  final String? userId;
  @override
  ConsumerState<AutoVerbalListPage> createState() => _AutoVerbalListPageState();
}

class _AutoVerbalInherited extends InheritedWidget {
  final bool openItemInAdminPage;

  const _AutoVerbalInherited({
    required this.openItemInAdminPage,
    required super.child,
  });

  static _AutoVerbalInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_AutoVerbalInherited>();
  }

  @override
  bool updateShouldNotify(_AutoVerbalInherited oldWidget) {
    return openItemInAdminPage != oldWidget.openItemInAdminPage;
  }
}

class _AutoVerbalListPageState extends ConsumerState<AutoVerbalListPage> {
  PropertyAndAutoVerbalStatus? _status;
  DateTimeRange? _dateRange;

  @override
  void initState() {
    super.initState();
    _dateRange = widget.dateRange;
    if (_dateRange != null) {
      AutoVerbalListPage.setDateRangeFilter(
        ref,
        _dateRange?.start,
        _dateRange?.end,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final firstPageCountAsync = ref.watch(
      autoVerbalListProvider(
        page: 0,
        filter: ref.watch(AutoVerbalListPage.filter),
      ).select((v) => v.whenData((v) => v.length)),
    );

    return AuthWrapperWidget(
      child: _AutoVerbalInherited(
        openItemInAdminPage: widget.openItemInAdminPage,
        child: Scaffold(
          appBar: widget.openItemInAdminPage
              ? AppBar(
                  title: const Text('Auto Verbal List'),
                )
              : null,
          body: Column(
            children: [
              _buildFilterButtons(),
              Expanded(
                child: firstPageCountAsync.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
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
                    return _GridView(
                      filter: ref.watch(AutoVerbalListPage.filter),
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

  Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      initialDateRange: _dateRange,
    );
    if (picked != null && picked != _dateRange) {
      setState(() {
        _dateRange = picked;
      });
      AutoVerbalListPage.setDateRangeFilter(
        ref,
        _dateRange?.start,
        _dateRange?.end,
      );
    }
  }

  Future<void> _generatePDF(BuildContext context) async {
    final filter = ref.read(AutoVerbalListPage.filter);
    final fromDate = filter.dateFrom;
    final toDate = filter.dateTo;

    final pdf = pw.Document();
    final autoVerbals = await ref.read(
      autoVerbalListProvider(
        page: 0,
        filter: ref.read(AutoVerbalListPage.filter),
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
                    pw.Text('Auto Verbal Report',
                        style: pw.TextStyle(
                            fontSize: 24, fontWeight: pw.FontWeight.bold,),),
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
                  style: const pw.TextStyle(fontSize: 14, color: PdfColors.grey700),
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Table.fromTextArray(
                context: context,
                border: null,
                headerStyle: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold, color: PdfColors.white,),
                headerDecoration:
                    const pw.BoxDecoration(color: PdfColors.blueGrey700),
                cellHeight: 30,
                cellAlignments: {
                  0: pw.Alignment.centerLeft,
                  1: pw.Alignment.centerLeft,
                  2: pw.Alignment.centerRight,
                  3: pw.Alignment.center,
                },
                headers: ['ID', 'Province', 'Status', 'Created At'],
                data: autoVerbals
                    .map((autoVerbal) => [
                          autoVerbal.autoVerbalId.toString(),
                          autoVerbal.province.name,
                          autoVerbal.status.name,
                          DateFormat('yyyy-MM-dd').format(autoVerbal.createdAt),
                        ],)
                    .toList(),
              ),
              pw.SizedBox(height: 20),
              pw.Container(
                padding: const pw.EdgeInsets.all(10),
                decoration: const pw.BoxDecoration(
                  color: PdfColors.grey200,
                  borderRadius:
                      pw.BorderRadius.all(pw.Radius.circular(10)),
                ),
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text(
                      'Total Auto Verbals: ${autoVerbals.length}',
                      style: pw.TextStyle(
                          fontSize: 16, fontWeight: pw.FontWeight.bold,),
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
                          const pw.TextStyle(fontSize: 12, color: PdfColors.grey700),
                    ),
                  ],
                ),
              ),
              pw.Expanded(child: pw.SizedBox()),
              pw.Footer(
                leading: pw.Text(
                    'Generated on: ${DateFormat('yyyy-MM-dd HH:mm').format(DateTime.now())}',),
                trailing: pw.Text(
                    'Page ${context.pageNumber} of ${context.pagesCount}',),
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
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Row(
            children: [
              _buildFilterButton(null),
              const SizedBox(width: 10),
              _buildFilterButton(PropertyAndAutoVerbalStatus.pending),
              const SizedBox(width: 10),
              _buildFilterButton(PropertyAndAutoVerbalStatus.approved),
              const SizedBox(width: 10),
              _buildFilterButton(PropertyAndAutoVerbalStatus.rejected),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterButton(PropertyAndAutoVerbalStatus? status) {
    final statuses = ref.watch(AutoVerbalListPage.filter).statuses;
    final isSelected = statuses.contains(status) && statuses.length <= 2;
    final isAllSelected = status == null &&
        statuses.length == PropertyAndAutoVerbalStatus.values.length;

    return ElevatedButton(
      onPressed: () {
        if (isSelected) return;
        ref.read(AutoVerbalListPage.filter.notifier).update((old) {
          if (status == null) {
            return old.copyWith(
              statuses: PropertyAndAutoVerbalStatus.values.toIList(),
            );
          } else {
            return old.copyWith(statuses: [status].lock);
          }
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isSelected || isAllSelected ? kPrimaryColor : Colors.white,
      ),
      child: Text(
        status?.name.capitalize() ?? 'All',
        style: TextStyle(
          color: isSelected || isAllSelected ? Colors.white : Colors.grey[600],
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _GridView extends ConsumerWidget {
  final AutoVerbalListFilter filter;
  const _GridView({required this.filter});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataSource = _AutoVerbalDataSource(
      context: context,
      ref: ref,
      filter: filter,
      onTap: (item) {
        final autoVerbalInherited = _AutoVerbalInherited.of(context);
        if (autoVerbalInherited!.openItemInAdminPage) {
          context.push((_) => AdminAutoVerbalDetailPage(autoVerbal: item));
        } else {
          context.push((_) => ClientDetailAutoVerbalPage(data: item));
        }
      },
    );

    return SingleChildScrollView(
      child: PaginatedDataTable(
        columns: const [
          DataColumn(label: Text('No.')),
          DataColumn(label: Text('Actions')),
          DataColumn(label: Text('Image')),
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('Province')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Date')),
        ],
        source: dataSource,
        rowsPerPage: 5,
      ),
    );
  }
}

class _AutoVerbalDataSource extends DataTableSource {
  final BuildContext context;
  final WidgetRef ref;
  final AutoVerbalListFilter filter;
  final Function(AutoVerbalModel) onTap;
  int _rowCount = 0;

  _AutoVerbalDataSource({
    required this.context,
    required this.ref,
    required this.filter,
    required this.onTap,
  }) {
    _fetchRowCount();
  }

  void _fetchRowCount() {
    ref
        .read(autoVerbalListProvider(page: 0, filter: filter).future)
        .then((value) {
      _rowCount = value.length;
      notifyListeners();
    });
  }

  @override
  DataRow? getRow(int index) {
    final autoVerbalAsync =
        ref.watch(autoVerbalListProvider(page: index ~/ 10, filter: filter));
    return autoVerbalAsync.when(
      loading: () => DataRow(
        cells: List.generate(7, (_) => const DataCell(Text('Loading...'))),
      ),
      error: (error, stack) => DataRow(
        cells: [
          DataCell(Text(error.toString())),
          ...List.generate(6, (_) => const DataCell(Text(''))),
        ],
      ),
      data: (autoVerbals) {
        if (index >= autoVerbals.length) return null;
        final autoVerbal = autoVerbals[index % 10];
        return DataRow(
          cells: [
            DataCell(Text('${index + 1}')),
            DataCell(
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () => onTap(autoVerbal),
              ),
            ),
            DataCell(
              autoVerbal.image.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: autoVerbal.image.first,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    )
                  : const Icon(Icons.image_not_supported),
            ),
            DataCell(Text(autoVerbal.autoVerbalId.toString())),
            DataCell(Text(autoVerbal.province.name)),
            DataCell(Text(autoVerbal.status.name)),
            DataCell(
                Text(DateFormat('yyyy-MM-dd').format(autoVerbal.createdAt)),),
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
