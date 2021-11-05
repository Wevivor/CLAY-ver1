// Bottom Sheet 의 분류하기 콘텐츠 아이템
// 바로 분류하기

import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// Bottom Sheet 내용
class BSBoardItemWidget extends StatelessWidget {
  final title;
  final category;
  final onTap;
  final selected;
  final index;

  BSBoardItemWidget({
    required this.title,
    this.category,
    this.onTap,
    this.selected,
    this.index,
  });
  final classTitle = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 12,
      color: Get.locale?.languageCode == 'ko'
          ? Color(0xFF000000)
          : Color(0xFF353535),
      fontWeight: FontWeight.w400,
      height: 0.88 // 10.57px

      );

  @override
  Widget build(BuildContext context) {
    var holder = '';
    switch (category) {
      case '새보드':
        holder = 'icon/add_class.png';
        break;
      case '일/공부':
        holder = 'icon/pencil.png';
        break;
      case '자기계발':
        holder = 'icon/medal.png';
        break;
      case 'LIKE':
        holder = 'icon/hart.png';
        break;
      case '선택안함':
        holder = 'icon/no_entry.png';
        break;
    }
    return InkWell(
      onTap: () {
        if (onTap != null) onTap();
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                color: selected == index
                    ? Color.fromRGBO(230, 242, 255, 1)
                    : Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: selected == index
                    ? Border.all(
                        width: 2.0,
                        color: Color.fromRGBO(1, 123, 254, 0.5),
                      )
                    : null,
                boxShadow: selected != index
                    ? [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.05),
                          blurRadius: 10.0,
                          offset: Offset(0, 0),
                          spreadRadius: 2,
                        ),
                      ]
                    : [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.06),
                          blurRadius: 10.0,
                          offset: Offset(0, 0),
                          spreadRadius: 4,
                        ),
                      ],
              ),
              child: Image.asset(Const.assets + holder),
            ),
            heightSpace(8),
            Container(
              width: 64,
              alignment: Alignment.center,
              child: Text(
                title,
                softWrap: true,
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
