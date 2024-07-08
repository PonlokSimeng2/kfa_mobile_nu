// import 'dart:convert';

// import 'package:hooks_riverpod/hooks_riverpod.dart';

// final vPointProvider = FutureProvider<int>((ref) async {
//   final controlUser = ref.watch(
//    // authProvider.select((value) => value?.user.controlUser),
//   );

//   if (controlUser == null) return 0;

//   // final result = await http.get(
//   //  // Uri.parse('$baseUrl/public/api/check_count?id_user_control=$controlUser'),
//   // );

//   if (result.statusCode == 200) {
//     final jsonData = jsonDecode(result.body);
//     return jsonData['number_count'];
//   }

//   return 0;
// });
