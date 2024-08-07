import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kfa_mobile_nu/constaints.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kfa_mobile_nu/src/providers/theme_provider.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContactUsPage extends ConsumerStatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends ConsumerState<ContactUsPage> {
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  final Set<Marker> _markers = {};
  late BitmapDescriptor mapMarker;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
  }

  void setCustomMarker() async {
    mapMarker = await BitmapDescriptor.defaultMarker;
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(11.518936, 104.934026),
          icon: mapMarker,
          infoWindow: InfoWindow(
            title: "Khmer Foundation Appraisal Co., Ltd",
            snippet: "Real estate agent",
          ),
        ),
      );
    });
  }

  final String contactInfo = "Khmer Foundation Appraisals (KFA) Co., Ltd\n"
      "Head Office: #36A, St.04 Borey Peng Hourt The Star Natural. Sangkat Chakangre Leu, Khan Meanchey, Phnom Penh.\n\n"
      "Hotlines:\n"
      "(855) 77 216 168\n"
      "(855) 23 999 855\n"
      "(855) 23 988 911\n\n"
      "Email: info@kfa.com.kh";

  @override
  Widget build(BuildContext context) {
    final isDarkMode = ref.watch(themeProvider) == ThemeMode.dark;

    return AuthWrapperWidget(
      child: Scaffold(
        backgroundColor:
            isDarkMode ? Colors.grey[900] : Color.fromARGB(235, 7, 9, 145),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left_outlined,
              size: 40,
              color: Colors.white,
            ),
          ),
          backgroundColor:
              isDarkMode ? Colors.grey[800] : Color.fromARGB(235, 7, 9, 145),
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Contact Us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          toolbarHeight: 70,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: isDarkMode ? Colors.grey[800] : kBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: double.infinity,
                maxHeight: double.infinity,
              ),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: isDarkMode ? Colors.grey[800] : kBackgroundColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSection("Contact Information", contactInfo, isDarkMode),
                  SizedBox(height: 15),
                  Text(
                    "Our Location",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.lightBlue),
                    ),
                    child: GoogleMap(
                      mapType: MapType.hybrid,
                      onMapCreated: _onMapCreated,
                      markers: _markers,
                      initialCameraPosition: const CameraPosition(
                        target: LatLng(11.518936, 104.934026),
                        zoom: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isDarkMode ? Colors.blue[700] : Colors.blue,
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.directions, color: Colors.white),
                        SizedBox(width: 10),
                        Text('Get Direction in Map'),
                      ],
                    ),
                    onPressed: () async {
                      const String googleMapUrl =
                          "https://www.google.com/maps/d/viewer?mid=1Q4igXdd9aAegzPzyN7t9jvSAaat4uBMx&hl=en&ll=11.518657300000022%2C104.9172223&z=17";
                      if (await canLaunch(googleMapUrl)) {
                        await launch(googleMapUrl,
                            forceSafariVC: false, forceWebView: false);
                      } else {
                        throw 'Could not launch $googleMapUrl';
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Find out more about KFA:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSocialIcon('assets/images/Facebook_Logo.png',
                          "https://www.facebook.com/kfa.com.kh/"),
                      _buildSocialIcon('assets/images/twitter-logo.png',
                          "https://twitter.com/KFA_Cambodia"),
                      _buildSocialIcon(
                          'assets/images/LinkedIn_icon_circle.svg.png',
                          "https://www.linkedin.com/company/khmerfoundationappraisal/"),
                      _buildSocialIcon(
                          'assets/images/YouTube_full-color_icon_(2017).svg.webp',
                          ""),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, String text, bool isDarkMode) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        ReadMoreText(
          text,
          trimLines: 6,
          textAlign: TextAlign.justify,
          trimMode: TrimMode.Line,
          trimCollapsedText: " Read more ",
          trimExpandedText: " Show less ",
          style: TextStyle(
            fontSize: 15,
            color: isDarkMode ? Colors.grey[400] : Colors.black54,
          ),
        ),
        const SizedBox(height: 15),
        const Divider(color: Colors.blueAccent, thickness: 0.5),
      ],
    );
  }

  Widget _buildSocialIcon(String asset, String url) {
    return IconButton(
      icon: Image.asset(asset),
      iconSize: 40,
      onPressed: () async {
        if (url.isNotEmpty && await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView);
        }
      },
    );
  }
}
