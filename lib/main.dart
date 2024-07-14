import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/provider_observers.dart';
import 'package:kfa_mobile_nu/src/pages/account_page.dart';
import 'package:kfa_mobile_nu/src/pages/add_property_page.dart';
import 'package:kfa_mobile_nu/src/pages/home_page.dart';
import 'package:kfa_mobile_nu/src/pages/login_page.dart';
import 'package:kfa_mobile_nu/src/pages/map_in_add_verbal_page%20copy.dart';
import 'package:kfa_mobile_nu/src/pages/map_in_add_verbal_page.dart';
import 'package:kfa_mobile_nu/src/pages/register_page.dart';
import 'package:kfa_mobile_nu/src/pages/testpickimagetest.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'src/providers/cache_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final sharePref = await SharedPreferences.getInstance();
  await initSupabase();

  await Kimapp.initialize(debugMode: kDebugMode);

  runApp(
    ProviderScope(
      overrides: [sharePrefProvider.overrideWithValue(sharePref)],
      observers: [ProviderLogger(), ProviderCrashlytics()],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kwhite_new,
        appBarTheme: const AppBarTheme(
          backgroundColor: kwhite_new,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: kImageColor,
        ),
      ),
      themeMode: ThemeMode.light,
      //home: TestPickImage(),
      home: const HomePage(),
      // home: AuthWrapperWidget(child: AddPropertyPage()),
      // home: Map_verbal_address_Sale_page(
      //   get_province: (value) {},
      //   get_district: (value) {},
      //   get_commune: (value) {},
      //   get_log: (value) {},
      //   get_lat: (value) {},
      // ),
      //home: GoogleMapScreen(),
      //home: AccountPage(),
      //home: RegisterPage(),
      //home: LoginPage(),
      builder: BotToastInit(),
    );
  }
}
