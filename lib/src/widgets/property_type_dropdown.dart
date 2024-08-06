import 'package:kfa_mobile_nu/src/models/property_type_model.schema.dart';

import '../../exports.dart';
import '../providers/property_type_provider.dart';

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
      icon: const Icon(
        Icons.arrow_drop_down,
        color: kImageColor,
      ),
      decoration: InputDecoration(
        fillColor: kwhite,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 8)
            .copyWith(left: 16, right: 8),
        // labelText: 'Property Type*',
        hintText: 'Property Type*', // Changed to center alignment
        prefixIcon: prefixicon,
        // prefixIcon: Icon(
        //   Icons.app_registration_sharp,
        //   color: kImageColor,
        // ),
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
