// 보드 만들기에서 배지 달기
// 배지 하나

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// Bottom Sheet 내용
class BsBadgeItemWidget extends StatelessWidget {
  final iconUrl;
  final classText;
  final onTap;
  final isSelected;

  final classTitle = baseStyle.copyWith(
    fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
    fontSize: 11,
    color: Color(0xFF707070),
    fontWeight: FontWeight.w400,
    height: Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 12.89px, 15.03px
    letterSpacing: -0.55, // -5%
  );

  BsBadgeItemWidget({
    this.iconUrl = '',
    this.classText = '',
    this.onTap,
    this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap();
      },
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          color: isSelected ? Color.fromRGBO(53, 53, 53, 0.2) : Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: isSelected
              ? Border.all(
                  width: 2.0,
                  color: Color(0xFF666666),
                )
              : null,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.06),
                    blurRadius: 10.0,
                    offset: Offset(0, 0),
                    spreadRadius: 4,
                  ),
                ]
              : [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                    blurRadius: 10.0,
                    offset: Offset(0, 0),
                    spreadRadius: 2,
                  ),
                ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageWidget(height: 24, width: 24, holder: Const.assets + iconUrl),
            heightSpace(6.0),
            Container(
              alignment: Alignment.center,
              width: 44,
              child: Text(
                classText,
                overflow: TextOverflow.ellipsis,
                style: classTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
