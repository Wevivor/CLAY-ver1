// 1-4 공유하기 완료
// 컨텐츠를 분류된 보드에 공유하기를 완료했을 경우 다이얼로그 메세지
import 'dart:ffi';

import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ShareDoneDialog extends StatelessWidget {
  final boardName;
  ShareDoneDialog({required this.boardName});
  final msgTitle = TextStyle(
    fontSize: 16,
    color: Color(0xFF353535),
    fontWeight: FontWeight.bold,
  );
  final msgSubtitle = TextStyle(
    fontSize: 12,
    color: Color(0xFF353535),
    fontWeight: FontWeight.w500,
  );
  @override
  Widget build(BuildContext context) {
    return Dialog(
      // insetPadding: EdgeInsets.only(left: 20.0, right: 20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        alignment: Alignment.center,
        // margin: EdgeInsets.only(left: 80, right: 80),
        padding: EdgeInsets.only(
          // left: 80,
          // right: 80,
          top: 16.14,
          bottom: 11,
        ),
        height: 130,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFF6f6f6),
        ),
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
            Text('Saved to CLAY', style: msgSubtitle),
          ],
        ),
      ),
    );
  }
}
