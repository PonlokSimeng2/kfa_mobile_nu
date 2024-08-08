import 'package:kfa_mobile_nu/src/models/province_model.schema.dart';

import '../../exports.dart';
import '../providers/province_provider.dart';
import '../providers/theme_provider.dart';

class ProvinceDropDown extends ConsumerWidget {
  const ProvinceDropDown(
      {super.key, this.value, required this.onChanged, this.prefixicon});

  final ProvinceModel? value;
  final void Function(ProvinceModel value) onChanged;
  final Icon? prefixicon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provinceList = ref.watch(provinceListProvider);
    final isDarkMode = ref.watch(themeProvider) == ThemeMode.dark;

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
        color: isDarkMode ? Colors.white : kImageColor,
      ),
      dropdownColor: isDarkMode ? Colors.grey[800] : kwhite,
      style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
      decoration: InputDecoration(
        fillColor: isDarkMode ? Colors.grey[900] : kwhite,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 8)
            .copyWith(left: 16, right: 8),
        labelText: 'Province*',
        labelStyle: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
        hintText: 'Select',
        hintStyle:
            TextStyle(color: isDarkMode ? Colors.grey[400] : Colors.grey[600]),
        prefixIcon: prefixicon != null
            ? Icon(prefixicon!.icon,
                color: isDarkMode ? Colors.white : kImageColor)
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: isDarkMode ? Colors.white : kPrimaryColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: isDarkMode ? Colors.grey : kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
