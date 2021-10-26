import 'dart:async';

import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kakao_login/flutter_kakao_login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'c_config/config.dart';
import 'c_globals/helper/helpers.dart';
import 'c_page/bott_navi_controller.dart';
import 'c_page/ui_han_bott_navi.dart';
import 'c_page/ui_init.dart';
import 'h_account/controllers/han_userinfo_controller.dart';
import 'h_account/controllers/login_controller.dart';
import 'h_account/page/sub_language.dart';
import 'h_account/page/ui_profile.dart';
import 'h_account/page/ui_setting.dart';
import 'h_content/page/ui_content.dart';
import 'h_login/ui_login_google.dart';
import 'h_search/page/ui_search.dart';
import 'h_share/share_controller.dart';
import 'dart:ui' as ui;

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
  await FlutterKakaoLogin().init("${Const.kakaoKey}");
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
        builder: () {
          // ThemeController.to.getThemeModeFromStore();
          return GetMaterialApp(
              defaultTransition: Transition.native,
              translations: MultiLanguage(),
              locale: Get.deviceLocale, //시스템 로켈이션 으로 설정
              fallbackLocale: Locale('ko', 'KR'),
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme,
              themeMode: ThemeMode.system,
              initialRoute: '/start',
              getPages: [
                ...AppRoutes.routes,
                //---------------------------------------
                /// Introduction (인트로....)
                //---------------------------------------
                GetPage(
                  name: '/start',
                  page: () => InitUI(),
                  transition: Transition.noTransition,
                ),
                GetPage(
                  name: '/login',
                  page: () => LoginGoogleUI(),
                  transition: Transition.noTransition,
                  binding: BindingsBuilder(() {
                    Get.lazyPut<LoginController>(() => LoginController());
                  }),
                ),
              ]);
        });
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

    // GetPage(
    //   name: '/push',
    //   transition: Transition.noTransition,
    //   page: () => PushUI(),
    // ),
    GetPage(
      name: '/search',
      transition: Transition.noTransition,
      page: () => SearchUI(),
    ),

    // GetPage(
    //   name: '/post',
    //   transition: Transition.noTransition,
    //   page: () => PostSUB(),
    // ),

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
