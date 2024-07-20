import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../exports.dart';
import '../models/property_model.dart';
import 'contact_us_page.dart';
import '../providers/auth_provider.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/auth_wrapper_widget.dart';

// ignore: camel_case_types, must_be_immutable
class PropertyDetailPage extends ConsumerStatefulWidget {
  PropertyDetailPage({super.key, required this.data});
  final PropertyModel data;
  @override
  HomeViewState createState() => HomeViewState();
}

var textstyleblackbold = const TextStyle(
    color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
var textstyleblack = const TextStyle(
  color: Colors.black,
  fontSize: 18,
);

class HomeViewState extends ConsumerState<PropertyDetailPage> {
  Set<Marker> markers = {};
  GoogleMapController? mapController;
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  void initState() {
    super.initState();
    // Add a marker for the property location
    markers.add(
      Marker(
        markerId: MarkerId('property'),
        position: LatLng(widget.data.latitude, widget.data.longitude),
        infoWindow: InfoWindow(title: widget.data.title),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authProvider.select((value) => value));
    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _makePhoneCall(String url) async {
      // ignore: deprecated_member_use
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    }

    return AuthWrapperWidget(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child:
                  Icon(Icons.keyboard_backspace_rounded, color: Colors.white)),
          backgroundColor: kwhite_new,
          centerTitle: true,
          title: const Text(
            "Property Detail",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(54, 15, 179, 204),
                        border: Border.all(),
                      ),
                      child: CarouselSlider(
                        items: widget.data.images.map((image) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }).toList(),
                        carouselController: _controller,
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height * 0.4,
                          viewportFraction: 1.0,
                          enlargeCenterPage: false,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${widget.data.listingType.name.capitalize()}',
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              widget.data.title,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 16,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 237, 232, 232),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        _buildFeatureItem(
                                          icon: Icons.layers,
                                          value: '${widget.data.floors}',
                                          label: 'Floor',
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        _buildFeatureItem(
                                          icon: Icons.bed,
                                          value: '${widget.data.floors}',
                                          label: 'Bed',
                                        ),
                                        const SizedBox(width: 10),
                                        _buildFeatureItem(
                                          icon: Icons.bathtub,
                                          value: '${widget.data.floors}',
                                          label: 'Bath',
                                        ),
                                        const SizedBox(width: 10),
                                        _buildFeatureItem(
                                          icon: Icons.weekend,
                                          value: '${widget.data.floors}',
                                          label: 'Living',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    // height: MediaQuery.of(context).size.height * 0.09,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Description',
                                          style: textstyleblackbold,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 4.0,
                                      left: 4.0,
                                    ),
                                    child: SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.13,
                                      child: SingleChildScrollView(
                                        reverse: false,
                                        child: ReadMoreText(
                                          widget.data.description,
                                          trimMode: TrimMode.Line,
                                          trimLines: 3,
                                          colorClickableText: Colors.pink,
                                          trimCollapsedText: 'Show more',
                                          trimExpandedText: 'Show less',
                                          moreStyle: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 200,
                              child: GoogleMap(
                                mapType: MapType.hybrid,
                                onMapCreated: _onMapCreated,
                                initialCameraPosition: CameraPosition(
                                  target: LatLng(widget.data.latitude,
                                      widget.data.longitude),
                                  zoom: 15,
                                ),
                                markers: markers,
                                onTap: (LatLng latLng) {
                                  _showLocationDetails(latLng);
                                },
                              ),
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Contact",
                                            style: textstyleblackbold,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        child: Container(
                                          height: 110,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          decoration: const BoxDecoration(
                                            //color: Colors.amber,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Hotline(
                                                onPress: () => setState(() {
                                                  _makePhoneCall(
                                                      'tel:${widget.data.user.phone}');
                                                }),
                                                icon: Icons.phone,
                                                phone:
                                                    '${widget.data.user.phone}',
                                              ),
                                              // Hotline(
                                              //   onPress: () => setState(() {
                                              //     _makePhoneCall(
                                              //       'tel:077 216 168',
                                              //     );
                                              //   }),
                                              //   icon: Icons.phone,
                                              //   phone: '(855) 77 216 168',
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 250,
              right: 5,
              child: Container(
                height: 30,
                width: 100,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 159, 111, 69),
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                child: Center(
                  child: Text(
                    "${widget.data.price} \$",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 17, 19, 20),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem({
    required IconData icon,
    required String value,
    required String label,
  }) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.22,
      child: Column(
        children: [
          Icon(icon, size: 45),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$value', style: textstyleblackbold),
              const SizedBox(width: 5),
              Text(label, style: textstyleblackbold),
            ],
          )
        ],
      ),
    );
  }

  void _showLocationDetails(LatLng latLng) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Location Details'),
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
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
