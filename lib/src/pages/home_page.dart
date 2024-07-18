import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../exports.dart';
import '../../gen/assets.gen.dart';
import '../helpers/build_context_helper.dart';
import '../providers/auth_provider.dart';
import '../providers/user_provider.dart';
import 'account_page.dart';
import 'add_property_page.dart';
import 'admin/admin_home_page.dart';
import 'contact_us_page.dart';
import 'property_list_page.dart';
import 'report_verbal_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(currentUserProvider);

    return userAsync.onData((user) {
      if (user == null || user.isAdmin == false) {
        return const _UserHome();
      }

      return const _AdminHome();
    });
  }
}

class _AdminHome extends ConsumerWidget {
  const _AdminHome();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const AdminHomePage();
  }
}

class _UserHome extends ConsumerStatefulWidget {
  const _UserHome();

  @override
  ConsumerState<_UserHome> createState() => __UserHomeState();
}

class __UserHomeState extends ConsumerState<_UserHome> {
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      width: 270,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('Account'),
            onTap: () {
              context.push((context) => const AccountPage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_to_photos_sharp),
            title: const Text('Add Auto Verbal'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.compare_sharp),
            title: const Text('Sale & Rent Property'),
            onTap: () {
              context.push(
                (context) => AddPropertyPage(),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.format_list_numbered_rtl_rounded),
            title: const Text('Report'),
            onTap: () {
              context.push((context) => const ReportVerbalPage());
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.money_off),
          //   title: const Text('Top Up'),
          //   onTap: () {},
          // ),
          ListTile(
            leading: const Icon(Icons.contact_phone),
            title: const Text('Contact Us'),
            onTap: () {
              context.push((context) => const ContactUsPage());
            },
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () async {
            ref.read(authProvider.notifier).signUp(
                  email: 'long@gmail.com',
                  password: '123456',
                  photo: null,
                  firstName: 'Kim',
                  lastName: 'Long',
                  phone: '081553000',
                );
          },
          icon: const Icon(Icons.person_add),
        ),
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Assets.images.kFALogo.image(
            width: 55,
            height: 55,
          ),
          DefaultTextStyle(
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'MOBILE  ',
                  textAlign: TextAlign.center,
                  textStyle: const TextStyle(color: Colors.white),
                ),
              ],
              pause: const Duration(milliseconds: 300),
              isRepeatingAnimation: true,
              repeatForever: true,
              onTap: () {},
            ),
          ),
          DefaultTextStyle(
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  '',
                  textAlign: TextAlign.center,
                  textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.yellow,
                        offset: Offset(1.5, 1.5),
                      ),
                    ],
                  ),
                ),
              ],
              pause: const Duration(milliseconds: 300),
              isRepeatingAnimation: true,
              repeatForever: true,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Container _buildBanner() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(54, 15, 179, 204),
        border: Border.all(),
      ),
      child: CarouselSlider(
        items: [
          Assets.images.banners.bannerKFA.image(fit: BoxFit.cover),
          Assets.images.banners.awards2020s.image(fit: BoxFit.cover),
        ].map((e) {
          return ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
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
          autoPlay: true,
          viewportFraction: 1,
          enlargeFactor: 0.3,
          enlargeCenterPage: true,
          aspectRatio: 1.8,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: _buildDrawer(context),
      backgroundColor: kwhite_new,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBanner(),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(3.0),
              child: PropertyListPage(),
            ),
          ),
        ],
      ),
    );
  }
}
