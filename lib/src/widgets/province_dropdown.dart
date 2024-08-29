import 'package:kfa_mobile_nu/src/models/province_model.schema.dart';

import '../../exports.dart';
import '../providers/province_provider.dart';

class ProvinceDropDown extends ConsumerWidget {
  const ProvinceDropDown({
    super.key,
    this.value,
    required this.onChanged,
    this.prefixicon,
    this.showValidation = true,
  });
  final bool showValidation;
  final ProvinceModel? value;
  final void Function(ProvinceModel value) onChanged;
  final Icon? prefixicon;

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
      icon: Icon(
        Icons.arrow_drop_down,
        color: context.isDarkMode ? Colors.white : kImageColor,
      ),
      dropdownColor: context.isDarkMode ? Colors.grey[800] : kwhite,
      style: TextStyle(color: context.isDarkMode ? Colors.white : Colors.black),
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.isDarkMode ? Colors.red : Colors.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        fillColor: context.isDarkMode ? Colors.grey[900] : kwhite,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 8)
            .copyWith(left: 16, right: 8),
        labelText: 'Province*',
        labelStyle:
            TextStyle(color: context.isDarkMode ? Colors.white : Colors.black),
        hintText: 'Select',
        hintStyle: TextStyle(
            color: context.isDarkMode ? Colors.grey[400] : Colors.grey[600]),
        prefixIcon: prefixicon != null
            ? Icon(
                prefixicon!.icon,
                color: context.isDarkMode ? Colors.white : kImageColor,
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.isDarkMode ? Colors.white : kPrimaryColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: context.isDarkMode ? Colors.grey : kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        errorText:
            showValidation && value == null ? 'Please select a province' : null,
      ),
    );
  }
}
