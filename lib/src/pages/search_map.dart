import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchMapPage extends StatefulWidget {
  const SearchMapPage({super.key});

  @override
  _SearchMapPageState createState() => _SearchMapPageState();
}

class _SearchMapPageState extends State<SearchMapPage> {
  final TextEditingController _addressController = TextEditingController();
  final Dio _dio = Dio();
  GoogleMapController? _mapController;
  final LatLng _initialCameraPosition = const LatLng(11.556471, 104.928555);
  final List<Marker> _markers = [];
  bool _isLoading = false;
  SharedPreferences? _prefs;
  final List<Polygon> _polygons = [];
  // Add new variables for autocomplete
  List<dynamic> _placesPredictions = [];
  Timer? _debounceTimer;
  bool _showPredictions = false;

  @override
  void initState() {
    super.initState();
    _initPrefs();
    _addressController.addListener(_onSearchChanged);
  }

  Future<void> _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Add debounced search for autocomplete
  void _onSearchChanged() {
    if (_debounceTimer?.isActive ?? false) _debounceTimer!.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      if (_addressController.text.length > 2) {
        _getPlacesPredictions(_addressController.text);
      } else {
        setState(() {
          _placesPredictions = [];
          _showPredictions = false;
        });
      }
    });
  }

  // New method to get place predictions
  Future<void> _getPlacesPredictions(String input) async {
    if (input.isEmpty) return;

    try {
      final response = await _dio.get(
        'https://maps.googleapis.com/maps/api/place/autocomplete/json',
        queryParameters: {
          'input': input,
          'key':
              'AIzaSyCGCz6uMqNF0uSRyyuMaWJIC1tnNcw4Y4k', // Replace with your API key
          'types': 'address',
        },
      );

      if (response.statusCode == 200) {
        setState(() {
          _placesPredictions = response.data['predictions'];
          _showPredictions = _placesPredictions.isNotEmpty;
        });
      }
    } catch (e) {
      debugPrint('Error getting place predictions: $e');
    }
  }

  // Modified to use Place Details API
  Future<void> _searchLocation(String placeId) async {
    if (placeId.isEmpty) {
      _showMessage('Please select an address', isError: true);
      return;
    }

    setState(() => _isLoading = true);

    try {
      final response = await _dio.get(
        'https://maps.googleapis.com/maps/api/place/details/json',
        queryParameters: {
          'place_id': placeId,
          'fields': 'geometry,formatted_address',
          'key':
              'AIzaSyCGCz6uMqNF0uSRyyuMaWJIC1tnNcw4Y4k', // Replace with your API key
        },
      ).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException('The request timed out');
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;

        if (data['status'] != 'OK') {
          _showMessage('Error: ${data['status']}', isError: true);
          return;
        }

        final location = data['result']['geometry']['location'];
        final lat = location['lat'] as double;
        final lng = location['lng'] as double;
        final formattedAddress = data['result']['formatted_address'] as String;

        setState(() {
          _markers.clear();
          _markers.add(
            Marker(
              markerId: const MarkerId('search_result'),
              position: LatLng(lat, lng),
              infoWindow: InfoWindow(
                title: 'Location',
                snippet: formattedAddress,
              ),
            ),
          );
          _showPredictions = false;
          _addressController.text = formattedAddress;
        });

        await _mapController?.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(lat, lng),
              zoom: 15.0,
            ),
          ),
        );

        _prefs?.setDouble('lat', lat);
        _prefs?.setDouble('lng', lng);

        _showMessage('Location found: $formattedAddress', isError: false);
      }
    } catch (e) {
      debugPrint('Error: $e');
      _showMessage('An unexpected error occurred', isError: true);
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  void _showMessage(String message, {required bool isError}) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: isError ? Colors.red : Colors.green,
          duration: const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Map'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    labelText: 'Enter Address',
                    border: const OutlineInputBorder(),
                    suffixIcon: _isLoading
                        ? const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(),
                          )
                        : IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              _addressController.clear();
                              setState(() {
                                _placesPredictions = [];
                                _showPredictions = false;
                              });
                            },
                          ),
                    hintText: 'Enter a location or address',
                  ),
                  enabled: !_isLoading,
                ),
                if (_showPredictions)
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _placesPredictions.length,
                      itemBuilder: (context, index) {
                        final prediction = _placesPredictions[index];
                        return ListTile(
                          title: Text(prediction['description']),
                          onTap: () {
                            _searchLocation(prediction['place_id']);
                          },
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                GoogleMap(
                  polygons: Set<Polygon>.of(_polygons),
                  mapType: MapType.hybrid,
                  initialCameraPosition: CameraPosition(
                    target: _initialCameraPosition,
                    zoom: 12.0,
                  ),
                  markers: Set<Marker>.of(_markers),
                  onMapCreated: (GoogleMapController controller) {
                    _mapController = controller;
                  },
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  zoomControlsEnabled: true,
                ),
                if (_isLoading)
                  const Center(
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _addressController.dispose();
    _mapController?.dispose();
    _debounceTimer?.cancel();
    super.dispose();
  }
}
