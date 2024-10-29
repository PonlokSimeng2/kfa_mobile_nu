import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/gen/assets.gen.dart';
import 'package:kfa_mobile_nu/src/providers/property_category_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';

import '../../models/base.dart';
import '../../widgets/app_logo.dart';
import 'widgets/admin_property_list_widget.dart';

final _filterProvider = StateProvider.autoDispose<PropertyListFilter>((ref) {
  return PropertyListFilter(
    statuses: [
      PropertyAndAutoVerbalStatus.pending,
      PropertyAndAutoVerbalStatus.resubmit,
    ].lock,
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
      title: const AppLogo(),
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
          margin: context.responsiveMargin,
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
                        .where((status) =>
                            status != PropertyAndAutoVerbalStatus.resubmit,)
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
          } else if (status == PropertyAndAutoVerbalStatus.pending) {
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
                          statuses.length ==
                              PropertyAndAutoVerbalStatus.values.length)
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
                    (status == null &&
                        statuses.length ==
                            PropertyAndAutoVerbalStatus.values.length)
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
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        color: context.scaffoldBackgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     _buildLegend(
              //       'Sale',
              //       const Color(0xFF0088FE),
              //       totalSale,
              //     ),
              //     const SizedBox(width: 20),
              //     _buildLegend(
              //       'Rent',
              //       const Color(0xFF00C49F),
              //       totalRent,
              //     ),
              //   ],
              // ),
              Row(
                children: [
                  Expanded(
                    child: Container(
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
                                    totalSale = data.sumBy(
                                        (element) => element.totalSale ?? 0,);
                                    totalRent = data.sumBy(
                                        (element) => element.totalRent ?? 0,);
                                  } else {
                                    totalSale = data
                                        .firstWhere(
                                          (element) =>
                                              element.id ==
                                              selectedCategoryTypeId.value,
                                        )
                                        .totalSale!;
                                    totalRent = data
                                        .firstWhere(
                                          (element) =>
                                              element.id ==
                                              selectedCategoryTypeId.value,
                                        )
                                        .totalRent!;
                                  }
                                  final totalProperties = totalSale + totalRent;
                                  final salePercentage =
                                      (totalSale / totalProperties * 100)
                                          .toStringAsFixed(1);
                                  final rentPercentage =
                                      (totalRent / totalProperties * 100)
                                          .toStringAsFixed(1);

                                  return Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 40),
                                            ...data.map(
                                              (e) {
                                                final selected =
                                                    selectedCategoryTypeId
                                                            .value ==
                                                        e.id;
                                                return InkWell(
                                                  onTap: () {
                                                    if (selected) {
                                                      selectedCategoryTypeId
                                                          .value = null;
                                                    } else {
                                                      selectedCategoryTypeId
                                                          .value = e.id;
                                                    }
                                                  },
                                                  child: Container(
                                                    width: double.infinity,
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 12,
                                                      vertical: 12,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: selected
                                                          ? Colors.white24
                                                          : Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10,),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          width: 5,
                                                          height: 5,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Colors.white,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 8,),
                                                        Expanded(
                                                          child: Text(
                                                            e.name,
                                                            style:
                                                                const TextStyle(
                                                              color:
                                                                  Colors.white,
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
                                          children: [
                                            if (MediaQuery.of(context)
                                                    .size
                                                    .width <
                                                1029)
                                              Expanded(
                                                child: PieChart(
                                                  PieChartData(
                                                    sections: [
                                                      PieChartSectionData(
                                                        color: const Color(
                                                            0xFF0088FE,),
                                                        value: totalSale
                                                            .toDouble(),
                                                        title:
                                                            '$salePercentage%',
                                                        radius: 50,
                                                      ),
                                                      PieChartSectionData(
                                                        color: const Color(
                                                            0xFF00C49F,),
                                                        value: totalRent
                                                            .toDouble(),
                                                        title:
                                                            '$rentPercentage%',
                                                        radius: 50,
                                                      ),
                                                    ],
                                                    centerSpaceRadius: 40,
                                                    sectionsSpace: 0,
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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
                  ),
                  // Carousel widget is removed for mobile devices
                  if (MediaQuery.of(context).size.width > 1160)
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      height: 278,
                      width: 800,
                      child: FlutterCarousel(
                        items: [
                          Assets.images.banners.bannerKFA
                              .image(fit: BoxFit.cover),
                          Assets.images.banners.bannerPropertyReport
                              .image(fit: BoxFit.cover),
                          Assets.images.banners.bannerPropertyReport2
                              .image(fit: BoxFit.cover),
                        ].map((e) {
                          return ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                e,
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0),
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10.0,
                                      horizontal: 20.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 1,
                          enlargeCenterPage: true,
                          aspectRatio: 1.8,
                        ),
                      ),
                    ),
                  if (MediaQuery.of(context).size.width < 1161 &&
                      MediaQuery.of(context).size.width > 1029)
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      height: 278,
                      width: MediaQuery.of(context).size.width > 650
                          ? 650
                          : MediaQuery.of(context).size.width,
                      child: FlutterCarousel(
                        items: [
                          Assets.images.banners.bannerKFA
                              .image(fit: BoxFit.cover),
                          Assets.images.banners.bannerPropertyReport
                              .image(fit: BoxFit.cover),
                          Assets.images.banners.bannerPropertyReport2
                              .image(fit: BoxFit.cover),
                        ].map((e) {
                          return ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                e,
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0),
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10.0,
                                      horizontal: 20.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 1,
                          enlargeCenterPage: true,
                          aspectRatio: 1.8,
                        ),
                      ),
                    ),
                ],
              ),
              Expanded(child: _buildList()),
            ],
          ),
        ),
      ),
    );
  }
}
