import 'package:kfa_mobile_nu/src/models/property_type_model.schema.dart';

import '../../exports.dart';
import '../providers/property_type_provider.dart';
import '../providers/theme_provider.dart';

class PropertyTypeDropDown extends ConsumerWidget {
  const PropertyTypeDropDown({
    super.key,
    this.value,
    required this.onChanged,
    this.prefixicon,
  });

  final PropertyTypeModel? value;
  final void Function(PropertyTypeModel value) onChanged;
  final Icon? prefixicon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final propertyTypeList = ref.watch(propertyTypeListProvider);
    final isDarkMode = ref.watch(themeProvider) == ThemeMode.dark;

    return DropdownButtonFormField<PropertyTypeModel>(
      isExpanded: true,
      onChanged: (newValue) {
        onChanged(newValue!);
      },
      value: value,
      items: !propertyTypeList.hasValue
          ? null
          : propertyTypeList.requireValue.map((e) {
              return DropdownMenuItem<PropertyTypeModel>(
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
        hintText: 'Property Type*',
        hintStyle:
            TextStyle(color: isDarkMode ? Colors.grey[400] : Colors.grey[600]),
        prefixIcon: prefixicon != null
            ? Icon(prefixicon!.icon,
                color: isDarkMode ? Colors.white : kImageColor)
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: isDarkMode ? Colors.blue[300]! : kPrimaryColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: isDarkMode ? Colors.grey[600]! : kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
