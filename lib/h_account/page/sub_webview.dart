import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';

import 'part_webview.dart';

import 'package:clay/c_globals/controllers/controllers.dart';

import 'package:get/get.dart';
import 'dart:ui' as ui;

import 'package:intl/intl.dart';

// ignore: must_be_immutable
class WebviewSUB extends StatelessWidget with AppbarHelper {
  final title;
  final url;
  WebviewSUB({this.title, this.url});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final appbarHeight = 0 + kToolbarHeight;
    return title != null
        ? Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(appbarHeight),
              //SUBJECT : 앱바의 액션
              child: AppBar(
                automaticallyImplyLeading: false,
                elevation: 4.0,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.2),
                leading: IconButton(
                    icon: Icon(Icons.chevron_left),
                    onPressed: () async {
                      Get.back();
                    }),
                centerTitle: true,
                title: Text(
                  // 'account.appbar.title.announce'.tr, // 공지사항
                  title,
                  style: appBarStyle.copyWith(
                      fontFamily: Get.locale?.languageCode == 'ko'
                          ? 'Roboto'
                          : 'Avenir',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      height: Get.locale?.languageCode == 'ko'
                          ? 1.17
                          : 1.37), // 21.09px, 24.59px
                ),
                //backgroundColor: Colors.white,
              ),
            ),
            body:
                /*--------------- Build Tab body here -------------------*/
                WebviewPART(url),
          )
        : Scaffold(
            appBar: null,
            body:
                /*--------------- Build Tab body here -------------------*/
                Column(
              children: [
                heightSpace(MySize.paddingTop ?? 24.0),
                Flexible(child: WebviewPART(url)),
              ],
            ),
          );
  }
}
