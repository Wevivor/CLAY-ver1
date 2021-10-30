// 설정에서 튜토리얼 부분
// 아이템

import 'package:flutter/material.dart';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/const.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '/c_config/libarays.dart';

class TutorialItemWidget extends StatelessWidget {
  final String imgUrl;
  final String tutorialText;
  final onTap;

  TutorialItemWidget({
    this.tutorialText = '',
    this.imgUrl = '',
    this.onTap,
  });

  final tutorialStyle = TextStyle(
    fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
    fontSize: Get.locale?.languageCode == 'ko' ? 11 : 12,
    color: Color(0xFF353535),
    fontWeight:
        Get.locale?.languageCode == 'ko' ? FontWeight.w400 : FontWeight.w500,
    height: Get.locale?.languageCode == 'ko' ? 1.36 : 1.25, // 15px, 15px
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 108,
            height: 148,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0xFFDEDEDE),
                width: 0.5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 108,
                  height: 87,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white),

                  // TODO : [SH] 이미지를 박스에 맞추어 넣는 방법이 필요
                  // 현재 image size :  w*h=68*87 이하
                  // fit : 이미지 규칙이 정해지면 수정이 필요
                  child: Image.asset(
                    Const.assets + imgUrl,
                    fit: BoxFit.none,
                  ),
                ),
                Divider(
                  thickness: 0.3,
                  height: 0.0,
                  color: Color(0xFFDEDEDE),
                ),
                Container(
                  margin: EdgeInsets.only(top: 17.0),
                  width: 70,
                  height: 30,
                  child: Text(
                    tutorialText,
                    textAlign: TextAlign.center,
                    style: tutorialStyle,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
