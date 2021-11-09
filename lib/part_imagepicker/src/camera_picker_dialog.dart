import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'camera_diallog_controller.dart';
/*
카메라/앨범을 선택하는 다이얼로그 
*/

class CameraPickerDialog extends StatelessWidget {
  final dlgStyle = baseStyle.copyWith(
    fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
    fontSize: Get.locale?.languageCode == 'ko' ? 13 : 14,
    color: Color(0xFF000000),
    fontWeight:
        Get.locale?.languageCode == 'ko' ? FontWeight.w400 : FontWeight.w800,
    height: Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 15.23px, 19.12px
    letterSpacing: Get.locale?.languageCode == 'ko' ? -0.65 : -0.7, // -5%
  );

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          InkWell(
            child: Container(
              height: 47,
              // padding: EdgeInsets.only(
              //     top: MySize.size16,
              //     left: MySize.size16,
              //     right: MySize.size16),
              child: Center(
                child: Text(
                  'board.dlg.menu.album'.tr, // 앨범에서 선택하기
                  // style: AppTheme.getTextStyle(themeData.textTheme.headline6,
                  //     fontWeight: 500),
                  style: dlgStyle,
                ),
              ),
            ),
            onTap: () async {
              //카메라 선택할 경우.
              Get.back();
              CarmeraDailogController.to.set(PICK_KIND.GALLERY);
            },
          ),
          Divider(
            thickness: 0.3,
            height: 0,
            color: Color(0xFFDEDEDE),
          ),
          InkWell(
            child: Container(
              height: 47,
              // padding: EdgeInsets.only(
              //     bottom: MySize.size16,
              //     left: MySize.size16,
              //     right: MySize.size16),
              child: Center(
                child: Text(
                  'board.dlg.menu.camera'.tr, // 카메라로 사진찍기
                  // style: AppTheme.getTextStyle(themeData.textTheme.headline6,
                  //     fontWeight: 500),
                  style: dlgStyle,
                ),
              ),
            ),
            onTap: () async {
              Get.back();
              CarmeraDailogController.to.set(PICK_KIND.CAMERA);
            },
          ),
        ],
      ),
    );
  }
}
