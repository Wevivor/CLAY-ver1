import 'dart:async';
import 'dart:convert';

import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_share/share_service.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kakao_login/flutter_kakao_login.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'c_config/config.dart';
import 'c_globals/helper/helpers.dart';
import 'c_page/app_routes.dart';
import 'c_page/auth_middle.dart';
import 'c_page/bott_navi_controller.dart';
import 'h_account/controllers/han_userinfo_controller.dart';
import 'h_account/controllers/login_controller.dart';
import 'h_account/controllers/push_controller.dart';
import 'h_account/controllers/push_list_controller.dart';
import 'h_account/controllers/remind_list_controller.dart';
import 'h_account/page/ui_push_list.dart';
import 'h_share/share_controller.dart';
import 'h_share/ui_share_service.dart';

Future<void> initFirebaseEmulator() async {
  const bool USE_EMULATOR = true;

  if (USE_EMULATOR) {
    // [Firestore | localhost:8080]
    // FirebaseFirestore.instance.settings = const Settings(
    //   host: '192.168.2.1:8080',
    //   sslEnabled: false,
    //   persistenceEnabled: false,
    // );

    // [Authentication | localhost:9099]
    await FirebaseAuth.instance.useEmulator('http://192.168.2.1:9099');

    // [Storage | localhost:9199]
    await FirebaseStorage.instance.useEmulator(
      host: '192.168.2.1',
      port: 8080,
    );
  }
}

Future<void> initGetxController() async {
  await GetStorage.init();
  Get.put<ThemeController>(ThemeController(), permanent: true);
  Get.put(ShareController(), permanent: true);
  Get.put(LoadingController(), permanent: true);
  Get.put(AuthController(), permanent: true);
  Get.put(LoginController(), permanent: true);
  Get.put(BottomNaviController(), permanent: true);
  // Get.put(ProfileController(), permanent: true);
  await GetStorage.init();

  ///AuthController Test, Real 설정.

  final _userinfo = Get.put(HanUserInfoController(), permanent: true);
}

///---------------------------
/// 네트워크 연결 상태 확인
///---------------------------

getConnectState() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  runApp(MyApp());
}

Future<void> _updateConnectionStatus(ConnectivityResult result) async {
  if (result == ConnectivityResult.none) {
    // DialogHelper.exitDialog(context, title, message)
    // AppHelper.showMessage('$result');
    AppHelper.showMessage('$result 네트워크를 확인해 주세요');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Const.isTest = false;

  await Firebase.initializeApp();
  await FlutterKakaoLogin().init("${Const.kakaoKey}");
  await initPushChannel();
  await initGetxController();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
  // await getConnectState();
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  // await Firebase.initializeApp();
  debugPrint('Handling a background message ${message.messageId}');
}

late AndroidNotificationChannel channel;

/// Create a [AndroidNotificationChannel] for heads up notifications
late FlutterLocalNotificationsPlugin
    flutterLocalNotificationsPlugin; //Initialize the [FlutterLocalNotificationsPlugin] package.

Future<void> initPushChannel() async {
  // Set the background messaging handler early on, as a named top-level function
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  if (!kIsWeb) {
    channel = const AndroidNotificationChannel(
        'wevior', // id
        '알림 채널', // title
        description: '위바이버의 푸시채널 입니다', // description
        importance: Importance.defaultImportance);

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  String? _token;
  var _locale = Locale('en');
  @override
  void initState() {
    super.initState();

    //랭기지 로컬에서 읽어오기
    final _language = GetStorage().read('language');
    if (_language == null) {
      GetStorage().write('language', 'en');
      Get.locale = Locale('en');
      if (Get.deviceLocale?.languageCode == 'ko') {
        Get.locale = Locale('ko');
      }
    } else {
      Get.locale = Locale(_language);
    }

    WidgetsBinding.instance!.addObserver(this);
    //-----------공유 서비스 서버 ----------------
    ShareController.to.init();
    // Create the share service
    // Register a callback so that we handle shared data if it arrives while the
    // app is running
    // Check to see if there is any shared data already, meaning that the app
    // was launched via sharing.

    ShareService()
      ..onDataReceived = _handleSharedData
      ..getSharedData().then(_handleSharedData);

    // ---------------FCM -------------------------
    FirebaseMessaging.instance.getToken().then((token) {
      final _token = GetStorage().read('push_token');
      if (_token == null || token != _token) {
        GetStorage().write('push_token', token);
        PushController.to.token = token;
      }
      debugPrint('------------------->>> $token');
    });

    //포그라운드 상태일 경우...
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null && !kIsWeb) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channelDescription: channel.description,
                // TODO add a proper drawable resource to android, for now using
                //      one that already exists in example app.
                icon: 'assets/icon/ic_launcher.png',
              ),
            ));
        PushController.to.messageArguments = MessageArguments(message, true);
        final _data = message.data;
        debugPrint('[message][onMessage]${message.toString()}');
        if (_data['route'] == 'remind') {
          final _controller = Get.put(RemindListController());

          _controller.cache.clear();
          await _controller.fetchItems();

          Get.toNamed('/remind_list');
        }

        // Get.toNamed('');
        else if (_data['route'] == 'push') {
          final _controller = Get.put(PushListController());

          _controller.cache.clear();
          await _controller.fetchItems();
          Get.toNamed('/push_list');
        }
      }
    });
    Get.put(PushController());
    //Closed 상태에 신초받을경우
    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) async {
      if (message != null) {
        PushController.to.messageArguments = MessageArguments(message, true);
        debugPrint('[message][getInitialMessage]${message.toString()}');
        final _data = message.data;
        if (_data['route'] == 'remind') {
          final _controller = Get.put(RemindListController());

          _controller.cache.clear();
          await _controller.fetchItems();

          Get.toNamed('/remind_list');
        }

        // Get.toNamed('');
        else if (_data['route'] == 'push') {
          final _controller = Get.put(PushListController());

          _controller.cache.clear();
          await _controller.fetchItems();

          Get.toNamed('/push_list');
        }
      }
    });
    //백그라운드 인 상태에서 푸시메시지에서 클릭이후 오픈시에.
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      PushController.to.messageArguments = MessageArguments(message, true);
      debugPrint('[message][onMessageOpenedApp]${message.toString()}');
      final _data = message.data;
      debugPrint('[message][onMessageOpenedApp]${_data.toString()}');
      if (_data['route'] == 'remind') {
        final _controller = Get.put(RemindListController());

        _controller.cache.clear();
        await _controller.fetchItems();

        Get.toNamed('/remind_list');
      }

      // Get.toNamed('');
      else if (_data['route'] == 'push') {
        final _controller = Get.put(PushListController());

        _controller.cache.clear();
        await _controller.fetchItems();
        Get.toNamed('/push_list');
      }
    });
    // ---------------FCM End-------------------------
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    debugPrint('[CALY] exit' + state.toString());
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    debugPrint('[CALY] exit');
    super.dispose();
  }

  /// Handles any shared data we may receive.
  void _handleSharedData(String sharedData) {
    debugPrint('[onHandelShareData] :[RECIEVE] [${sharedData}]');
    if (sharedData.isNotEmpty) {
      ShareController.to.sharedText = sharedData;
      ShareController.to.isShare = true;
      ShareController.to.update();
    } else {
      ShareController.to.sharedText = '';
      ShareController.to.isShare = false;
      // ShareController.to.update();
    }
  }

  // @override
  // void didChangeDependencies() async {
  //   super.didChangeDependencies();
  //   debugPrint('${Localizations.localeOf(context).languageCode}');
  //   await Jiffy.locale(Localizations.localeOf(context).languageCode);
  // }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: () => GetMaterialApp(
        defaultTransition: Transition.native,
        translations: MultiLanguage(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('ko', 'ko_KR'),
          Locale('en', 'US'),
        ],
        locale: Get.locale, //시스템 로켈이션 으로 설정
        fallbackLocale: Locale('en', 'US'),
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.system,

        initialRoute: '/start',

        getPages: [
          ...AppRoutes.routes,
          GetPage(
              name: '/push_list',
              transition: Transition.noTransition,
              middlewares: [AuthMiddleWare()],
              page: () => PushListUI()),
          GetPage(
              name: '/share_service',
              transition: Transition.noTransition,
              // middlewares: [AuthMiddleWare()],
              page: () => ShareServiceUI()),
        ],
      ),
    );
  }
}
