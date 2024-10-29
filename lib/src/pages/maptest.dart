// ignore_for_file: depend_on_referenced_packages, unused_import, unused_field, unused_element, prefer_const_constructors, avoid_print, unused_label, unused_local_variable, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, prefer_final_fields, use_build_context_synchronously, non_constant_identifier_names, prefer_collection_literals, unnecessary_brace_in_string_interps, unnecessary_new, no_leading_underscores_for_local_identifiers, await_only_futures

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:http/http.dart' as http;
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location_geocoder/location_geocoder.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

typedef OnChangeCallback = void Function(dynamic value);

class Google_map extends StatefulWidget {
  const Google_map({
    super.key,
    // required this.c_id,
    required this.district,
    required this.commune,
    // required this.province,
    required this.log,
    required this.lat,
    //this.image_map
  });
  // final String c_id;
  // final OnChangeCallback province;
  final OnChangeCallback district;
  final OnChangeCallback commune;
  final OnChangeCallback log;
  final OnChangeCallback lat;
  // final OnChangeCallback? image_map;

  @override
  State<Google_map> createState() => _SearchPlacesScreenState();
}

const kGoogleApiKey =
    'AIzaSyCYY4ONLxyCkQkueOWSlu4TjuyCH3QNkQ8&callback=initMapVerbal';
final homeScaffoldKey = GlobalKey<ScaffoldState>();

class _SearchPlacesScreenState extends State<Google_map> {
  double latitude = 11.519037; //latitude
  double longitude = 104.915120;
  String sendAddrress = '';
  late LocatitonGeocoder geocoder = LocatitonGeocoder(kGoogleApiKey);
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  // final Set<Marker> _marker1 = new Set();
  // Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  final Set<Marker> _marker = new Set();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  GoogleMapController? mapController;
  List data = [];
  Uint8List? get_bytes;
  String? _currentAddress;
  Position? _currentPosition;
  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services',),),);
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')),);
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.',),),);
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _getAddressFromLatLng(position));
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
            _currentPosition!.latitude, _currentPosition!.longitude,)
        .then((List<Placemark> placemarks) {
      final Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
            '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
        latitude = _currentPosition!.latitude;
        longitude = _currentPosition!.longitude;
        latLng = LatLng(latitude, longitude);
        final Marker newMarker = Marker(
          draggable: true,
          markerId: MarkerId(latLng.toString()),
          position: latLng,
          onDragEnd: (value) {
            latLng = value;
            Find_by_piont(value.latitude, value.longitude);
          },
          infoWindow: InfoWindow(title: 'KFA\'s Developer'),
        );
        _marker.add(newMarker);
        //widget.district(place.subLocality);
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }

  @override
  void initState() {
    _getCurrentPosition();
    super.initState();
  }

  Uint8List? _imageFile;
  LatLng latLng = LatLng(11.519037, 104.915120);
  CameraPosition? cameraPosition;
  // list of marker
  List<MarkerId> listMarkerIds = List<MarkerId>.empty(growable: true);
  // var listMarkerIds = List.empty(growable: true); // []

  void _addMarker(LatLng latLng) {
    final Marker newMarker = Marker(
      draggable: true,
      markerId: MarkerId(latLng.toString()),
      position: latLng,
      onDragEnd: (value) {
        latLng = value;
        Find_by_piont(value.latitude, value.longitude);
      },
      infoWindow: InfoWindow(title: 'KFA\'s Developer'),
    );

    setState(() {
      latitude = latLng.latitude;
      longitude = latLng.longitude;
      // print('------------------- $latitude');
      // print('------------------- $longitude');
      _marker.clear();
      Find_by_piont(latitude, longitude);
      // add the new marker to the list of markers
      _marker.add(newMarker);
    });
  }

  int num = 0;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static const CameraPosition initialCameraPosition =
      CameraPosition(target: LatLng(37.42796, -122.08574), zoom: 24.0);
  Set<Marker> markersList = {};
  late GoogleMapController googleMapController;
  int id = 1;
  Set<Polyline> _polylines = Set<Polyline>();
  List<MapType> style_map = [
    MapType.hybrid,
    MapType.normal,
  ];
  TextEditingController searchMap = TextEditingController();

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        centerTitle: true,
        title: const Text("GoogleMap"),
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: () async {
            final response = await http.get(Uri.parse(
                'https://maps.googleapis.com/maps/api/staticmap?center=${latitude},${longitude}&zoom=19&size=720x720&maptype=hybrid&markers=color:red%7Clabel:K%7C${latitude},${longitude}&key=AIzaSyCYY4ONLxyCkQkueOWSlu4TjuyCH3QNkQ8',),);
            final bytes = response.bodyBytes;
            get_bytes = Uint8List.fromList(bytes);
            setState(() {
              //widget.image_map!(get_bytes);
            });
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: searchMap,
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      Future.delayed(Duration(seconds: 1), () {
                        waitingSearch();
                      });
                    }
                  },
                  onFieldSubmitted: (value) {
                    if (value.isNotEmpty) {
                      waitingSearch();
                    }
                  },
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_outlined),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(0, 168, 168, 168), width: 5.0,),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(0, 168, 168, 168),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: 'Enter latitude and longitude',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(0, 168, 168, 168), width: 2.0,),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0.0, vertical: 1),
                    hintStyle: TextStyle(
                      color: Colors.grey[850],
                      fontSize: MediaQuery.of(context).textScaleFactor * 0.04,
                    ),
                    fillColor: Colors
                        .grey[400], // Added to set background color to grey
                    filled: true, // Added to set background color to grey
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    (latitude != 0)
                        ? GoogleMap(
                            initialCameraPosition: CameraPosition(
                                target: LatLng(latitude, longitude), zoom: 20,),
                            myLocationButtonEnabled: true,
                            myLocationEnabled: true,

                            // markers: Set.from(_marker),
                            zoomGesturesEnabled: true,

                            markers: _marker.map((e) => e).toSet(),
                            polylines: _polylines,
                            onMapCreated: (GoogleMapController controller) {
                              mapController = controller;
                            },
                            onCameraMove: (CameraPosition cameraPositiona) {
                              cameraPosition =
                                  cameraPositiona; //when map is dragging
                            },
                            mapType: style_map[index],
                            onTap: (argument) {
                              _addMarker(argument);
                              setState(() {
                                searchMap.clear();
                                listMap = [];
                              });
                            },
                          )
                        : Center(
                            child: Text('Error'),
                          ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 60,
            child: (listMap.isEmpty)
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: searchGoogle
                        ? Center(child: CircularProgressIndicator())
                        : Container(
                            height: 250,
                            width: 450,
                            color: Colors.white,
                            child: ListView.builder(
                              itemCount: listMap.length,
                              itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  setState(() {
                                    final location =
                                        listMap[index]['geometry']['location'];
                                    final LatLng lat = LatLng(
                                        double.parse(
                                            location['lat'].toString(),),
                                        double.parse(
                                            location['lng'].toString(),),);
                                    findlocation(lat);
                                    searchMap.clear();
                                    listMap = [];
                                  });
                                },
                                child: Container(
                                  color: Colors.white,
                                  height: 30,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.grey[850],
                                        size: 20,
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        listMap[index]['name'].toString(),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                  ),
          ),
        ],
      ),
    );
  }

  Future<void> findByPiont(double la, double lo) async {
    final headers = {
      'Authorization':
          'hEXieWCKYKHKD1wVdiTHDjgwkbY9NwITq_F(bQ8tenn(yIUHbOVaQcRukkLZKnh(j]7Cg[1uhoD%-K5)hSP"2W74Qy7/Elf',
      'Content-Type': 'application/json',
    };
    final data = json.encode({"lat": la, "lng": lo});
    final dio = Dio();
    final response = await dio.request(
      'https://www.oneclickonedollar.com/laravel_kfa_2023/public/api/findlatlog/Map',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );

    if (response.statusCode == 200) {
      final jsonResponse = response.data;

      final List ls = jsonResponse['results'] ?? [];

      List ac;
      bool checkSk = false, checkKn = false;
      for (int j = 0; j < ls.length; j++) {
        ac = jsonResponse['results'][j]['address_components'];
        for (int i = 0; i < ac.length; i++) {
          if (checkKn == false || checkSk == false) {
            if (jsonResponse['results'][j]['address_components'][i]['types']
                    [0] ==
                "political") {
              setState(() {
                checkKn = true;
                final String district = (jsonResponse['results'][j]
                        ['address_components'][i]['short_name'] ??
                    "");
                // print("district : $district");
              });
            }
            if (jsonResponse['results'][j]['address_components'][i]['types']
                    [0] ==
                "administrative_area_level_3") {
              setState(() {
                checkSk = true;
                final String commune = (jsonResponse['results'][j]
                        ['address_components'][i]['short_name'] ??
                    "");
              });
            }
            if (jsonResponse['results'][j]['address_components'][i]['types']
                    [0] ==
                "administrative_area_level_1") {
              final String province = (jsonResponse['results'][j]
                      ['address_components'][i]['short_name'] ??
                  "");
            }
          }
        }
        if (jsonResponse['results'][j]['types'][0] == "route") {
          final List r = jsonResponse['results'][j]['address_components'];
          for (int i = 0; i < r.length; i++) {
            if (jsonResponse['results'][j]['address_components'][i]['types']
                    [0] ==
                "route") {
              setState(() {
                final String route = (jsonResponse['results'][j]['address_components']
                        [i]['short_name'] ??
                    "");
              });
            }
          }
        }
      }
      setState(() {
        listMap = [];
      });

      //   addressController.text =
      //       "${(province == "null") ? "" : province}, ${(district == "null") ? "" : district}, ${(commune == "null") ? "" : commune}";
    }
  }

  List listMap = [];
  double h = 0;
  bool searchGoogle = false;
  Future<void> waitingSearch() async {
    searchGoogle = true;
    Future.wait([mainsearch()]);
    setState(() {
      searchGoogle = false;
    });
  }

  bool searchBool = false;
  Future<void> findlocation(LatLng latlog) async {
    setState(() {
      searchBool = true;
      // print("latLng : ${latLng.latitude} || longitude : ${latLng.longitude}");
      latLng = LatLng(latlog.latitude, latlog.longitude);
      mapController?.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: latLng, zoom: 17),),);
      final Marker marker = Marker(
        draggable: true,
        markerId: MarkerId(latLng.toString()),
        position: latLng,
        onDragEnd: (value) {
          latLng = value;
        },
      );
      setState(() {
        _marker.add(marker);
        h = 0;
        listMap = [];
      });
    });
  }

  Future<void> mainsearch() async {
    final response = await http.get(Uri.parse(
        'https://www.oneclickonedollar.com/laravel_kfa_2023/public/api/search/place/map?query=${searchMap.text}',),);
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body)['data'];
      setState(() {
        listMap = jsonResponse['results'];
        // print(listMap.toString());
        for (int i = 0; i < listMap.length; i++) {
          if (h == 0 || h < 240) {
            h += 35;
          }
        }
      });
    } else {
      // print(response.reasonPhrase);
    }
  }

  Future<void> Find_by_piont(double la, double lo) async {
    final response = await http.get(Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$la,$lo&key=AIzaSyCYY4ONLxyCkQkueOWSlu4TjuyCH3QNkQ8',),);

    if (response.statusCode == 200) {
      // Successful response
      final jsonResponse = json.decode(response.body);
      final results = jsonResponse['results'];
      if (results.isEmpty) {
        return;
      }
      final location = results[0]['geometry']['location'];
      if (location != null) {
        final lati = location['lat'];
        final longi = location['lng'];
        // widget.lat(lati.toString());
        // widget.log(longi.toString());
        // Use the latitude and longitude to display a marker on the map
        // var marker = Marker(
        //   markerId: MarkerId('Commune Location'),
        //   position: LatLng(latitude, longitude),
        //   // infoWindow: InfoWindow(title: communeName),
        // );
        final List ls = jsonResponse['results'];
        List ac;
        for (int j = 0; j < ls.length; j++) {
          ac = jsonResponse['results'][j]['address_components'];
          for (int i = 0; i < ac.length; i++) {
            if (jsonResponse['results'][j]['address_components'][i]['types']
                    [0] ==
                "administrative_area_level_3") {
              setState(() {
                commune = (jsonResponse['results'][j]['address_components'][i]
                    ['short_name']);
                //widget.commune(jsonResponse['results'][j]['address_components'][i]
                //    ['short_name']);
              });
            }
            if (jsonResponse['results'][j]['address_components'][i]['types']
                    [0] ==
                "administrative_area_level_2") {
              setState(() {
                district = (jsonResponse['results'][j]['address_components'][i]
                    ['short_name']);
                //widget.district(jsonResponse['results'][j]['address_components']
                //    [i]['short_name']);
              });
            }
            // if (jsonResponse['results'][j]['address_components'][i]['types'][0] ==
            //     "administrative_area_level_1") {
            //   setState(() {
            //     widget.province(jsonResponse['results'][j]['address_components']
            //         [i]['short_name']);
            //   });
            // }
          }
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('sangkat = $commune / khan = $district'),
          ),
        );
      }
    } else {
      // Error or invalid response
      // print(response.statusCode);
    }
  }

  var commune, district;

  List list = [];
  void Clear() {
    setState(() {
      for (var i = 0; i < list.length; i++) {
        final MarkerId markerId = MarkerId('$i');
        listMarkerIds.remove(markerId);
      }
    });
  }

  final Set<Marker> marker = Set(); //163
}
