import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/h_account/controllers/alarm_controller.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_account/part_profile/part_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

class LanguageSUB extends StatelessWidget with AppbarHelper {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    final appbarHeight = 0 + kToolbarHeight;
    return Scaffold(
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
              'account.sub.setting.subtitle.lang'.tr, // 언어 설정
              style: appBarStyle.copyWith(
                  fontFamily:
                      Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  height: Get.locale?.languageCode == 'ko'
                      ? 1.17
                      : 1.37), // 21.09px, 24.59px
            ),
          )),
      body: Container(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            //SUBJECT: 다국어.
            //TODO: SH 언어 설정.
            LanguageTileWidget(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                selected: Get.locale?.languageCode == 'ko',
                // icon: Icon(Jty.post_globe_selected_new, color: Colors.black),
                title: '한국어',
                onTap: () async {
                  Get.updateLocale(Locale('ko', 'KR'));
                  await Jiffy.locale('ko');

                  final _title = 'title'.tr;
                  final _userinfo = HanUserInfoController.to.userInfo;
                  await HanUserInfoController.to
                      .actionUpdate(_userinfo!.copyWith(locale: 'ko').toDto());
                  debugPrint('================= Locale: ${_title}');
                }),
            Divider(
              thickness: 0.5,
              height: 0,
              color: Color(0xFFDEDEDE),
            ),
            //SUBJECT: 다국어.
            //TODO: SH 언어 설정.
            LanguageTileWidget(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                selected: Get.locale?.languageCode == 'en',
                title: 'English',
                onTap: () async {
                  Get.updateLocale(Locale('en', 'US'));
                  await Jiffy.locale('en');

                  final _title = 'title'.tr;
                  final _userinfo = HanUserInfoController.to.userInfo;
                  await HanUserInfoController.to
                      .actionUpdate(_userinfo!.copyWith(locale: 'en').toDto());

                  debugPrint('================= Locale: ${_title}');
                }),
            Divider(
              thickness: 0.5,
              height: 0,
              color: Color(0xFFDEDEDE),
            ),
          ],
        ),
      ),
    );
  }
}
