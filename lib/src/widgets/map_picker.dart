import 'dart:math';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kfa_mobile_nu/src/helpers/build_context_helper.dart';

import '../../../exports.dart';

class MapPickerPage extends HookConsumerWidget {
  const MapPickerPage._({super.key, this.initialPosition});

  static Future<LatLng?> show(
    BuildContext context, {
    required double? initialLat,
    required double? initialLng,
  }) async {
    return await context.push(
      (_) => MapPickerPage._(
        initialPosition: LatLng(initialLat ?? 0, initialLng ?? 0),
      ),
    );
  }

  final LatLng? initialPosition;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final latLn = useState(initialPosition ?? LatLng(0, 0));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 20, 163),
        centerTitle: true,
        title: const Text("KFA's Map"),
        leading: IconButton(
          icon: Icon(Icons.check),
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

  /// If true, the map will zoom in to the circle radius
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

  @override
  initState() {
    super.initState();
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
      double radiusElevated = radius + radius / 2;
      double scale = radiusElevated / 500;
      zoomLevel = (16 - log(scale) / log(2)) - 0.4;
    }
    zoomLevel = double.parse(zoomLevel.toStringAsFixed(2));
    return zoomLevel;
  }

  // Update widget if the initial position changes
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

  _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GoogleMap(
            initialCameraPosition: _currentPosition,
            onMapCreated: _onMapCreated,
            onCameraIdle: _onCameraIdle,
            onCameraMove: _onCameraMove,
            mapType: MapType.hybrid,
            myLocationEnabled: true,
            circles: _circle != null ? {widget.circle!} : {},
          ),
        ),
        const Positioned.fill(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Icon(Icons.location_on, size: 50, color: Colors.red),
            ),
          ),
        )
      ],
    );
  }
}
