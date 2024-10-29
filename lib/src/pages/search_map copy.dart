// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class SearchMapPage extends StatefulWidget {
//   const SearchMapPage({Key? key}) : super(key: key);

//   @override
//   _SearchMapPageState createState() => _SearchMapPageState();
// }

// class _SearchMapPageState extends State<SearchMapPage> {
//   final TextEditingController _addressController = TextEditingController();
//   final Dio _dio = Dio();
//   GoogleMapController? _mapController;
//   LatLng _initialCameraPosition = const LatLng(11.556471, 104.928555);
//   final List<Marker> _markers = [];
//   bool _isLoading = false;
//   String province = "", district = "", commune = "", route = "";
// //Search Map by latlog
//   Future<void> findByPiont(double la, double lo) async {
//     var headers = {
//       'Authorization':
//           'hEXieWCKYKHKD1wVdiTHDjgwkbY9NwITq_F(bQ8tenn(yIUHbOVaQcRukkLZKnh(j]7Cg[1uhoD%-K5)hSP"2W74Qy7/Elf',
//       'Content-Type': 'application/json'
//     };
//     var data = json.encode({"lat": la, "lng": lo});
//     var dio = Dio();
//     var response = await dio.request(
//       'https://www.oneclickonedollar.com/laravel_kfa_2023/public/api/findlatlog/Map',
//       options: Options(
//         method: 'POST',
//         headers: headers,
//       ),
//       data: data,
//     );

//     if (response.statusCode == 200) {
//       var jsonResponse = response.data;

//       List ls = jsonResponse['results'] ?? [];

//       List ac;
//       bool checkSk = false, checkKn = false;
//       for (int j = 0; j < ls.length; j++) {
//         ac = jsonResponse['results'][j]['address_components'];
//         for (int i = 0; i < ac.length; i++) {
//           if (checkKn == false || checkSk == false) {
//             if (jsonResponse['results'][j]['address_components'][i]['types']
//                     [0] ==
//                 "political") {
//               setState(() {
//                 checkKn = true;
//                 district = (jsonResponse['results'][j]['address_components'][i]
//                         ['short_name'] ??
//                     "");
//                 // print("district : $district");
//               });
//             }
//             if (jsonResponse['results'][j]['address_components'][i]['types']
//                     [0] ==
//                 "administrative_area_level_3") {
//               setState(() {
//                 checkSk = true;
//                 commune = (jsonResponse['results'][j]['address_components'][i]
//                         ['short_name'] ??
//                     "");
//               });
//             }
//             if (jsonResponse['results'][j]['address_components'][i]['types']
//                     [0] ==
//                 "administrative_area_level_1") {
//               province = (jsonResponse['results'][j]['address_components'][i]
//                       ['short_name'] ??
//                   "");
//             }
//           }
//         }
//         if (jsonResponse['results'][j]['types'][0] == "route") {
//           List r = jsonResponse['results'][j]['address_components'];
//           for (int i = 0; i < r.length; i++) {
//             if (jsonResponse['results'][j]['address_components'][i]['types']
//                     [0] ==
//                 "route") {
//               setState(() {
//                 route = (jsonResponse['results'][j]['address_components'][i]
//                         ['short_name'] ??
//                     "");
//               });
//             }
//           }
//         }
//       }

//       _addressController.text =
//           "${(province == "null") ? "" : province}, ${(district == "null") ? "" : district}, ${(commune == "null") ? "" : commune}";
//     }
//   }

//   void _showMessage(String message, {required bool isError}) {
//     if (mounted) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text(message),
//           backgroundColor: isError ? Colors.red : Colors.green,
//           duration: const Duration(seconds: 3),
//           behavior: SnackBarBehavior.floating,
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Search Map'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: _addressController,
//               decoration: InputDecoration(
//                 labelText: 'Enter Address',
//                 border: const OutlineInputBorder(),
//                 suffixIcon: _isLoading
//                     ? const Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: CircularProgressIndicator(),
//                       )
//                     : IconButton(
//                         icon: const Icon(Icons.search),
//                         onPressed: () => findByPiont(
//                             _initialCameraPosition.latitude,
//                             _initialCameraPosition.longitude),
//                       ),
//                 hintText: 'Enter a location or address',
//               ),
//               onSubmitted: (value) => findByPiont(
//                   _initialCameraPosition.latitude,
//                   _initialCameraPosition.longitude),
//               enabled: !_isLoading,
//             ),
//           ),
//           Expanded(
//             child: Stack(
//               children: [
//                 GoogleMap(
//                   mapType: MapType.hybrid,
//                   initialCameraPosition: CameraPosition(
//                     target: _initialCameraPosition,
//                     zoom: 12.0,
//                   ),
//                   markers: Set<Marker>.of(_markers),
//                   onMapCreated: (GoogleMapController controller) {
//                     _mapController = controller;
//                   },
//                   myLocationEnabled: true,
//                   myLocationButtonEnabled: true,
//                   zoomControlsEnabled: true,
//                 ),
//                 if (_isLoading)
//                   const Center(
//                     child: Card(
//                       child: Padding(
//                         padding: EdgeInsets.all(16.0),
//                         child: CircularProgressIndicator(),
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _addressController.dispose();
//     _mapController?.dispose();
//     super.dispose();
//   }
// }
