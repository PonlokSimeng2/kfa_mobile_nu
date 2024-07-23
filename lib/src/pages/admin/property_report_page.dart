import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/gen/assets.gen.dart';
import 'package:kfa_mobile_nu/src/providers/property_category_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';

import '../../models/base.dart';
import 'widgets/admin_property_list_widget.dart';

final _filterProvider = StateProvider.autoDispose<PropertyListFilter>((ref) {
  return PropertyListFilter(
    statuses: [PropertyAndAutoVerbalStatus.pending, PropertyAndAutoVerbalStatus.resubmit].lock,
  );
});

class PropertyReportPage extends StatefulHookConsumerWidget {
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

  Widget _buildList() {
    return Consumer(
      builder: (context, ref, child) {
        final filter = ref.watch(_filterProvider);
        return Container(
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
                    ...PropertyAndAutoVerbalStatus.values
                        .where((status) => status != PropertyAndAutoVerbalStatus.resubmit)
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
        );
      },
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

  Widget _buildTabButton(PropertyAndAutoVerbalStatus? status) {
    final statuses = ref.read(_filterProvider).statuses;
    final isSelected = statuses.contains(status) && statuses.length <= 2;
    return GestureDetector(
      onTap: () {
        if (isSelected) return;
        ref.read(_filterProvider.notifier).update((old) {
          if (status == null) {
            return old.copyWith(
              statuses: PropertyAndAutoVerbalStatus.values.lock,
            );
          } else if (status == PropertyAndAutoVerbalStatus.resubmit) {
            return old.copyWith(
              statuses: [
                PropertyAndAutoVerbalStatus.pending,
                PropertyAndAutoVerbalStatus.resubmit,
              ].lock,
            );
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
              color: isSelected ||
                      (status == null &&
                          statuses.length == PropertyAndAutoVerbalStatus.values.length)
                  ? Colors.blue
                  : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          status?.name.capitalize() ?? 'All',
          style: TextStyle(
            color: isSelected ||
                    (status == null && statuses.length == PropertyAndAutoVerbalStatus.values.length)
                ? Colors.blue
                : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedCategoryTypeId = useState<int?>(null);
    final reportDataAsync = ref.watch(propertyCategoryListProvider);

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
                    GestureDetector(
                      onTap: () {
                        selectedCategoryTypeId.value = null;
                      },
                      child: SizedBox(
                        height: 220,
                        width: double.infinity,
                        child: reportDataAsync.onData(
                          (data) {
                            int totalSale;
                            int totalRent;

                            if (selectedCategoryTypeId.value == null) {
                              totalSale = data.sumBy((element) => element.totalSale ?? 0);
                              totalRent = data.sumBy((element) => element.totalRent ?? 0);
                            } else {
                              totalSale = data
                                  .firstWhere(
                                    (element) => element.id == selectedCategoryTypeId.value,
                                  )
                                  .totalSale!;
                              totalRent = data
                                  .firstWhere(
                                    (element) => element.id == selectedCategoryTypeId.value,
                                  )
                                  .totalRent!;
                            }
                            final totalProperties = totalSale + totalRent;
                            final salePercentage =
                                (totalSale / totalProperties * 100).toStringAsFixed(1);
                            final rentPercentage =
                                (totalRent / totalProperties * 100).toStringAsFixed(1);

                            return Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 40),
                                      ...data.map(
                                        (e) {
                                          final selected = selectedCategoryTypeId.value == e.id;
                                          return InkWell(
                                            onTap: () {
                                              if (selected) {
                                                selectedCategoryTypeId.value = null;
                                              } else {
                                                selectedCategoryTypeId.value = e.id;
                                              }
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              padding: const EdgeInsets.symmetric(
                                                horizontal: 12,
                                                vertical: 12,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    selected ? Colors.white24 : Colors.transparent,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Expanded(
                                                    child: Text(
                                                      e.name,
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: PieChart(
                                          PieChartData(
                                            sections: [
                                              PieChartSectionData(
                                                color: const Color(0xFF0088FE),
                                                value: totalSale.toDouble(),
                                                title: '$salePercentage%',
                                                radius: 50,
                                              ),
                                              PieChartSectionData(
                                                color: const Color(0xFF00C49F),
                                                value: totalRent.toDouble(),
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
                                          _buildLegend(
                                            'Sale',
                                            const Color(0xFF0088FE),
                                            totalSale,
                                          ),
                                          const SizedBox(width: 20),
                                          _buildLegend(
                                            'Rent',
                                            const Color(0xFF00C49F),
                                            totalRent,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: _buildList()),
            ],
          ),
        ),
      ),
    );
  }
}
