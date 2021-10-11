import 'dart:async';

import 'package:clay/c_config/libarays.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/page/sub_language.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import 'c_config/config.dart';
import 'c_globals/helper/helpers.dart';
import 'controllers/controllers.dart';
import 'page/sub_post.dart';
import 'page/ui_board.dart';
import 'page/ui_content.dart';
import 'page/ui_han_bott_navi.dart';
import 'page/ui_login_google.dart';
import 'page/ui_profile.dart';
import 'page/ui_push.dart';
import 'page/ui_search.dart';
import 'page/ui_setting.dart';
import 'part/part_write/part_write.dart';

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

  // Get.put(PostListController(pageSize: 20, client: http.Client()));
  // Get.put(PostListController(client: http.Client()));
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
  // FirebaseFirestore.instance.setPersistenceEnabled(true);
  // FirebaseFirestore.instance.setPersistenceCacheSizeBytes(10000000);
  // await FlutterKakaoLogin().init("${Const.kakaoKey}");
  // KakaoContext.clientId = "${Const.kakaoKey}";

  // AppHelper.showMessage('네트워크 MOBILE 연결');
  await initGetxController();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await getConnectState();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: () =>
          // ThemeController.to.getThemeModeFromStore();
          GetMaterialApp(
              locale: Locale('en', 'ko'),
              localizationsDelegates: [
                // const AppLocalizationsDelegate(), // <- Your custom delegate
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              // supportedLocales:
              //     AppLocalizations.languages.keys.toList(), // <- Supported locales
              //end language translation stuff
              // navigatorObservers: [
              //   FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
              // ],
              debugShowCheckedModeBanner: false,
              defaultTransition: Transition.fade,
              theme: AppTheme.lightTheme,
              // darkTheme: AppTheme.darkTheme,
              themeMode: ThemeMode.system,
              initialRoute: '/login',
              getPages: [
                ...AppRoutes.routes,
                //---------------------------------------
                /// Introduction (인트로....)
                //---------------------------------------
                GetPage(
                  name: '/login',
                  page: () => LoginGoogleUI(),
                  transition: Transition.noTransition,
                  binding: BindingsBuilder(() {
                    Get.lazyPut<LoginController>(() => LoginController());
                  }),
                ),
              ]),
    );
  }
}

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    //---------------------------------------
    //Upload ----------------------------------
    //---------------------------------------

    // GetPage(
    //   name: '/board',
    //   transition: Transition.noTransition,
    //   page: () => BoradMyUI(),
    // ),
    // GetPage(
    //   name: '/brd_content',
    //   transition: Transition.noTransition,
    //   page: () => BoardContentUI(
    //     board: '1',
    //   ),
    // ),
    GetPage(
      name: '/main_menu',
      transition: Transition.noTransition,
      page: () => HanBottomNavigationBar(),
    ),

    //---------------------------------------
    //home ----------------------------------
    //---------------------------------------

    GetPage(
      name: '/push',
      transition: Transition.noTransition,
      page: () => PushUI(),
    ),
    GetPage(
      name: '/search',
      transition: Transition.noTransition,
      page: () => SearchUI(),
    ),

    GetPage(
      name: '/post',
      transition: Transition.noTransition,
      page: () => PostSUB(),
    ),

    GetPage(
      name: '/content',
      transition: Transition.noTransition,
      page: () => ContentUI(),
    ),
    //---------------------------------------
    //setting
    //---------------------------------------
    GetPage(
        name: '/profile',
        transition: Transition.noTransition,
        page: () => ProfileUI()),
    GetPage(
        name: '/language',
        transition: Transition.noTransition,
        page: () => LanguageSUB()),

    // GetPage(
    //     name: '/profile_edit',
    //     transition: Transition.noTransition,
    //     page: () => ProfileEditSUB()),
    GetPage(
        name: '/setting',
        transition: Transition.noTransition,
        page: () => SettingUI()),
    // GetPage(
    //     name: '/notice',
    //     transition: Transition.noTransition,
    //     page: () => NoticeUI()),
    // GetPage(
    //     name: '/yaggwan/:index',
    //     transition: Transition.noTransition,
    //     page: () => YaggwanUI()),
  ];
}

class ReceiveShare extends StatefulWidget {
  @override
  _ReceiveShareState createState() => _ReceiveShareState();
}

class _ReceiveShareState extends State<ReceiveShare> {
  late StreamSubscription _intentDataStreamSubscription;
  List<SharedMediaFile>? _sharedFiles;
  String? _sharedText;

  int _counter = 0;

  @override
  void initState() {
    super.initState();

    // For sharing images coming from outside the app while the app is in the memory
    _intentDataStreamSubscription = ReceiveSharingIntent.getMediaStream()
        .listen((List<SharedMediaFile> value) {
      setState(() {
        _sharedFiles = value;
        print("Shared:" + (_sharedFiles?.map((f) => f.path).join(",") ?? ""));
      });
    }, onError: (err) {
      print("getIntentDataStream error: $err");
    });

    // For sharing images coming from outside the app while the app is closed
    ReceiveSharingIntent.getInitialMedia().then((List<SharedMediaFile> value) {
      setState(() {
        _sharedFiles = value;
        print("Shared:" + (_sharedFiles?.map((f) => f.path).join(",") ?? ""));
      });
    });

    // For sharing or opening urls/text coming from outside the app while the app is in the memory
    _intentDataStreamSubscription =
        ReceiveSharingIntent.getTextStream().listen((String value) {
      setState(() {
        _sharedText = value;
        print("Shared: $_sharedText");
      });
    }, onError: (err) {
      print("getLinkStream error: $err");
    });

    // For sharing or opening urls/text coming from outside the app while the app is closed
    ReceiveSharingIntent.getInitialText().then((String? value) {
      setState(() {
        _sharedText = value;
        print("Shared: $_sharedText");
      });
    });
  }

  @override
  void dispose() {
    _intentDataStreamSubscription.cancel();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const textStyleBold = const TextStyle(fontWeight: FontWeight.bold);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("Shared files:", style: textStyleBold),
              Text(_sharedFiles
                      ?.map((f) =>
                          "{Path: ${f.path}, Type: ${f.type.toString().replaceFirst("SharedMediaType.", "")}}\n")
                      .join(",\n") ??
                  ""),
              SizedBox(height: 100),
              Text("Shared urls/text:", style: textStyleBold),
              Text(_sharedText ?? ""),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma mak
      ),
    );
  }
}
