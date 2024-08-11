import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/pages/auto_verbal_list_page.dart';
import 'package:kfa_mobile_nu/src/pages/report_property_page.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/report_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:kfa_mobile_nu/src/providers/theme_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ReportMainPage extends HookConsumerWidget {
  const ReportMainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageCtr = usePageController();
    final isDarkMode = ref.watch(themeProvider) == ThemeMode.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.grey[900] : kwhite_new,
      body: AuthWrapperWidget(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            AppBar(
              backgroundColor: isDarkMode ? Colors.grey[800] : kwhite_new,
              elevation: 0,
              surfaceTintColor: Colors.transparent,
              title: Text(
                'Report',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.white,
                ),
              ),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: isDarkMode
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
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: isDarkMode ? Colors.white : Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Here you can view and manage all your reports.',
                            style: TextStyle(
                              fontSize: 14,
                              color:
                                  isDarkMode ? Colors.white70 : Colors.black54,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                child: Consumer(
                                  builder: (context, ref, child) {
                                    final count = ref.watch(
                                      countPropertyAndAutoVerbalProvider(
                                        userId: ref.watch(authProvider),
                                        statuses: PropertyAndAutoVerbalStatus
                                            .values.lock,
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
                                        isDarkMode: isDarkMode,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Consumer(
                                  builder: (context, ref, child) {
                                    final count = ref.watch(
                                      countPropertyAndAutoVerbalProvider(
                                        userId: ref.watch(authProvider),
                                        statuses: PropertyAndAutoVerbalStatus
                                            .values.lock,
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
                                        isDarkMode: isDarkMode,
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
                  SliverFillRemaining(
                    child: ColoredBox(
                      color: isDarkMode
                          ? Colors.grey[900]!
                          : Theme.of(context).scaffoldBackgroundColor,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
    required bool isDarkMode,
  }) {
    return Card(
      elevation: 2,
      color: isDarkMode ? Colors.grey[800] : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isDarkMode ? color.withOpacity(0.2) : color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
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
                fontSize: 14,
                color: isDarkMode ? Colors.white70 : color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
