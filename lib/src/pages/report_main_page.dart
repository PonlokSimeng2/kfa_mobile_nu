import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/pages/auto_verbal_list_page.dart';
import 'package:kfa_mobile_nu/src/pages/report_property_page.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';
import 'package:kfa_mobile_nu/src/providers/report_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class ReportMainPage extends HookConsumerWidget {
  const ReportMainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPropertyPage = useState(true);
    final pageCtr = usePageController();
    final dateRange = useState<DateTimeRange?>(null);

    Future<void> selectDateRange() async {
      final picked = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime.now(),
        initialDateRange: dateRange.value,
      );
      if (picked != null) {
        dateRange.value = picked;
        ReportPropertyPage.setDateRangeFilter(ref, picked.start, picked.end);
      }
    }

    Future<void> generateAndPrintPDF() async {
      if (dateRange.value == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a date range first')),
        );
        return;
      }

      final properties = await ref.read(
        propertyListProvider(
          page: 0,
          filter: PropertyListFilter(
            statuses: PropertyAndAutoVerbalStatus.values.lock,
          ),
        ).future,
      );

      final filteredProperties = properties.where((property) {
        return property.createdAt.isAfter(dateRange.value!.start) &&
            property.createdAt.isBefore(dateRange.value!.end);
      }).toList();

      final pdf = pw.Document();

      pdf.addPage(
        pw.Page(
          build: (pw.Context context) {
            return pw.Column(
              children: [
                pw.Header(
                  level: 0,
                  child: pw.Text('Property Report'),
                ),
                pw.Table.fromTextArray(
                  context: context,
                  data: <List<String>>[
                    <String>['ID', 'Title', 'Price', 'Created At'],
                    ...filteredProperties.map(
                      (property) => [
                        property.id.toString(),
                        property.title,
                        property.price.toString(),
                        property.createdAt.toString(),
                      ],
                    ),
                  ],
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

    return Scaffold(
      backgroundColor: context.isDarkMode ? Colors.grey[900] : kPrimaryColor,
      body: AuthWrapperWidget(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                floating: true,
                backgroundColor: context.isDarkMode ? Colors.grey[800] : kPrimaryColor,
                elevation: 0,
                surfaceTintColor: Colors.transparent,
                title: Text(
                  'Report',
                  style: TextStyle(
                    color: context.isDarkMode ? Colors.white : Colors.white,
                  ),
                ),
                actions: isPropertyPage.value
                    ? [
                        IconButton(
                          icon: const Icon(Icons.date_range),
                          onPressed: selectDateRange,
                        ),
                        IconButton(
                          icon: const Icon(Icons.print),
                          onPressed: generateAndPrintPDF,
                        ),
                      ]
                    : [],
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: context.isDarkMode
                        ? Colors.grey[800]
                        : Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to the Report Page',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: context.isDarkMode ? Colors.white : Colors.black87,
                        ),
                      ),
                      if (dateRange.value != null) ...[
                        const SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                              color: context.isDarkMode ? Colors.white70 : Colors.black54,
                            ),
                            children: [
                              const TextSpan(
                                text: 'Date Range: ',
                              ),
                              TextSpan(
                                text:
                                    '${dateRange.value!.start.toString().split(' ')[0]} - ${dateRange.value!.end.toString().split(' ')[0]}',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const TextSpan(text: '  '),
                              WidgetSpan(
                                child: InkWell(
                                  child: const Text(
                                    'Clear',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onTap: () {
                                    dateRange.value = null;
                                    ReportPropertyPage.setDateRangeFilter(ref, null, null);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Consumer(
                              builder: (context, ref, child) {
                                final count = ref.watch(
                                  countPropertyAndAutoVerbalProvider(
                                    userId: ref.watch(authProvider),
                                    statuses: PropertyAndAutoVerbalStatus.values.lock,
                                  ).select(
                                    (v) => v.whenOrNull(
                                      data: (data) => data.propertyCount,
                                    ),
                                  ),
                                );
                                return GestureDetector(
                                  onTap: () {
                                    pageCtr.jumpToPage(0);
                                  },
                                  child: _buildInfoCard(
                                    context: context,
                                    title: 'Total Property',
                                    value: count?.toString() ?? "...",
                                    icon: Icons.pending,
                                    color: Colors.orange,
                                  ),
                                );
                              },
                            ),
                          ),
                          Expanded(
                            child: Consumer(
                              builder: (context, ref, child) {
                                final count = ref.watch(
                                  countPropertyAndAutoVerbalProvider(
                                    userId: ref.watch(authProvider),
                                    statuses: PropertyAndAutoVerbalStatus.values.lock,
                                  ).select(
                                    (v) => v.whenOrNull(
                                      data: (data) => data.autoVerbalCount,
                                    ),
                                  ),
                                );
                                return GestureDetector(
                                  onTap: () {
                                    pageCtr.jumpToPage(1);
                                  },
                                  child: _buildInfoCard(
                                    context: context,
                                    title: 'Total Autoverbal',
                                    value: count?.toString() ?? "...",
                                    icon: Icons.insert_chart,
                                    color: Colors.blue,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: ColoredBox(
            color:
                context.isDarkMode ? Colors.grey[900]! : Theme.of(context).scaffoldBackgroundColor,
            child: PageView(
              controller: pageCtr,
              onPageChanged: (index) {
                isPropertyPage.value = index == 0;
              },
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ReportPropertyPage(openItemInAdminPage: true),
                AutoVerbalListPage(openItemInAdminPage: true),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required BuildContext context,
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      color: context.isDarkMode ? Colors.grey[800] : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: context.isDarkMode ? color.withOpacity(0.2) : color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 32,
              color: color,
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: context.isDarkMode ? Colors.white70 : color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
