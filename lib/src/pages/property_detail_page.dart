import 'package:kfa_mobile_nu/src/models/property_model.dart';
import 'package:kfa_mobile_nu/src/providers/province_provider.dart';

import '../../exports.dart';

class PropertyDetailPage extends ConsumerWidget {
  const PropertyDetailPage({
    super.key,
    required this.data,
  });

  final PropertyModel data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: ref.watch(provinceListProvider).onData((item) {
        return Text(item.toString());
      }),
    );
  }
}
