import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_account/controllers/alarm_controller.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SettingUI extends StatelessWidget with AppbarHelper {
  final tileTitleStyle = baseStyle.copyWith(
    fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
    fontSize: 18,
    color: Color(0xFFffffff),
    fontWeight:
        Get.locale?.languageCode == 'ko' ? FontWeight.w700 : FontWeight.w900,
    height: Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 21.09px, 24.59px
  );
  final titleStyle = baseStyle.copyWith(
      fontSize: 12,
      color: ThemeController.to.isLightOn ? Color(0xFF353535) : Colors.white,
      fontWeight: FontWeight.w700);

  Color getGrayBg() {
    return ThemeController.to.isLightOn
        ? Color(0xFFF6F6F6)
        //: Colors.grey[400] ?? Colors.grey;
        : Colors.black;
  }

  //설정 메뉴 타이틀 스타일
  Widget vsTitle(final title) {
    return Container(
      child: Text(
        title,
        style: baseStyle.copyWith(
          fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
          fontSize: 12,
          color: ThemeController.to.isLightOn ? Colors.black : Colors.white,
          fontWeight: Get.locale?.languageCode == 'ko'
              ? FontWeight.w700
              : FontWeight.w800,
          height: Get.locale?.languageCode == 'ko'
              ? 1.17
              : 1.37, // 14.06px, 16.39px
        ),
      ),
    );
  }

  //설정 메뉴 Sub 타이틀 스타일
  Widget vsSubTitle(final title) {
    return Container(
      child: Text(
        title,
        style: baseStyle.copyWith(
          fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
          fontSize: 13,
          color: ThemeController.to.isLightOn ? Colors.black : Colors.white,
          fontWeight: Get.locale?.languageCode == 'ko'
              ? FontWeight.w400
              : FontWeight.w500,
          height: Get.locale?.languageCode == 'ko'
              ? 1.17
              : 1.37, // 15.23px, 17.76px
        ),
      ),
    );
  }

  //설정 메뉴 활동알림 스타일
  Widget vsSubText(final title) {
    return Container(
      child: Text(
        title,
        style: baseStyle.copyWith(
          fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
          fontSize: 11,
          color: Color(0xFF707070),
          fontWeight: Get.locale?.languageCode == 'ko'
              ? FontWeight.w400
              : FontWeight.w500,
          height: Get.locale?.languageCode == 'ko'
              ? 1.17
              : 1.37, // 12.89px, 15.03px
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final appbarHeight = -3 + kToolbarHeight;
    return GetBuilder<ThemeController>(builder: (_) {
      return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(appbarHeight),
            //SUBJECT : 앱바의 액션
            child: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0.0,
              //shadowColor: Color.fromRGBO(0, 0, 0, 0),
              leading: IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () async {
                    Get.back();
                  }),
              centerTitle: true,
              title: Text(
                'account.appbar.title.setting'.tr,
                style: ThemeController.to.isLightOn
                    ? appBarStyle.copyWith(
                        fontFamily: Get.locale?.languageCode == 'ko'
                            ? 'Roboto'
                            : 'Avenir',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        height: Get.locale?.languageCode == 'ko'
                            ? 1.17
                            : 1.37) // 21.09px, 24.59px
                    : appBarStyleDark.copyWith(
                        fontFamily: Get.locale?.languageCode == 'ko'
                            ? 'Roboto'
                            : 'Avenir',
                        fontSize: 18,
                        color: Color(0xFFFAFAFA),
                        fontWeight: FontWeight.w900,
                        height: Get.locale?.languageCode == 'ko'
                            ? 1.17
                            : 1.37), // 21.09px, 24.59px
                // style: ThemeController.to.isLightOn
                //     ? appBarStyle
                //     : appBarStyleDark,
              ),
              backgroundColor:
                  ThemeController.to.isLightOn ? Colors.white : Colors.black,
            )),
        body: Container(
          color: getBg(),
          child: GetBuilder<HanUserInfoController>(
            builder: (_) => ListView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  color: getGrayBg(),
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
                  child: Container(
                    child: HanListTile(
                      padding: EdgeInsets.zero,
                      leading:
                          vsTitle('account.sub.setting.title.general'.tr), // 일반
                      // trailing: Icon(MdiIcons.chevronRight),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
                  child: Container(
                    child: HanListTile(
                      padding: EdgeInsets.zero,
                      onTap: () {
                        // Get.toNamed('/push');
                        if (ThemeController.to.isLightOn)
                          ThemeController.to.setThemeMode('dark');
                        else
                          ThemeController.to.setThemeMode('light');
                      },
                      leading: vsSubTitle(
                          'account.sub.setting.subtitle.dark'.tr), // 어두운 테마

                      trailing: Container(
                        height: 16,
                        child: Switch(
                            value: ThemeController.to.isLightOn == true,
                            onChanged: (value) {
                              if (value)
                                ThemeController.to.setThemeMode('light');
                              else
                                ThemeController.to.setThemeMode('dark');
                            }),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  height: 0,
                  color: ThemeController.to.isLightOn
                      ? Color(0xFFDEDEDE)
                      : Colors.black,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
                  child: HanListTile(
                    padding: EdgeInsets.zero,
                    onTap: () {
                      Get.toNamed('/language');
                    },
                    leading: vsSubTitle(
                        'account.sub.setting.subtitle.lang'.tr), // 언어 설정
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Color(0xff707070),
                    ),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  height: 0,
                  color: ThemeController.to.isLightOn
                      ? Color(0xFFDEDEDE)
                      : Colors.black,
                ),
                Container(
                  color: getGrayBg(),
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
                  child: HanListTile(
                    padding: EdgeInsets.zero,
                    leading:
                        vsTitle('account.sub.setting.title.notice'.tr), // 알림
                    // trailing: Icon(MdiIcons.chevronRight),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
                  child: HanListTile(
                    padding: EdgeInsets.zero,
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        vsSubTitle('account.sub.setting.subtitle.activity'
                            .tr), // 활동 알림
                        heightSpace(4.0),
                        vsSubText('account.sub.setting.subtitle.summary'
                            .tr), // 게시물 리마인드, 추가, 추천 등
                      ],
                    ),
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  height: 0,
                  color: ThemeController.to.isLightOn
                      ? Color(0xFFDEDEDE)
                      : Colors.black,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
                  child: HanListTile(
                    padding: EdgeInsets.zero,
                    onTap: () async {
                      Get.toNamed('/remind_text');
                    },
                    leading: vsSubTitle('account.sub.setting.subtitle.reminder'
                        .tr), // 리마인드 문구 설정
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Color(0xff707070),
                    ),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  height: 0,
                  color: ThemeController.to.isLightOn
                      ? Color(0xFFDEDEDE)
                      : Colors.black,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BNBarWidget(),
      );
    });
  }

  Widget vwTitle(final title) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }
}
