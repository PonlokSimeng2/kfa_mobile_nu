import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:kfa_mobile_nu/src/pages/home_page.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'exports.dart';
import 'firebase_options.dart';
import 'provider_observers.dart';
import 'src/providers/cache_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("4c477f3d-2679-457e-87b0-57808114f822");
  OneSignal.Notifications.requestPermission(true);

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
        colorScheme: ColorScheme.fromSeed(seedColor: kwhite_new),
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
      home: const HomePage(),
      //home: const AutoVerbalListPage(),
      // home: PropertyListPage(),
      builder: BotToastInit(),
    );
  }
}
