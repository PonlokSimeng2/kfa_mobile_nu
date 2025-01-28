import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math';

class DeliveryMapScreen extends StatefulWidget {
  @override
  _DeliveryMapScreenState createState() => _DeliveryMapScreenState();
}

class _DeliveryMapScreenState extends State<DeliveryMapScreen> {
  // Google Map controller
  late GoogleMapController _mapController;

  // Initial camera position
  final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962), // Default location
    zoom: 14.0,
  );

  // Markers for delivery points
  final Set<Marker> _markers = {};

  // Polylines for the delivery route
  final Set<Polyline> _polylines = {};

  // List of points for the polyline
  List<LatLng> _polylinePoints = [];

  // Total distance of the delivery route
  double _totalDistance = 0.0;

  // Function to calculate distance between two LatLng points using the Haversine formula
  double _calculateDistance(LatLng start, LatLng end) {
    const double earthRadius = 6371000; // Earth's radius in meters
    double lat1 = start.latitude * pi / 180;
    double lon1 = start.longitude * pi / 180;
    double lat2 = end.latitude * pi / 180;
    double lon2 = end.longitude * pi / 180;

    double dLat = lat2 - lat1;
    double dLon = lon2 - lon1;

    double a = sin(dLat / 2) * sin(dLat / 2) +
        cos(lat1) * cos(lat2) * sin(dLon / 2) * sin(dLon / 2);
    double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return earthRadius * c;
  }

  // Function to handle map taps
  void _onMapTap(LatLng position) {
    setState(() {
      // Add a marker at the tapped location
      _markers.add(
        Marker(
          markerId: MarkerId(position.toString()),
          position: position,
          infoWindow:
              InfoWindow(title: 'Delivery Point ${_markers.length + 1}'),
        ),
      );

      // Add the tapped point to the polyline points
      _polylinePoints.add(position);

      // Update the polyline
      _updatePolyline();

      // Calculate the total distance
      if (_polylinePoints.length > 1) {
        _totalDistance += _calculateDistance(
            _polylinePoints[_polylinePoints.length - 2], position);
      }
    });
  }

  // Function to update the polyline
  void _updatePolyline() {
    _polylines.clear();
    _polylines.add(
      Polyline(
        polylineId: PolylineId('delivery_route'),
        points: _polylinePoints,
        color: Colors.blue,
        width: 5,
      ),
    );
  }

  // Function to clear the map
  void _clearMap() {
    setState(() {
      _markers.clear();
      _polylines.clear();
      _polylinePoints.clear();
      _totalDistance = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delivery Map')),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
            },
            onTap: _onMapTap, // Handle map taps
            initialCameraPosition: _initialCameraPosition,
            markers: _markers, // Add markers
            polylines: _polylines, // Add polyline
            mapType: MapType.hybrid,
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: _clearMap,
              child: Icon(Icons.clear),
              tooltip: 'Clear Map',
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                'Total Distance: ${(_totalDistance / 1000).toStringAsFixed(2)} km',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
