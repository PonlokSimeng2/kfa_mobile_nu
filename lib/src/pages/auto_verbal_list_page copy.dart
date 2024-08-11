// import 'package:kfa_mobile_nu/exports.dart';
// import 'package:kfa_mobile_nu/src/helpers/build_context_helper.dart';
// import 'package:kfa_mobile_nu/src/models/models.dart';
// import 'package:kfa_mobile_nu/src/pages/admin/admin_auto_verbal_detail_page.dart';
// import 'package:kfa_mobile_nu/src/pages/client_auto_verbal_detail_page.dart';
// import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
// import 'package:intl/intl.dart';

// import '../providers/auto_verbal_provider.dart';
// import '../widgets/auth_wrapper_widget.dart';

// class AutoVerbalListPage extends ConsumerStatefulWidget {
//   const AutoVerbalListPage({super.key, this.openItemInAdminPage = false});

//   final bool openItemInAdminPage;

//   @override
//   ConsumerState<AutoVerbalListPage> createState() => _AutoVerbalListPageState();
// }

// class _AutoVerbalInherited extends InheritedWidget {
//   final bool openItemInAdminPage;

//   const _AutoVerbalInherited({
//     super.key,
//     required this.openItemInAdminPage,
//     required super.child,
//   });

//   static _AutoVerbalInherited? of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<_AutoVerbalInherited>();
//   }

//   @override
//   bool updateShouldNotify(_AutoVerbalInherited oldWidget) {
//     return openItemInAdminPage != oldWidget.openItemInAdminPage;
//   }
// }

// class _AutoVerbalListPageState extends ConsumerState<AutoVerbalListPage> {
//   PropertyAndAutoVerbalStatus? _status;

//   @override
//   Widget build(BuildContext context) {
//     final userAsync = ref.watch(currentUserProvider);
//     final firstPageCountAsync = ref.watch(
//       autoVerbalListProvider(
//         page: 0,
//         filter: AutoVerbalListFilter(
//           // status: _status,
//           userId: userAsync.value?.id,
//           statuses: PropertyAndAutoVerbalStatus.values.lock,
//         ),
//       ).select((v) => v.whenData((v) => v.length)),
//     );

//     return AuthWrapperWidget(
//       child: _AutoVerbalInherited(
//         openItemInAdminPage: widget.openItemInAdminPage,
//         child: Scaffold(
//           appBar: widget.openItemInAdminPage
//               ? null
//               : AppBar(
//                   title: const Text('Auto Verbal List'),
//                 ),
//           body: Column(
//             children: [
//               _buildFilterButtons(),
//               Expanded(
//                 child: firstPageCountAsync.when(
//                   loading: () =>
//                       const Center(child: CircularProgressIndicator()),
//                   error: (error, stack) => Center(child: Text('Error: $error')),
//                   data: (count) {
//                     if (count == 0) {
//                       return const Center(
//                         child: Text(
//                           'No auto verbals available',
//                           style: TextStyle(fontSize: 18),
//                         ),
//                       );
//                     }
//                     return _GridView(
//                       status: _status,
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildFilterButtons() {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         child: Row(
//           children: [
//             _buildFilterButton('All', Icons.list, null),
//             const SizedBox(width: 10),
//             _buildFilterButton(
//                 'Pending', Icons.pending, PropertyAndAutoVerbalStatus.pending),
//             const SizedBox(width: 10),
//             _buildFilterButton('Approved', Icons.check_circle,
//                 PropertyAndAutoVerbalStatus.approved),
//             const SizedBox(width: 10),
//             _buildFilterButton(
//                 'Rejected', Icons.cancel, PropertyAndAutoVerbalStatus.rejected),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildFilterButton(
//     String label,
//     IconData icon,
//     PropertyAndAutoVerbalStatus? valueStatus,
//   ) {
//     final isSelected = _status == valueStatus;
//     return ElevatedButton.icon(
//       onPressed: () => setState(() => _status = valueStatus),
//       icon: Icon(icon, color: isSelected ? Colors.white : Colors.grey),
//       label: Text(label),
//       style: ElevatedButton.styleFrom(
//         foregroundColor: isSelected ? Colors.white : Colors.black,
//         backgroundColor:
//             isSelected ? Theme.of(context).primaryColor : Colors.white,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       ),
//     );
//   }
// }

// class _GridView extends ConsumerWidget {
//   final PropertyAndAutoVerbalStatus? status;
//   const _GridView({this.status});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final userAsync = ref.watch(currentUserProvider);
//     final dataSource = _AutoVerbalDataSource(
//       context: context,
//       ref: ref,
//       filter: AutoVerbalListFilter(
//         // status: status,
//         userId: userAsync.value?.id,
//         statuses: PropertyAndAutoVerbalStatus.values.lock,
//       ),
//       onTap: (item) {
//         final autoVerbalInherited = _AutoVerbalInherited.of(context);
//         if (autoVerbalInherited!.openItemInAdminPage) {
//           context.push((_) => AdminAutoVerbalDetailPage(autoVerbal: item));
//         } else {
//           context.push((_) => ClientDetailAutoVerbalPage(data: item));
//         }
//       },
//     );

//     return PaginatedDataTable(
//       columns: const [
//         DataColumn(
//             label: Text('No.',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
//         DataColumn(
//             label: Text('Actions',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
//         DataColumn(
//             label: Text('Image',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
//         DataColumn(
//             label: Text('ID',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
//         DataColumn(
//             label: Text('Province',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
//         DataColumn(
//             label: Text('Status',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
//         DataColumn(
//             label: Text('Date',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
//       ],
//       source: dataSource,
//       rowsPerPage: 5,
//     );
//   }
// }

// class _AutoVerbalDataSource extends DataTableSource {
//   final BuildContext context;
//   final WidgetRef ref;
//   final AutoVerbalListFilter filter;
//   final Function(AutoVerbalModel) onTap;
//   int _rowCount = 0;

//   _AutoVerbalDataSource({
//     required this.context,
//     required this.ref,
//     required this.filter,
//     required this.onTap,
//   }) {
//     _fetchRowCount();
//   }

//   void _fetchRowCount() {
//     ref
//         .read(autoVerbalListProvider(page: 0, filter: filter).future)
//         .then((value) {
//       _rowCount = value.length;
//       notifyListeners();
//     });
//   }

//   @override
//   DataRow? getRow(int index) {
//     final autoVerbalAsync =
//         ref.watch(autoVerbalListProvider(page: index ~/ 10, filter: filter));
//     return autoVerbalAsync.when(
//       loading: () => DataRow(
//           cells: List.generate(7, (_) => const DataCell(Text('Loading...')))),
//       error: (error, stack) => DataRow(cells: [
//         DataCell(Text(error.toString())),
//         ...List.generate(6, (_) => const DataCell(Text(''))),
//       ]),
//       data: (autoVerbals) {
//         if (index >= autoVerbals.length) return null;
//         final autoVerbal = autoVerbals[index % 10];
//         return DataRow(
//           cells: [
//             DataCell(Text('${index + 1}')),
//             DataCell(
//               IconButton(
//                 icon: const Icon(Icons.edit),
//                 onPressed: () => onTap(autoVerbal),
//               ),
//             ),
//             DataCell(
//               autoVerbal.image.isNotEmpty
//                   ? CachedNetworkImage(
//                       imageUrl: autoVerbal.image.first,
//                       width: 50,
//                       height: 50,
//                       fit: BoxFit.cover,
//                     )
//                   : const Icon(Icons.image_not_supported),
//             ),
//             DataCell(Text(autoVerbal.autoVerbalId)),
//             DataCell(Text(autoVerbal.province.name)),
//             DataCell(Text(autoVerbal.status.name)),
//             DataCell(
//                 Text(DateFormat('yyyy-MM-dd').format(autoVerbal.createdAt))),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   bool get isRowCountApproximate => false;

//   @override
//   int get rowCount => _rowCount;

//   @override
//   int get selectedRowCount => 0;
// }
