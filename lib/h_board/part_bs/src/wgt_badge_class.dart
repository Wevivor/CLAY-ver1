// 보드에 배지 달기
// 보드 만들기

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'wgt_bs_badge_item.dart';

final bottomSheetTitle = TextStyle(
  fontSize: 18,
  color: Color(0xFF000000),
  fontWeight: FontWeight.bold,
);
final doneBtnStyle = TextStyle(
  fontSize: 14,
  color: Color(0xFF017bfe),
  fontWeight: FontWeight.w500,
);
final btnCommentStyle = TextStyle(
  fontSize: 14,
  color: Color(0xFF000000),
  fontWeight: FontWeight.normal,
  letterSpacing: -0.7,
);

class BadgeClassWidget extends StatelessWidget {
  BadgeClassWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Divider(height: 1),
          Container(
            padding: EdgeInsets.only(left: 0, right: 0, top: 27, bottom: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BsBadgeItemWidget(iconUrl: '/icon/medal.png', classText: '자기계발'),
                BsBadgeItemWidget(iconUrl: '/icon/pencil.png', classText: '일/공부'),
                BsBadgeItemWidget(iconUrl: '/icon/hart.png', classText: 'LIKE'),
                BsBadgeItemWidget(iconUrl: '/icon/no_entry.png', classText: '선택안함'),
                SizedBox(width: 22),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
