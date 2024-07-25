import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../exports.dart';
import '../models/property_model.dart';
import '../widgets/auth_wrapper_widget.dart';

class PropertyDetailPage extends ConsumerStatefulWidget {
  const PropertyDetailPage({super.key, required this.data});
  final PropertyModel data;

  @override
  PropertyDetailPageState createState() => PropertyDetailPageState();
}

class PropertyDetailPageState extends ConsumerState<PropertyDetailPage> {
  final Set<Marker> _markers = {};
  final CarouselController _carouselController = CarouselController();
  int _currentImageIndex = 0;

  @override
  void initState() {
    super.initState();
    _markers.add(
      Marker(
        markerId: const MarkerId('property'),
        position: LatLng(widget.data.latitude, widget.data.longitude),
        infoWindow: InfoWindow(title: widget.data.title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future<void> makePhoneCall(String url) async {
      // ignore: deprecated_member_use
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    }

    return AuthWrapperWidget(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: _buildImageCarousel(),
              ),
              pinned: true,
              floating: false,
              title: const Text(
                'Property Detail',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              leading: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: _buildPropertyInfo(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: _buildFeatures(),
              ),
            ),
            SliverToBoxAdapter(
              child: _buildDescription(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: _buildMap(),
              ),
            ),
            SliverToBoxAdapter(
              child: _buildContactInfo(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageCarousel() {
    return Stack(
      children: [
        CarouselSlider(
          items: widget.data.images.map((image) {
            return CachedNetworkImage(
              width: double.infinity,
              imageUrl: image,
              fit: BoxFit.cover,
            );
          }).toList(),
          carouselController: _carouselController,
          options: CarouselOptions(
            height: MediaQuery.sizeOf(context).width,
            viewportFraction: 1,
            enlargeCenterPage: false,
            autoPlay: true,
            onPageChanged: (index, _) =>
                setState(() => _currentImageIndex = index),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              '${_currentImageIndex + 1}/${widget.data.images.length}',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPropertyInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.data.listingType.name.capitalize(),
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            widget.data.title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            '\$${widget.data.price}',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.green),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatures() {
    return Card.outlined(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildFeatureItem(Icons.layers, '${widget.data.floors}', 'Floor'),
            _buildFeatureItem(Icons.bed, '${widget.data.bedrooms}', 'Bed'),
            _buildFeatureItem(
                Icons.bathtub, '${widget.data.bathrooms}', 'Bath'),
            _buildFeatureItem(
                Icons.weekend, '${widget.data.livingRooms}', 'Living'),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, size: 30),
        const SizedBox(height: 4),
        Text('$value $label', style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }

  Widget _buildDescription() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          ReadMoreText(
            widget.data.description,
            trimLines: 3,
            colorClickableText: Theme.of(context).primaryColor,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildMap() {
    return SizedBox(
      height: 200,
      child: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.data.latitude, widget.data.longitude),
          zoom: 15,
        ),
        markers: _markers,
        onTap: _showLocationDetails,
      ),
    );
  }

  Widget _buildContactInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          ListTile(
            leading: const Icon(Icons.phone),
            title: Text(widget.data.user.phone),
            // onTap: () => _makePhoneCall('tel:${widget.data.user.phone}'),
          ),
        ],
      ),
    );
  }

  void _showLocationDetails(LatLng latLng) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Location Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Latitude: ${latLng.latitude}'),
              Text('Longitude: ${latLng.longitude}'),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  // Future<void> _makePhoneCall(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}
