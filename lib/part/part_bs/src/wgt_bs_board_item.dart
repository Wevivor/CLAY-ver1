// Bottom Sheet 의 분류하기 콘텐츠 아이템
// 바로 분류하기

import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

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
    fontSize: 12,
    color: Color(0xFF3a3a3a),
    fontWeight: FontWeight.normal,
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
    }
    return InkWell(
      onTap: () {
        if (onTap != null) onTap();
      },
      child: Container(
        child: Column(
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                color: selected == index ? Color(0xFFE5E5E5) : Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: selected != index
                    ? [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          blurRadius: 10.0,
                          offset: Offset(0, 2),
                        ),
                      ]
                    : null,
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
