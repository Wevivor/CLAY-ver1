import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppbarHelper {
  //APPbar의 오른쪽 아이콘 리스트.
  Widget vwIcon(BuildContext context,
      {IconData? iconData, Color color = Colors.black, Function? onTap}) {
    return IconButton(
      onPressed: () {
        if (onTap != null) onTap();
      },
      icon: Icon(iconData == null ? Icons.menu : iconData),
      color: color,
    );
  }

  //SUBJECT : Appbar 설정
  Widget vwAppBar({
    title,
    List<Widget>? actions,
    titleStyle,
  }) {
    Widget wdgTitle = title is String
        ? Container(
            //color: Colors.blue,
            child: Text(
              title,
              style: titleStyle == null
                  ? TextStyle(
                      fontFamily: 'Righteous',
                      fontWeight: FontWeight.normal,
                      fontSize: 26,
                      letterSpacing: -1.3, //-5%
                      color: Colors.black,
                      height: 0.88,
                    )
                  : titleStyle,
            ),
          )
        : title;
    return AppBar(
      elevation: 0.0,
      actions: actions,
      automaticallyImplyLeading: false,
      leading: null,
      title: wdgTitle,
      titleSpacing: 20,
    );
  }

  Widget vwBSAppBar({
    title,
    List<Widget>? actions,
    onBack,
  }) {
    Widget wdgTitle = title is String
        ? Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          )
        : title;
    return AppBar(
      toolbarHeight: 45,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {
          if (onBack != null) onBack();
        },
        icon: Icon(Icons.chevron_left),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
          fontSize: 18,
          color: Color(0xFF000000),
          fontWeight: Get.locale?.languageCode == 'ko'
              ? FontWeight.w700
              : FontWeight.w900,
          height: Get.locale?.languageCode == 'ko'
              ? 1.17
              : 1.37, // 21.09px, 24.59px
        ),
      ),
      actions: actions,
      automaticallyImplyLeading: false,
    );
  }

  DateTime currentBackPressTime = DateTime.now();

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;

      Fluttertoast.showToast(
        msg: '한번 더 백키를 누르시면 종료합니다.', // [SH] 영문 번역
        backgroundColor: Colors.black45,
        textColor: Colors.white,
      );
      return Future.value(false);
    }
    SystemNavigator.pop(); //종
    return Future.value(true);
  }

  List<Widget> actionBlankList() {
    return [
      SizedBox(
        width: 32.0,
      )
    ];
  }

  Color getBg() {
    if (ThemeController.to.isLightOn)
      return Colors.white;
    else
      return Colors.black;
  }

  Color getGrayBg() {
    return ThemeController.to.isLightOn
        ? Color(0xFFF6F6F6)
        : Colors.grey[400] ?? Colors.black;
  }

  Widget vwAppbarPosition(BuildContext context,
      {Color color = Colors.black, Function? onTap}) {
    return Positioned(
      top: 4,
      left: 4,

      child: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: color,
        ),
        onPressed: () async {
          if (onTap != null) onTap();
        },
      ),

      // Flexible(child: Container()),
    );
  }

  Widget vwAppbarRightPosition(
    ThemeData themeData,
    BuildContext context, {
    Color color = Colors.black,
    Function? onTap,
  }) {
    return Positioned(
        top: 4,
        right: 4,
        child: IconButton(
          icon: Icon(
            MdiIcons.exportVariant,
            color: color,
          ),
          onPressed: () async {
            if (onTap != null) onTap();
          },
        ));
  }

  void delaySetSysyemUIOverlays(int time) {
    Future.delayed(
        Duration(milliseconds: time),
        () => SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
            .copyWith(
                statusBarColor: Colors.transparent,
                systemNavigationBarColor: Color(0xFFEEEEEE),
                systemNavigationBarIconBrightness: Brightness.dark)));
  }
}
