import 'package:flutter/foundation.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:kfa_mobile_nu/src/pages/add_property_page.dart';
import 'package:kfa_mobile_nu/src/pages/favorite_list_page.dart';
import 'package:kfa_mobile_nu/src/pages/my_property_page.dart';
import 'package:kfa_mobile_nu/src/pages/report_main_page.dart';
import 'package:kfa_mobile_nu/src/pages/setting_page.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/app_logo.dart';

import '../../exports.dart';
import '../../gen/assets.gen.dart';
import '../providers/user_provider.dart';
import 'admin/admin_home_page.dart';
import 'property_list_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(currentUserProvider);

    // by default web only for admin
    if (kIsWeb) {
      return const _AdminHome();
    }

    return userAsync.onData(
      (user) {
        if (user == null || user.isAdmin == false) {
          return const _UserHome();
        }

        return const _AdminHome();
      },
      errorWidget: (error, stackTrace) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('An error occurred'),
                ElevatedButton(
                  onPressed: () {
                    ref.read(authProvider.notifier).signOut();
                  },
                  child: const Text('Sign Out'),
                ),
              ],
            ),
          ),
        );
      },
      loadingWidget: () {
        return _buildLoadingScreen();
      },
    );
  }

  Scaffold _buildLoadingScreen() {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.images.kFALogo.image(
              width: 200,
              height: 200,
            ),
            const SizedBox(
              width: 100,
              child: LinearProgressIndicator(),
            ),
          ],
        ),
      ),
    );
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
      child: Builder(
        builder: (context) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.add_to_photos_sharp),
                      title: const Text('Add Property'),
                      onTap: () {
                        context.push((context) => const AddPropertyPage());
                        Scaffold.of(context).closeDrawer();
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.compare_sharp),
                      title: const Text('My Properties'),
                      onTap: () {
                        context.push(
                          (context) => const MyPropertyPage(),
                        );
                        Scaffold.of(context).closeDrawer();
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.favorite),
                      title: const Text('Favorite'),
                      onTap: () {
                        context.push((context) => const FavoriteListPage());
                        Scaffold.of(context).closeDrawer();
                      },
                    ),
                    ListTile(
                      leading:
                          const Icon(Icons.format_list_numbered_rtl_rounded),
                      title: const Text('Report'),
                      onTap: () {
                        context.push((context) => const ReportMainPage());
                        Scaffold.of(context).closeDrawer();
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Setting'),
                      onTap: () {
                        context.push((context) => const SettingPage());
                        Scaffold.of(context).closeDrawer();
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const AppLogo(),
      backgroundColor: context.isDarkMode ? Colors.grey[900] : kPrimaryColor,
    );
  }

  Container _buildBanner() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(54, 15, 179, 204),
        border: Border.all(),
      ),
      child: FlutterCarousel(
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
      backgroundColor: kPrimaryColor,
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
