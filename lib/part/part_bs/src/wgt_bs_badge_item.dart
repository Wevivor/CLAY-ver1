// 보드 만들기에서 배지 달기
// 배지 하나

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

// Bottom Sheet 내용
class BsBadgeItemWidget extends StatelessWidget {
  final iconUrl;
  final classText;
  final onTap;
  final isSelected;

  final classTitle = TextStyle(
    fontSize: 11,
    color: Color(0xFF707070),
    fontWeight: FontWeight.normal,
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
          color: isSelected ? Color(0xFFE5E5E5) : Colors.white,
          borderRadius: BorderRadius.circular(14),
          border:
              isSelected ? Border.all(width: 2, color: Colors.black54) : null,
          boxShadow: isSelected
              ? null
              : [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 10.0,
                    offset: Offset(0, 2),
                  ),
                ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageWidget(height: 24, width: 24, holder: Const.assets + iconUrl),
            SizedBox(
              height: 6,
            ),
            Text(
              classText,
              overflow: TextOverflow.ellipsis,
              style: classTitle,
            ),
          ],
        ),
      ),
    );
  }
}
