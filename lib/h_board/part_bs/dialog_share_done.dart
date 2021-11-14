// 공유하기 완료
// 컨텐츠를 분류된 보드에 공유하기를 완료했을 경우 다이얼로그 메세지
import 'dart:ffi';

import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ShareDoneDialog extends StatelessWidget {
  final boardName;
  ShareDoneDialog({required this.boardName});
  final msgTitle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    color: Color(0xFF353535),
    fontWeight: FontWeight.w700,
    height: 1.17, // 18.75px
  );
  final msgSubtitle = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 12,
      color: Color(0xFF353535),
      fontWeight: FontWeight.w400,
      height: 1.17, // 14.06px
      letterSpacing: -0.6 // -5%
      );
  @override
  Widget build(BuildContext context) {
    return Dialog(
      // insetPadding: EdgeInsets.only(left: 20.0, right: 20.0),
      backgroundColor: Color.fromRGBO(246, 246, 246, 0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 80, right: 80),
        // padding: EdgeInsets.only(
        //   // left: 80,
        //   // right: 80,
        //   top: 16.14,
        //   bottom: 11,
        //),
        height: 130,
        // width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Const.assets + 'icon/addboard_check.png',
              width: 42.73,
              height: 42.73,
            ),
            SizedBox(height: 12.14),
            Text(boardName, style: msgTitle),
            SizedBox(height: 5),
            Text('share.dlg.msg.save'.tr,
                style: msgSubtitle), // 보드에 추가 완료(Saved to CLAY)
          ],
        ),
      ),
    );
  }
}
