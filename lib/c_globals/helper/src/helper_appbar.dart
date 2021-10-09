import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppbarHelper {
  // Widget vwLogo(BuildContext context) {
  //   return Center(
  //     child: InkWell(
  //       child: Get.isDarkMode
  //           ? Image.asset('assets/logo_white.png', width: 117, height: 28)
  //           // Const.isDarkTheme
  //           : Image.asset(
  //               'assets/logo_black.png',
  //               width: 117,
  //               height: 28,
  //             ),
  //       onTap: () {
  //         // Get.isDarkMode
  //         //     ? Get.changeTheme(
  //         //         AppTheme.lightTheme,
  //         //       )
  //         //     : Get.changeTheme(AppTheme.darkTheme);
  //       },
  //     ),
  //   );
  // }

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
  //TODO: 테마 변화
  Widget vwAppBar({
    title,
    List<Widget>? actions,
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
      elevation: 0.0,
      actions: actions,
      automaticallyImplyLeading: false,
      leading: null,
      title: wdgTitle,
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
        style: baseStyle.copyWith(
            fontSize: 18,
            color: Color(0xFF2F2F2F),
            fontWeight: FontWeight.bold),
      ),
      actions: actions,
      automaticallyImplyLeading: false,
    );
  }

  Widget vwGlobalSliverAppbar(BuildContext context,
      {final title, final bottom}) {
    return SliverAppBar(
        // toolbarHeight: 56,
        // automaticallyImplyLeading: true,
        leading: null,
        // leading: Text('아페드'),
        elevation: 0.0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        floating: true,
        pinned: true,
        snap: true,
        centerTitle: false,
        title: Text(title == null ? '아페드' : title,
            style: baseStyle.copyWith(
                fontSize: 16,
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold)),
        actions: actionBlankList(),
        bottom: bottom);
  }

  DateTime currentBackPressTime = DateTime.now();

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;

      Fluttertoast.showToast(
        msg: '한번 더 백키를 누르시면 종료합니다.',
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

  Widget vwSubBar(BuildContext context,
      {String? title,
      bool? isCenter = true,
      String actionTilte = '',
      final bottom,
      Function? actionTap}) {
    return Container(
      color: Colors.transparent,
      // height: kToolbarHeight + bottom.,
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            // color: themeData.appBarTheme.iconTheme?.color,
          ),
          onPressed: () {
            // Future.delayed(Duration(milliseconds: 300)).then((_) {
            //   SystemChrome.setSystemUIOverlayStyle(
            //     const SystemUiOverlayStyle(
            //       systemNavigationBarColor: Colors.black12,
            //     ),
            //   );
            // });
            // Navigator.of(context).pop();

            Get.back();
          },
        ),
        title: Text(
          title ?? '',
          // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: isCenter,
        actions: <Widget>[
          TextButton(
            child: Text(actionTilte),
            onPressed: () {
              if (actionTap != null) actionTap();
            },
          ),
        ],
        bottom: bottom,
      ),
    );
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
}