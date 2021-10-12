import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/common/commons.dart';
import 'package:clay/controllers/controllers.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SettingUI extends StatelessWidget with AppbarHelper {
  final tileTitleStyle = baseStyle.copyWith(
      fontSize: 13,
      color: ThemeController.to.isLightOn ? Color(0xFF353535) : Colors.white,
      fontWeight: FontWeight.normal);
  final titleStyle = baseStyle.copyWith(
      fontSize: 12,
      color: ThemeController.to.isLightOn ? Color(0xFF353535) : Colors.white,
      fontWeight: FontWeight.w700);

  Color getGrayBg() {
    return ThemeController.to.isLightOn
        ? Color(0xFFF6F6F6)
        : Colors.grey[400] ?? Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    Get.put(PushAlarmController('userinfos'));
    final appbarHeight = 0 + kToolbarHeight;
    return GetBuilder<ThemeController>(builder: (_) {
      return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(appbarHeight),
            //SUBJECT : 앱바의 액션
            child: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0.0,
              leading: IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () async {
                    Get.back();
                  }),
              centerTitle: true,
              title: Text(
                '설정',
                style: ThemeController.to.isLightOn
                    ? appBarStyle
                    : appBarStyleDark,
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
                Divider(
                  thickness: 1,
                  height: 1,
                ),
                Container(
                  color: getGrayBg(),
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
                  child: Container(
                    child: HanListTile(
                      padding: EdgeInsets.zero,
                      leading: Text(
                        '일반',
                        style: tileTitleStyle,
                      ),
                      // trailing: Icon(MdiIcons.chevronRight),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
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
                      leading: Text(
                        '어두운 테마',
                        style: tileTitleStyle,
                      ),
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
                  thickness: 1,
                  height: 1,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
                  child: HanListTile(
                    padding: EdgeInsets.zero,
                    onTap: () {
                      Get.toNamed('/language');
                    },
                    leading: Text(
                      '연어 설정',
                      style: tileTitleStyle,
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Color(0xff707070),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                ),
                Container(
                  color: getGrayBg(),
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
                  child: HanListTile(
                    padding: EdgeInsets.zero,
                    leading: Text(
                      '알림',
                      style: tileTitleStyle,
                    ),
                    // trailing: Icon(MdiIcons.chevronRight),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
                  child: HanListTile(
                    padding: EdgeInsets.zero,
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '활동 알림',
                          style: tileTitleStyle,
                        ),
                        Text(
                          '게시물 리마인드, 추가, 추천 등 ',
                          style: tileTitleStyle.copyWith(
                              fontSize: 11, color: Color(0xFF707070)),
                        ),
                      ],
                    ),
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
                  child: HanListTile(
                    padding: EdgeInsets.zero,
                    onTap: () {
                      Get.toNamed('/push');
                    },
                    leading: Text(
                      '리마인드 알림 관리',
                      style: tileTitleStyle,
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Color(0xff707070),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
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
