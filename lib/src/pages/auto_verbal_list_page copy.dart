// import 'package:kfa_mobile_nu/src/models/auto_verbal_model.dart';
// import 'package:kfa_mobile_nu/src/models/base.dart';
// import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
// import 'package:kfa_mobile_nu/src/providers/auto_verbal_provider.dart';
// import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
// import 'package:kfa_mobile_nu/src/pages/admin/admin_auto_verbal_detail_page.dart';

// import '../../exports.dart';
// import 'detail_auto_verbal_page.dart';

// final _filterProvider = StateProvider.autoDispose<AutoVerbalListFilter>((ref) {
//   return AutoVerbalListFilter(
//     statuses: PropertyAndAutoVerbalStatus.values.toIList(),
//     userId: ref.watch(authProvider),
//   );
// });

// class AutoVerbalListPage extends ConsumerStatefulWidget {
//   final bool openItemInAdminPage;

//   const AutoVerbalListPage({super.key, this.openItemInAdminPage = false});

//   @override
//   ConsumerState<AutoVerbalListPage> createState() => _AutoVerbalListPageState();
// }

// class _AutoVerbalListPageState extends ConsumerState<AutoVerbalListPage> {
//   String? _status;

//   @override
//   Widget build(BuildContext context) {
//     final firstPageCountAsync = ref.watch(
//       autoVerbalListProvider(
//         page: 0,
//         filter: ref.watch(_filterProvider),
//       ).select((v) => v.whenData((v) => v.length)),
//     );

//     return AuthWrapperWidget(
//       child: Scaffold(
//         appBar: widget.openItemInAdminPage
//             ? null
//             : AppBar(
//                 title: const Text('Auto Verbal List'),
//                 backgroundColor: kwhite_new,
//                 centerTitle: true,
//               ),
//         body: Column(
//           children: [
//             _buildFilterButtons(),
//             Expanded(
//               child: firstPageCountAsync.when(
//                 loading: () => const Center(child: CircularProgressIndicator()),
//                 error: (error, stack) => Center(child: Text('Error: $error')),
//                 data: (count) {
//                   if (count == 0) {
//                     return const Center(
//                       child: Text(
//                         'No auto verbals available',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     );
//                   }
//                   return _GridView(
//                     status: _status,
//                     openItemInAdminPage: widget.openItemInAdminPage,
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildFilterButtons() {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           _buildFilterButton(null),
//           _buildFilterButton(PropertyAndAutoVerbalStatus.pending),
//           _buildFilterButton(PropertyAndAutoVerbalStatus.approved),
//           _buildFilterButton(PropertyAndAutoVerbalStatus.rejected),
//         ],
//       ),
//     );
//   }

//   Widget _buildFilterButton(PropertyAndAutoVerbalStatus? status) {
//     final statuses = ref.watch(_filterProvider).statuses;
//     final isSelected = statuses.contains(status) && statuses.length <= 2;
//     final isAllSelected = status == null &&
//         statuses.length == PropertyAndAutoVerbalStatus.values.length;

//     return ElevatedButton(
//       onPressed: () {
//         if (isSelected) return;
//         ref.read(_filterProvider.notifier).update((old) {
//           if (status == null) {
//             return old.copyWith(
//               statuses: PropertyAndAutoVerbalStatus.values.toIList(),
//             );
//           } else {
//             return old.copyWith(statuses: [status].lock);
//           }
//         });
//       },
//       style: ElevatedButton.styleFrom(
//         backgroundColor:
//             isSelected || isAllSelected ? kwhite_new : Colors.white,
//       ),
//       child: Text(
//         status?.name.capitalize() ?? 'All',
//         style: TextStyle(
//           color: isSelected || isAllSelected ? Colors.white : Colors.grey[600],
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }

// class _GridView extends ConsumerWidget {
//   final String? status;
//   final bool openItemInAdminPage;

//   const _GridView({this.status, required this.openItemInAdminPage});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return GridView.builder(
//       padding: const EdgeInsets.all(8),
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 0.75,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//       ),
//       itemBuilder: (context, index) {
//         final paginated = ref.watch(
//           autoVerbalAtIndexProvider(
//             index: index,
//             filter: ref.watch(_filterProvider),
//           ),
//         );
//         return paginated?.whenOrNull(
//           loading: (isFirstItem) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           },
//           data: (item) {
//             return _buildAutoVerbalCard(context, item);
//           },
//         );
//       },
//     );
//   }

//   Widget _buildAutoVerbalCard(BuildContext context, AutoVerbalModel item) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       child: InkWell(
//         onTap: () {
//           if (openItemInAdminPage) {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => AdminAutoVerbalDetailPage(
//                   autoVerbal: item,
//                 ),
//               ),
//             );
//           } else {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => DetailAutoVerbalPage(
//                   data: item,
//                 ),
//               ),
//             );
//           }
//         },
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: ClipRRect(
//                 borderRadius:
//                     const BorderRadius.vertical(top: Radius.circular(10)),
//                 child: CachedNetworkImage(
//                   imageUrl: item.image,
//                   fit: BoxFit.cover,
//                   width: double.infinity,
//                   placeholder: (context, url) =>
//                       const Center(child: CircularProgressIndicator()),
//                   errorWidget: (context, url, error) => const Icon(Icons.error),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'ID: ${item.autoVerbalId}',
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     item.province.name,
//                     style: TextStyle(
//                       color: Theme.of(context).primaryColor,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 4),
//                   Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//                     decoration: BoxDecoration(
//                       color: item.status.statusColor,
//                       borderRadius: BorderRadius.circular(4),
//                     ),
//                     child: Text(
//                       item.status.name.capitalize(),
//                       style: TextStyle(
//                           color: item.status.statusTextColor, fontSize: 12),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
