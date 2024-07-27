import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/gen/assets.gen.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/providers/auto_verbal_provider.dart';

import 'widgets/admin_auto_verbal_list_widget.dart';

final _filterProvider = StateProvider.autoDispose<AutoVerbalListFilter>((ref) {
  return AutoVerbalListFilter(
    statuses: [PropertyAndAutoVerbalStatus.pending, PropertyAndAutoVerbalStatus.resubmit].lock,
  );
});

class AutoVerbalReportPage extends StatefulHookConsumerWidget {
  const AutoVerbalReportPage({super.key});

  @override
  _AutoVerbalReportPageState createState() => _AutoVerbalReportPageState();
}

class _AutoVerbalReportPageState extends ConsumerState<AutoVerbalReportPage> {
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
                child: AdminAutoVerbalListWidget(
                  filter: filter,
                ),
              ),
            ],
          ),
        );
      },
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Auto Verbal Report',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
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
