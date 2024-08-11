import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kfa_mobile_nu/src/models/property_model.schema.dart';
import 'package:kfa_mobile_nu/src/pages/property_comment.dart';
import 'package:kfa_mobile_nu/src/pages/property_like_badge.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:readmore/readmore.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../exports.dart';
import '../providers/favortie_provider.dart';
import '../widgets/auth_wrapper_widget.dart';

class PropertyDetailPage extends ConsumerStatefulWidget {
  const PropertyDetailPage({super.key, required this.data});
  final PropertyModel data;

  @override
  PropertyDetailPageState createState() => PropertyDetailPageState();
}

class PropertyDetailPageState extends ConsumerState<PropertyDetailPage> {
  final Set<Marker> _markers = {};
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

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _incrementViewCount();
    });
  }

  void _incrementViewCount() async {
    final myUserId = ref.read(authProvider);
    if (myUserId != null && myUserId == widget.data.userId) {
      return;
    }

    final increment = ref.read(incrementPropertyViewProvider(widget.data.id).notifier);
    await increment();
  }

  ScreenshotController screenshotController = ScreenshotController();
  final GlobalKey _globalKeyScreenShot = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return AuthWrapperWidget(
      child: Scaffold(
        body: Screenshot(
          controller: screenshotController,
          child: RepaintBoundary(
            key: _globalKeyScreenShot,
            child: CustomScrollView(
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
                  actions: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Consumer(
                        builder: (context, ref, child) {
                          final isFavorite = ref.watch(isFavoriteProvider(widget.data.id));
                          return IconButton(
                            icon: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              color: isFavorite ? Colors.red : Colors.white,
                            ),
                            onPressed: () {
                              final notifier = ref.read(favoritePropertyProvider.notifier);
                              if (isFavorite) {
                                notifier.removeFromFavorite(widget.data.id);
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Removed from favorites'),
                                  ),
                                );
                              } else {
                                notifier.markAsFavorite(widget.data.id);
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Added to favorites',
                                    ),
                                  ),
                                );
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ],
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
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: _buildMap(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: _buildContactInfo(),
                ),
                PropertyComment(propertyId: widget.data.id),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> shareImage(GlobalKey globalKey, context) async {
    try {
      final RenderRepaintBoundary boundary =
          globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      final ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      final Uint8List pngBytes = byteData!.buffer.asUint8List();
      final File imgFile = File('${(await getTemporaryDirectory()).path}/share.png');
      imgFile.writeAsBytesSync(pngBytes);
      final RenderBox box = context.findRenderObject() as RenderBox;
      Share.shareXFiles(
        [XFile(imgFile.path)],
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
      );
    } catch (e) {
      print(e);
    }
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
          options: CarouselOptions(
            height: MediaQuery.sizeOf(context).width,
            viewportFraction: 1,
            enlargeCenterPage: false,
            autoPlay: true,
            onPageChanged: (index, _) => setState(() => _currentImageIndex = index),
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
        Positioned(
          bottom: 10,
          left: 10,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.remove_red_eye, color: Colors.white, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      '${widget.data.viewCount}',
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              PropertyLikeBadge(property: widget.data),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap: () {
                    shareImage(_globalKeyScreenShot, context);
                  },
                  child: const Text(
                    'Share',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ),
            ],
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
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            widget.data.title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            '\$${widget.data.price}',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.green),
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
              Icons.bathtub,
              '${widget.data.bathrooms}',
              'Bath',
            ),
            _buildFeatureItem(
              Icons.weekend,
              '${widget.data.livingRooms}',
              'Living',
            ),
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
            onTap: () async {
              launchUrl(Uri.parse('tel:${widget.data.user.phone}'));
            },
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
}
