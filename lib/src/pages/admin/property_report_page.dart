import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/gen/assets.gen.dart';
import 'package:kfa_mobile_nu/src/models/property_model.dart';
import 'package:kfa_mobile_nu/src/providers/admin_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';

import 'widgets/admin_property_list_widget.dart';

final _filterProvider = StateProvider.autoDispose<PropertyListFilter>((ref) {
  return PropertyListFilter(
    statuses: [PropertyStatus.pending, PropertyStatus.resubmit].lock,
  );
});

class PropertyReportPage extends ConsumerStatefulWidget {
  const PropertyReportPage({super.key});

  @override
  _PropertyReportPageState createState() => _PropertyReportPageState();
}

class _PropertyReportPageState extends ConsumerState<PropertyReportPage> {
  AppBar _buildAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Assets.images.kFALogo.image(
            width: 55,
            height: 55,
          ),
          DefaultTextStyle(
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'MOBILE  ',
                  textAlign: TextAlign.center,
                  textStyle: const TextStyle(color: Colors.white),
                ),
              ],
              pause: const Duration(milliseconds: 300),
              isRepeatingAnimation: true,
              repeatForever: true,
              onTap: () {},
            ),
          ),
          DefaultTextStyle(
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  '',
                  textAlign: TextAlign.center,
                  textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.yellow,
                        offset: Offset(1.5, 1.5),
                      ),
                    ],
                  ),
                ),
              ],
              pause: const Duration(milliseconds: 300),
              isRepeatingAnimation: true,
              repeatForever: true,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final filter = ref.watch(_filterProvider);
    final reportDataAsync = ref.watch(reportDataProvider);

    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        color: Colors.grey[100],
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16).copyWith(top: 0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Property Report',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 220,
                      width: double.infinity,
                      child: reportDataAsync.when(
                        data: (data) {
                          final totalProperties = data.totalSale + data.totalRent;
                          final salePercentage =
                              (data.totalSale / totalProperties * 100).toStringAsFixed(1);
                          final rentPercentage =
                              (data.totalRent / totalProperties * 100).toStringAsFixed(1);

                          return Column(
                            children: [
                              Expanded(
                                child: PieChart(
                                  PieChartData(
                                    sections: [
                                      PieChartSectionData(
                                        color: const Color(0xFF0088FE),
                                        value: data.totalSale.toDouble(),
                                        title: '$salePercentage%',
                                        radius: 50,
                                      ),
                                      PieChartSectionData(
                                        color: const Color(0xFF00C49F),
                                        value: data.totalRent.toDouble(),
                                        title: '$rentPercentage%',
                                        radius: 50,
                                      ),
                                    ],
                                    centerSpaceRadius: 40,
                                    sectionsSpace: 0,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildLegend('Sale', const Color(0xFF0088FE), data.totalSale),
                                  const SizedBox(width: 20),
                                  _buildLegend('Rent', const Color(0xFF00C49F), data.totalRent),
                                ],
                              ),
                            ],
                          );
                        },
                        loading: () => const CircularProgressIndicator(),
                        error: (error, stack) => Text('Error: $error'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey[200]!),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildTabButton(null),
                            ...PropertyStatus.values
                                .where((status) => status != PropertyStatus.resubmit)
                                .map((status) => _buildTabButton(status)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: AdminPropertyListWidget(
                          filter: filter,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLegend(String label, Color color, int value) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          '$label: $value',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildTabButton(PropertyStatus? status) {
    final statuses = ref.read(_filterProvider).statuses;
    final isSelected = statuses.contains(status) && statuses.length <= 2;
    return GestureDetector(
      onTap: () {
        if (isSelected) return;
        ref.read(_filterProvider.notifier).update((old) {
          if (status == null) {
            return old.copyWith(
              statuses: PropertyStatus.values.lock,
            );
          } else if (status == PropertyStatus.resubmit) {
            return old.copyWith(statuses: [PropertyStatus.pending, PropertyStatus.resubmit].lock);
          } else {
            return old.copyWith(statuses: [status].lock);
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color:
                  isSelected || (status == null && statuses.length == PropertyStatus.values.length)
                      ? Colors.blue
                      : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          status?.name.capitalize() ?? 'All',
          style: TextStyle(
            color: isSelected || (status == null && statuses.length == PropertyStatus.values.length)
                ? Colors.blue
                : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
