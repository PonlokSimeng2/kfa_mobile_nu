import '../../exports.dart';
import '../models/road_model.dart';
import '../providers/road_provider.dart';

class RoadDropDown extends ConsumerWidget {
  const RoadDropDown({super.key, this.value, required this.onChanged});

  final RoadModel? value;
  final void Function(RoadModel value) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roadList = ref.watch(roadListProvider);

    return DropdownButtonFormField<RoadModel>(
      isExpanded: true,
      onChanged: (newValue) {
        onChanged(newValue!);
      },
      value: value,
      items: !roadList.hasValue
          ? null
          : roadList.requireValue.map((e) {
              return DropdownMenuItem<RoadModel>(
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
        labelText: 'Road*',
        hintText: 'Select',
        prefixIcon: const Icon(
          Icons.location_on,
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
