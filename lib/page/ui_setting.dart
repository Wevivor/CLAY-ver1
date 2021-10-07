import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/app/apps.dart';
import 'package:clay/controllers/controllers.dart';

import 'package:clay/part/part_profile/part_profile.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SettingUI extends StatelessWidget with AppbarHelper {
  final tileTitleStyle = baseStyle.copyWith(
      fontSize: 16, color: Color(0xFF333333), fontWeight: FontWeight.normal);
  final tileTrailingStyle = baseStyle.copyWith(
      fontSize: 14, color: Color(0xFF333333), fontWeight: FontWeight.normal);

  final tileTrailingWeakStyle = baseStyle.copyWith(
      fontSize: 14, color: Color(0xFF828282), fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    Get.put(PushAlarmController('userinfos'));
    final appbarHeight = 0 + kToolbarHeight;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appbarHeight),
        //SUBJECT : 앱바의 액션
        child: vwAppBar(
          title: 'Account',
          actions: [
            ImageButton(
                height: 32.0,
                width: 32.0,
                onTap: () {
                  Get.toNamed('/search');

                  AppHelper.showMessage('설정..');
                },
                holder: 'assets/icon/search.png'),
            widthSpace(10.0),
            ImageButton(
                height: 32.0,
                width: 32.0,
                onTap: () {
                  Get.toNamed('/setting');
                },
                holder: 'assets/icon/baseline-account-circle.png'),
            widthSpace(10.0),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 14, right: 14.0),
            child: GetBuilder<HanUserInfoController>(
              builder: (_) => ListView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  heightSpace(27.0),
                  //SUBJECT: 프로필 정보
                  //TODO: 프로필 정보
                  //// ---------------------------------
                  /// 프로파일 정보
                  //// ---------------------------------
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10.0),
                    child: Container(
                      decoration: DecoHelper.roundDeco.copyWith(
                        color: Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: EdgeInsets.only(
                          left: 27, top: 23.0, right: 14, bottom: 13),
                      child: ProfileMiddleWidget(
                        onTap: () {
                          // Get.toNamed('/profile_edit');
                        },
                        displayName: 'Pretium at',
                      ),
                    ),
                  ),

                  heightSpace(20.0),
                  vwTitle('Tutorial'),
                  //이미지 링크 리스트

                  heightSpace(33.0),
                  vwTitle('More settings'),
                  heightSpace(12.0),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10.0),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 24,
                      ),
                      decoration: DecoHelper.roundDeco.copyWith(
                        color: Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            title: Text(
                              '공지사항',
                              style: tileTitleStyle,
                            ),
                            // trailing: Icon(MdiIcons.chevronRight),
                          ),
                          ListTile(
                            onTap: () {
                              Get.toNamed('/push');
                            },
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            title: Text(
                              '알림 관리',
                              style: tileTitleStyle,
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            title: Text(
                              '문의하기/도움말',
                              style: tileTitleStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(bottom: 5.0, right: 20.0, child: AppVersionWidget()),
        ],
      ),
    );
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
