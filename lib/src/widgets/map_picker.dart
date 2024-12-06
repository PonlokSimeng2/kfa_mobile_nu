import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:kfa_mobile_nu/exports.dart';

class MapPickerPage extends HookConsumerWidget {
  const MapPickerPage._({this.initialPosition});

  static Future<LatLng?> show(
    BuildContext context, {
    required double? initialLat,
    required double? initialLng,
  }) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MapPickerPage._(
          initialPosition: LatLng(initialLat ?? 0, initialLng ?? 0),
        ),
      ),
    );
  }

  final LatLng? initialPosition;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final latLn = useState(initialPosition ?? const LatLng(0, 0));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 20, 163),
        centerTitle: true,
        title: const Text("KFA's Map"),
        leading: IconButton(
          icon: const Icon(Icons.check),
          onPressed: () {
            Navigator.pop(context, latLn.value);
          },
        ),
      ),
      body: MapPicker(
        initialPosition: latLn.value,
        onPick: (LatLng latLng) {
          latLn.value = latLng;
        },
      ),
    );
  }
}

class MapPicker extends ConsumerStatefulWidget {
  const MapPicker({
    super.key,
    required this.initialPosition,
    this.onPick,
    this.circle,
    this.reflectCircleZoom = true,
  });

  final void Function(LatLng latLng)? onPick;
  final LatLng initialPosition;
  final Circle? circle;
  final bool reflectCircleZoom;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MapPickerState();
}

class _MapPickerState extends ConsumerState<MapPicker> {
  GoogleMapController? _mapController;
  double _zoom = 16;
  CameraPosition _currentPosition =
      const CameraPosition(target: LatLng(0, 0), zoom: 16);
  Circle? _circle;
  TextEditingController searchMap = TextEditingController();
  List listMap = [];
  double h = 0;
  var commune, district;
  double latitude = 11.519037; //latitude
  double longitude = 104.915120;
  bool searchGoogle = false;
  final Set<Marker> _marker = new Set();
  String? _currentAddress;
  LatLng latLng = LatLng(11.519037, 104.915120);
  GoogleMapController? mapController;
  CameraPosition? cameraPosition;
  @override
  void initState() {
    super.initState();
    _getCurrentPosition();
    _circle = widget.circle;

    if (_circle != null) {
      _zoom = getZoomLevel(_circle!.radius);
    }

    _currentPosition = CameraPosition(
      target: widget.initialPosition,
      zoom: _zoom,
    );
  }

  double getZoomLevel(double radius) {
    double zoomLevel = 16;
    if (radius > 0) {
      final double radiusElevated = radius + radius / 2;
      final double scale = radiusElevated / 500;
      zoomLevel = (16 - log(scale) / log(2)) - 0.4;
    }
    zoomLevel = double.parse(zoomLevel.toStringAsFixed(2));
    return zoomLevel;
  }

  Future<void> mainsearch() async {
    final response = await http.get(
      Uri.parse(
        'https://www.oneclickonedollar.com/laravel_kfa_2023/public/api/search/place/map?query=${searchMap.text}',
      ),
    );
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

  @override
  void didUpdateWidget(covariant MapPicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.circle != widget.circle) {
      _circle = widget.circle;
      if (_circle != null) {
        if (widget.reflectCircleZoom) {
          _zoom = getZoomLevel(_circle!.radius);
          _moveToCoordinate(
            latitude: _currentPosition.target.latitude,
            longitude: _currentPosition.target.longitude,
          );
        }
      }
    }
  }

  void _moveToCoordinate({
    required double? latitude,
    required double? longitude,
  }) {
    if (latitude == null || longitude == null) {
      return;
    }

    _mapController!.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(latitude, longitude),
          zoom: _zoom,
        ),
      ),
    );
  }

  void _onCameraIdle() {
    widget.onPick?.call(_currentPosition.target);
  }

  void _onCameraMove(CameraPosition cameraPosition) {
    _currentPosition = cameraPosition;
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Location services are disabled. Please enable the services',
          ),
        ),
      );
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Location permissions are denied')),
        );
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Location permissions are permanently denied, we cannot request permissions.',
          ),
        ),
      );
      return false;
    }
    return true;
  }

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
      position.latitude,
      position.longitude,
    ).then((List<Placemark> placemarks) {
      final Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
            '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
        latitude = position.latitude;
        longitude = position.longitude;
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

  Future<void> Find_by_piont(double la, double lo) async {
    final response = await http.get(
      Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$la,$lo&key=AIzaSyCYY4ONLxyCkQkueOWSlu4TjuyCH3QNkQ8',
      ),
    );

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
      mapController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: latLng, zoom: 17),
        ),
      );
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

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                      color: Color.fromARGB(0, 168, 168, 168),
                      width: 5.0,
                    ),
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
                      color: Color.fromARGB(0, 168, 168, 168),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0.0, vertical: 1),
                  hintStyle: TextStyle(
                    color: Colors.grey[850],
                    fontSize: MediaQuery.of(context).textScaleFactor * 0.04,
                  ),
                  fillColor:
                      Colors.grey[400], // Added to set background color to grey
                  filled: true, // Added to set background color to grey
                ),
              ),
            ),
            Expanded(
              // child: Positioned.fill(
              child: Stack(
                children: [
                  (latitude != 0)
                      ? GoogleMap(
                          initialCameraPosition: _currentPosition,
                          myLocationButtonEnabled: true,
                          myLocationEnabled: true,

                          onCameraIdle: _onCameraIdle,
                          onCameraMove: _onCameraMove,
                          onMapCreated: (GoogleMapController controller) {
                            mapController = controller;
                          },
                          // onCameraMove: (CameraPosition cameraPositiona) {
                          //   cameraPosition =
                          //       cameraPositiona; //when map is dragging
                          // },
                          // void _onCameraMove(CameraPosition cameraPosition) {
                          //   _currentPosition = cameraPosition;
                          // }
                          //                         // markers: Set.from(_marker),
                          zoomGesturesEnabled: true,
                          circles: _circle != null ? {widget.circle!} : {},
                          mapType: MapType.hybrid,
                          onTap: (argument) {
                            setState(() {
                              print('lat : ${argument.latitude}');
                              print('long : ${argument.longitude}');
                            });
                            searchMap.clear();
                            listMap = [];
                          },
                        )
                      : Center(
                          child: Text('Error'),
                        )
                ],
              ),
              // child: GoogleMap(
              //   initialCameraPosition: _currentPosition,
              //   onMapCreated: (controller) => _mapController = controller,
              //   onCameraIdle: _onCameraIdle,
              //   onCameraMove: _onCameraMove,
              //   mapType: MapType.hybrid,
              //   myLocationEnabled: true,
              //   circles: _circle != null ? {widget.circle!} : {},
              // ),
            ),
            // ),
          ],
        ),
        // const Positioned.fill(
        //   child: Center(
        //     child: Padding(
        //       padding: EdgeInsets.only(bottom: 32),
        //       child: Icon(Icons.location_on, size: 50, color: Colors.red),
        //     ),
        //   ),
        // ),
        Positioned.fill(
          top: 60,
          child: (listMap.isEmpty || searchGoogle)
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Icon(Icons.location_on, size: 50, color: Colors.red),
                  ),
                )
              : Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 300),
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
                                      location['lat'].toString(),
                                    ),
                                    double.parse(
                                      location['lng'].toString(),
                                    ),
                                  );
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
        )
      ],
    );
  }
}
