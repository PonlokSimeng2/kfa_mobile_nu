import 'package:kfa_mobile_nu/src/models/province_model.schema.dart';

import '../../exports.dart';
import '../providers/province_provider.dart';

class ProvinceDropDown extends ConsumerWidget {
  const ProvinceDropDown({super.key, this.value, required this.onChanged});

  final ProvinceModel? value;
  final void Function(ProvinceModel value) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provinceList = ref.watch(provinceListProvider);

    return DropdownButtonFormField<ProvinceModel>(
      isExpanded: true,
      onChanged: (newValue) {
        onChanged(newValue!);
      },
      value: value,
      items: !provinceList.hasValue
          ? null
          : provinceList.requireValue.map((e) {
              return DropdownMenuItem<ProvinceModel>(
                value: e,
                child: Text(e.name),
              );
            }).toList(),
      icon: const Icon(
        Icons.arrow_drop_down,
        color: kImageColor,
      ),
      decoration: InputDecoration(
        fillColor: kwhite,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        labelText: 'Province*',
        hintText: 'Select',
        prefixIcon: const Icon(
          Icons.app_registration_sharp,
          color: kImageColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kPrimaryColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
