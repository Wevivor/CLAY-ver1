import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'libarays.dart';

const Color SOFT_GREY = Color(0xFFaaaaaa);

class GlobalStyle {
  GlobalStyle._();

  /// ----------------------------------------------
  ///  랔러
  /// ----------------------------------------------

  static const Color primary = Color(0xffE9894E);
  static const Color bg = Color(0xffF5F5F5);

  static final configStatusTheme = SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    // statusBarColor: Color(0xFFEEEEEE),
    statusBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Color(0xFFEEEEEE),
    // systemNavigationBarColor: Colors.transparent,
  );

  /// ----------------------------------------------
  ///  스타일
  /// ----------------------------------------------

  static const Color SOFT_DARK = Color(0xFF8E8E8E);

  static const TextStyle profiltT1Style = TextStyle(
    fontSize: 20,
    color: SOFT_DARK,
  );
}

final TextStyle baseStyle = TextStyle(
  fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
  fontSize: 13,
  color: SOFT_GREY,
);

///-----------------
/// 홈 세팅
/// --------------------
const TextStyle appBarStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
const TextStyle appBarStyleDark = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

///-----------------
/// 상세페이지 세팅
/// --------------------

const TextStyle detailStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);

///-----------------
/// 회원 Signin 세팅
/// --------------------

const TextStyle singinStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Color(0xFF333333),
);

const TextStyle registerStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Color(0xFF333333),
);

///-----------------
/// 서치 세팅
/// --------------------
const TextStyle btnTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 12,
  fontWeight: FontWeight.normal,
);

///-----------------
/// 홈 세팅
/// --------------------
const TextStyle tabStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 16,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);
const TextStyle homeTitleStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

///-----------------
/// 드로우 세팅
/// --------------------
const TextStyle drawerStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 16,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);

const TabBarTheme tabBarTheme = TabBarTheme(
  unselectedLabelColor: Color(0xff495057),
  labelColor: Color(0xff3d63ff),
  indicatorSize: TabBarIndicatorSize.label,
  indicator: UnderlineTabIndicator(
    borderSide: BorderSide(color: Color(0xff3d63ff), width: 2.0),
  ),
);

///-----------------
/// 포스 세팅
/// --------------------
Color getButtonColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.white10;
  }
  return Colors.transparent;
}
