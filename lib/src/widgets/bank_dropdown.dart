import '../../exports.dart';
import '../models/bank_model.dart';
import '../providers/bank_provider.dart';

class BankDropDown extends ConsumerWidget {
  const BankDropDown({super.key, this.value, required this.onChanged});

  final BankModel? value;
  final void Function(BankModel value) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bankList = ref.watch(bankListProvider);

    return DropdownButtonFormField<BankModel>(
      isExpanded: true,
      onChanged: (newValue) {
        onChanged(newValue!);
      },
      value: value,
      items: !bankList.hasValue
          ? null
          : bankList.requireValue.map((e) {
              return DropdownMenuItem<BankModel>(
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
        labelText: 'Bank*',
        hintText: 'Select',
        prefixIcon: const Icon(
          Icons.account_balance,
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
