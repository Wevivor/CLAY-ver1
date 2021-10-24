import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'camera_diallog_controller.dart';
/*
카메라/앨법을 선택하는 다이얼로그 
*/

class CameraPickerDialog extends StatelessWidget {
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
              padding: EdgeInsets.only(
                  top: MySize.size16,
                  left: MySize.size16,
                  right: MySize.size16),
              child: Center(
                child: Text('카메라에서 선택하기',
                    style: AppTheme.getTextStyle(themeData.textTheme.headline6,
                        fontWeight: 500)),
              ),
            ),
            onTap: () async {
              //카메라 선택할 경우.
              Get.back();
              CarmeraDailogController.to.set(PICK_KIND.CAMERA);
            },
          ),
          heightSpace(2.0),
          Divider(),
          heightSpace(2.0),
          InkWell(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: MySize.size16,
                  left: MySize.size16,
                  right: MySize.size16),
              child: Center(
                child: Text('앨범에서 선택하기',
                    style: AppTheme.getTextStyle(themeData.textTheme.headline6,
                        fontWeight: 500)),
              ),
            ),
            onTap: () async {
              Get.back();
              CarmeraDailogController.to.set(PICK_KIND.GALLERY);
            },
          ),
        ],
      ),
    );
  }
}
