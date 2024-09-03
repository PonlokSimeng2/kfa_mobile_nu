import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:kfa_mobile_nu/src/pages/create_new_password_page.dart';
import 'package:kfa_mobile_nu/src/pages/home_page.dart';
import 'package:kfa_mobile_nu/src/providers/auto_verbal_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'exports.dart';
import 'firebase_options.dart';
import 'provider_observers.dart';
import 'src/providers/auth_provider.dart';
import 'src/providers/cache_provider.dart';
import 'src/providers/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (!kIsWeb) {
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    OneSignal.initialize("4c477f3d-2679-457e-87b0-57808114f822");
    OneSignal.Notifications.requestPermission(true);
  }

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

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  RealtimeChannel? _autoVerbalChannel;
  RealtimeChannel? _notificationChannel;
  RealtimeChannel? _propertyChannel;

  @override
  void dispose() {
    _notificationChannel?.unsubscribe();
    _autoVerbalChannel?.unsubscribe();
    _propertyChannel?.unsubscribe();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );

    _initializeSupabaseRealtime();
    _listenAdminNotificationOnWeb();
  }

  void _listenAdminNotificationOnWeb() {
    if (!kIsWeb) return;

    final sb = ref.read(supabaseProvider);
    _notificationChannel = sb.client
        .channel('public:notifications')
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: 'notifications',
          callback: (payload) {
            final isAdmin = ref.read(isAdminProvider);
            if (context.mounted && isAdmin) {
              final title = payload.newRecord['title'];
              final message = payload.newRecord['message'];
              BotToast.showSimpleNotification(
                title: title,
                subTitle: message,
              );
            }
          },
        )
        .subscribe();
  }

  void _initializeSupabaseRealtime() {
    final sb = ref.read(supabaseProvider);
    _autoVerbalChannel = sb.client
        .channel('public:auto_verbals')
        .onPostgresChanges(
          event: PostgresChangeEvent.all,
          schema: 'public',
          table: 'auto_verbals',
          callback: (payload) {
            final isAdmin = ref.read(isAdminProvider);
            if (isAdmin) {
              ref.invalidate(autoVerbalListProvider);
            } else {
              final newUserId = payload.newRecord['user_id'];
              final userId = ref.read(authProvider);
              if (newUserId == userId) {
                ref.invalidate(autoVerbalListProvider);
                ref.invalidate(autoVerbalDetailProvider);
              }
            }
          },
        )
        .subscribe();

    _propertyChannel = sb.client
        .channel('public:properties')
        .onPostgresChanges(
          event: PostgresChangeEvent.all,
          schema: 'public',
          table: 'properties',
          callback: (payload) {
            final isAdmin = ref.read(isAdminProvider);
            if (isAdmin) {
              ref.invalidate(propertyListProvider);
            } else {
              final newUserId = payload.newRecord['user_id'];
              final userId = ref.read(authProvider);
              if (newUserId == userId) {
                ref.invalidate(propertyListProvider);
              }
            }
          },
        )
        .subscribe();
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(appThemeModeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorObservers: [BotToastNavigatorObserver()],
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: const AppBarTheme(
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: kImageColor,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        primaryColor: Colors.blue[700],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        listTileTheme: ListTileThemeData(
          iconColor: Colors.blue[300],
        ),
      ),
      themeMode: themeMode,
      home: const HomePage(),
      //home: const CreateNewPasswordPage(),
      builder: BotToastInit(),
    );
  }
}
