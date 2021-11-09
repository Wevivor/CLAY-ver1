import 'package:clay/h_account/controllers/login_controller.dart';
import 'package:clay/h_account/page/sub_language.dart';
import 'package:clay/h_account/page/sub_remind_list.dart';
import 'package:clay/h_account/page/sub_remind_text%20_setting.dart';
import 'package:clay/h_account/page/ui_profile.dart';
import 'package:clay/h_account/page/ui_setting.dart';
import 'package:clay/h_content/page/ui_content.dart';
import 'package:clay/h_login/ui_login_google.dart';
import 'package:clay/h_search/page/ui_search.dart';
import 'package:get/get.dart';

import 'auth_middle.dart';
import 'ui_han_bott_navi.dart';
import 'ui_init.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
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
    GetPage(
      name: '/main_menu',
      transition: Transition.noTransition,
      // middlewares: [AuthMiddleWare()],
      page: () => HanBottomNavigationBar(),
    ),

    GetPage(
      name: '/search',
      transition: Transition.noTransition,
      page: () => SearchUI(),
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

    GetPage(
        name: '/setting',
        transition: Transition.noTransition,
        page: () => SettingUI()),
    GetPage(
        name: '/remind_list',
        transition: Transition.noTransition,
        page: () => RemindListSUB()),
    GetPage(
        name: '/remind_text',
        transition: Transition.noTransition,
        page: () => RemindTextSettingSUB()),
  ];
}
