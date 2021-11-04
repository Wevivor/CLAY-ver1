import 'dart:async';
import 'dart:convert';

import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_push/controllers/push_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kakao_login/flutter_kakao_login.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

import 'c_config/config.dart';
import 'c_globals/helper/helpers.dart';
import 'c_page/app_routes.dart';
import 'c_page/auth_middle.dart';
import 'c_page/bott_navi_controller.dart';
import 'h_account/controllers/han_userinfo_controller.dart';
import 'h_account/controllers/login_controller.dart';
import 'h_account/page/ui_push_list.dart';
import 'h_push/ui_push_messages.dart';
import 'h_share/h_share.dart';
import 'h_share/share_controller.dart';
import 'package:http/http.dart' as http;

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
  // if (AuthController.to.getUser?.uid != null)
  //   _userinfo.getUserInfoStore(AuthController.to.getUser?.uid ?? '');
}

///---------------------------
/// 네트워크 연결 상태 확인
///---------------------------

getConnectState() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    // runApp(DialogApp());
    // AppHelper.showMessage('네트워크를 확인해 주세요');
  } else {
    runApp(MyApp());
  }
  // StreamSubscription<ConnectivityResult> _connectivitySubscription =
  //     Connectivity().onConnectivityChanged.listen(_updateConnectionStatus);
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

  await getConnectState();
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
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
    // groupId = NotificationChannelGroup();
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

class _MyAppState extends State<MyApp> {
  String? _token;

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.instance.getToken().then((token) {
      final _token = GetStorage().read('push_token');
      if (_token == null || token != _token) {
        GetStorage().write('push_token', token);
        PushController.to.token = token;
      }
      debugPrint('------------------->>> $token');
    });

    //포그라운드 상태일 경우...
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
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
                icon: 'launch_background',
              ),
            ));
        PushController.to.messageArguments = MessageArguments(message, true);
        Get.toNamed('/message');
      }
    });
    Get.put(PushController());
    //종료 이후에 신초받을경우
    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      if (message != null) {
        PushController.to.messageArguments = MessageArguments(message, true);
      }
    });
    //백그라운드 인 상태에서 푸시메시지에서 클릭이후 오픈시에.
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      PushController.to.messageArguments = MessageArguments(message, true);
    });
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
        builder: () {
          // ThemeController.to.getThemeModeFromStore();
          return GetMaterialApp(
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
              locale: Get.deviceLocale, //시스템 로켈이션 으로 설정
              fallbackLocale: Locale('ko', 'KR'),
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme,
              themeMode: ThemeMode.system,
              initialRoute: '/start',
              getPages: [
                ...AppRoutes.routes,
                GetPage(
                    name: '/push_list',
                    transition: Transition.noTransition,
                    page: () => PushListUI()),
                GetPage(
                    name: '/share_service',
                    transition: Transition.noTransition,
                    middlewares: [AuthMiddleWare()],
                    page: () => ShareServiceUI()),
                GetPage(
                  name: '/message',
                  transition: Transition.noTransition,
                  page: () => PushMessagesUI(),
                ),
              ]);
        });
  }

  Future<void> sendPushMessage() async {
    if (_token == null) {
      print('Unable to send FCM message, no token exists.');
      return;
    }

    try {
      await http.post(
        Uri.parse('https://api.rnfirebase.io/messaging/send'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: constructFCMPayload(_token),
      );
      print('FCM request for device sent!');
    } catch (e) {
      print(e);
    }
  }

  Future<void> onActionSelected(String value) async {
    switch (value) {
      case 'subscribe':
        {
          print(
              'FlutterFire Messaging Example: Subscribing to topic "fcm_test".');
          await FirebaseMessaging.instance.subscribeToTopic('fcm_test');
          print(
              'FlutterFire Messaging Example: Subscribing to topic "fcm_test" successful.');
        }
        break;
      case 'unsubscribe':
        {
          print(
              'FlutterFire Messaging Example: Unsubscribing from topic "fcm_test".');
          await FirebaseMessaging.instance.unsubscribeFromTopic('fcm_test');
          print(
              'FlutterFire Messaging Example: Unsubscribing from topic "fcm_test" successful.');
        }
        break;
      case 'get_apns_token':
        {
          if (defaultTargetPlatform == TargetPlatform.iOS ||
              defaultTargetPlatform == TargetPlatform.macOS) {
            print('FlutterFire Messaging Example: Getting APNs token...');
            String? token = await FirebaseMessaging.instance.getAPNSToken();
            print('FlutterFire Messaging Example: Got APNs token: $token');
          } else {
            print(
                'FlutterFire Messaging Example: Getting an APNs token is only supported on iOS and macOS platforms.');
          }
        }
        break;
      default:
        break;
    }
  }
}

// Crude counter to make messages unique
int _messageCount = 0;

/// The API endpoint here accepts a raw FCM payload for demonstration purposes.
String constructFCMPayload(String? token) {
  _messageCount++;
  return jsonEncode({
    'token': token,
    'data': {
      'via': 'FlutterFire Cloud Messaging!!!',
      'count': _messageCount.toString(),
    },
    'notification': {
      'title': 'Hello FlutterFire!',
      'body': 'This notification (#$_messageCount) was created via FCM!',
    },
  });
}
