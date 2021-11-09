import 'package:clay/c_config/config.dart';
import 'package:clay/h_content/part_bs/src/part_bs_content_link.dart';
import 'package:flutter/material.dart';

class BSBoardFunctionHelper {
  void showBS(
    context,
    child, {
    onMenu,
    parentContext,
  }) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return WillPopScope(
            onWillPop: () {
              delaySetSysyemUIOverlays(250);

              return Future.value(true);
            },
            // child: AnnotatedRegion<SystemUiOverlayStyle>(
            //   value: GlobalStyle.configStatusTheme,
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                child: Wrap(
                  children: [child],
                ),
              ),
              // ),
            ),
          );
        });
  }

  void showBSSecond(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return WillPopScope(
            onWillPop: () {
              delaySetSysyemUIOverlays(250);

              return Future.value(true);
            },
            // child: AnnotatedRegion<SystemUiOverlayStyle>(
            //   value: GlobalStyle.configStatusTheme,
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                child: Wrap(
                  children: [child],
                ),
              ),
              // ),
            ),
          );
        });
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
