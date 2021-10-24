import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/h_account/controllers/push_alaram_controller.dart';
import 'package:clay/h_account/part/part_profile/part_profile.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LanguageSUB extends StatelessWidget with AppbarHelper {
  final titleStyle = baseStyle.copyWith(
      fontSize: 12, color: Color(0xFF353535), fontWeight: FontWeight.w700);

  final tileTitleStyle = baseStyle.copyWith(
      fontSize: 13, color: Color(0xFF353535), fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    Get.put(PushAlarmController('userinfos'));
    Get.put(LanguageController());
    final appbarHeight = 0 + kToolbarHeight;
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
              '언어 설정',
              style: appBarStyle,
            ),
          )),
      body: Container(
        child: GetBuilder<LanguageController>(
          builder: (_) => ListView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Divider(
                thickness: 1,
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: LanguageTileWidget(
                    selected: LanguageController.to.currentLanguage == 'ko',
                    // icon: Icon(Jty.post_globe_selected_new, color: Colors.black),
                    title: '한국어',
                    onTap: () {
                      LanguageController.to.updateLanguage('ko');
                      // LanguageController.to.status = LANG_STATUS.KO;
                      // LanguageController.to.selected = 0;
                    }),
              ),
              Divider(
                thickness: 1,
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: LanguageTileWidget(
                    selected: LanguageController.to.currentLanguage == 'en',
                    // icon: Icon(Jty.post_private, color: Colors.black),
                    title: 'English',
                    onTap: () {
                      LanguageController.to.updateLanguage('en');
                    }),
              ),
              Divider(
                thickness: 1,
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
