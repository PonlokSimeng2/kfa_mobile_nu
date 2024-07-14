import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  late LatLng _currentPosition;
  List<LatLng> polygonCoordinates = [];
  Set<Polygon> polygons = {};
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller) {}
  void _onTap(LatLng point) async {
    setState(() {
      _markers.clear(); // Clear existing markers
      _markers.add(Marker(
        markerId: const MarkerId('selected-location'),
        position: _currentPosition,
        infoWindow: InfoWindow(
          title: 'Selected Location',
          snippet: 'Latitude: ${point.latitude}, Longitude: ${point.longitude}',
        ),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: GoogleMap(
        myLocationEnabled: true,
        mapType: MapType.hybrid,
        onMapCreated: _onMapCreated,
        initialCameraPosition: const CameraPosition(
          target: LatLng(11.575661, 104.922725), // Initial position
          zoom: 10,
        ),
        markers: _markers,
        onTap: _onTap,
      ),
    );
  }
}
