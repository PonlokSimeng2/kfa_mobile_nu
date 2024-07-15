import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
  @override
  void initState() {
    super.initState();
    // "ref" can be used in all life-cycles of a StatefulWidget.
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
        // appBar: AppBar(
        //   leading: InkWell(
        //       onTap: () {
        //         Navigator.pop(context);
        //       },
        //       child: Icon(Icons.backspace_outlined, color: Colors.black)),
        //   backgroundColor: Colors.white,
        //   centerTitle: true,
        //   title: const Text(
        //     "Properties",
        //     style: TextStyle(color: Colors.black),
        //   ),
        // ),
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  // const SizedBox(
                  //   height: 30,
                  // ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(54, 15, 179, 204),
                        border: Border.all(),
                      ),
                      child: CarouselSlider(
                        items: [
                          Image.network(
                            widget.data.images[0],
                            fit: BoxFit.fill,
                          ),
                          // Image.network(
                          //   widget.data.images[0],
                          //   fit: BoxFit.fit,
                          // ),
                        ].map((e) {
                          return ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                e,
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0),
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10.0,
                                      horizontal: 20.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        options: CarouselOptions(
                          autoPlay: false,
                          viewportFraction: 1,
                          enlargeFactor: 0.3,
                          enlargeCenterPage: true,
                          aspectRatio: 1.8,
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
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.start,
                                      //   children: [
                                      //     Text(
                                      //       widget.data.title.toString(),
                                      //     ),
                                      //   ],
                                      // )
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
                                        0.1,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          child: Column(
                                            children: [
                                              const Icon(
                                                Icons.bathtub,
                                                size: 45,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '${widget.data.floors}',
                                                    style: textstyleblackbold,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'Floor',
                                                    style: textstyleblackbold,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          // color: Colors.amber,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          child: Column(
                                            children: [
                                              const Icon(
                                                Icons.bed,
                                                size: 45,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '${widget.data.bedrooms}',
                                                    style: textstyleblackbold,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'Bed',
                                                    style: textstyleblackbold,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          //color: Colors.amber,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          child: Column(
                                            children: [
                                              const Icon(
                                                Icons.bathtub,
                                                size: 45,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '${widget.data.bathrooms}',
                                                    style: textstyleblackbold,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'Bath',
                                                    style: textstyleblackbold,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        SizedBox(
                                          // color: Colors.amber,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          child: Column(
                                            children: [
                                              const Icon(
                                                Icons.bathtub,
                                                size: 45,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '${widget.data.livingRooms}',
                                                    style: textstyleblackbold,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'Living Room',
                                                    style: textstyleblackbold,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
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
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 320,
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
            Positioned(
              top: 20,
              left: 5,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 185, 43, 43),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 30,
                  width: 50,
                  child: const Icon(
                    weight: 100.0,
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
