import '../../../exports.dart';
import '../../models/user_model.dart';
import '../../providers/admin_provider.dart';

class AdminPickerDialog extends HookConsumerWidget {
  const AdminPickerDialog({super.key, this.selectedUserId});

  final String? selectedUserId;

  static Future<UserModel?> show(
      BuildContext context, String? selectedUserId,) async {
    return showDialog<UserModel>(
      context: context,
      builder: (context) => AdminPickerDialog(selectedUserId: selectedUserId),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchString = useState('');
    final listAsync = ref.watch(adminListProvider);

    return AlertDialog(
      title: const Text('Select Admin'),
      content: SizedBox(
        width: 500,
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Search',
              ),
              onChanged: (value) => searchString.value = value,
            ),
            const SizedBox(height: 12),
            Expanded(
              child: listAsync.onData(
                (list) {
                  final filteredList = list
                      .where((e) => e.fullName
                          .toLowerCase()
                          .contains(searchString.value.toLowerCase()),)
                      .toList();

                  return ListView.builder(
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      final user = filteredList[index];
                      final isSelected = user.id == selectedUserId;
                      return Card(
                        child: ListTile(
                          title: Text(user.fullName),
                          trailing: isSelected ? const Icon(Icons.check) : null,
                          onTap: () => Navigator.pop(context, user),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
