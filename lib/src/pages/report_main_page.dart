import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/pages/auto_verbal_list_page.dart';
import 'package:kfa_mobile_nu/src/pages/report_property_page.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/report_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';

class ReportMainPage extends HookConsumerWidget {
  const ReportMainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageCtr = usePageController();

    return Scaffold(
      backgroundColor: kwhite_new,
      body: AuthWrapperWidget(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              const SliverAppBar(
                floating: true,
                backgroundColor: kwhite_new,
                elevation: 0,
                surfaceTintColor: Colors.transparent,
                title: Text('Report'),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome to the Report Page',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Here you can view and manage all your reports.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
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
            color: Theme.of(context).scaffoldBackgroundColor,
            child: PageView(
              controller: pageCtr,
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
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
