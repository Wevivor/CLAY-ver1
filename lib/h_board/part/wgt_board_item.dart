// 7-1 메인화면의 보드 아이템

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:sprintf/sprintf.dart';

// 메인화면의 보드 1 아이템
class BoardItemWidget extends StatelessWidget {
  final title;
  final cnt;
  final cntShare;
  final category;
  final Color? boardColor;
  final onMore;
  final onTap;
  final isFix;

  BoardItemWidget({
    this.title = '',
    this.cnt = '',
    this.cntShare = '',
    this.category = '',
    this.onMore,
    this.isFix = false,
    this.onTap,
    this.boardColor = Colors.yellow,
  });
  final titleStyle = TextStyle(
    fontSize: 18,
    color: Color(0xFFffffff),
    fontWeight: FontWeight.w700,
    height: 1.17, // Line height : 21.09px
  );

  final boardInfoStyle = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 11,
    color: Color(0xFFffffff),
    fontWeight: FontWeight.w800,
    height: 1.37, // line height : 15.03px
  );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap();
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 12, top: 21, bottom: 15),
        decoration: BoxDecoration(
          color: boardColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: titleStyle,
                        ),
                        widthSpace(5.0),
                        if (isFix)
                          ImageWidget(
                            height: 16.0,
                            width: 14.0,
                            holder: Const.assets + 'icon/pinfix_icon.png',
                          )
                      ],
                    ),
                    heightSpace(3.0),
                    cntShare > 0
                        ? Text(
                            sprintf('%s items, %d Members',
                                [Const.numFormat.format(cnt), cntShare]),
                            style: boardInfoStyle,
                          )
                        : Text(
                            sprintf('%s items', [Const.numFormat.format(cnt)]),
                            style: boardInfoStyle,
                          ),
                  ],
                ),
              ),
              flex: 4,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //SUBEJCT: 오유
                    //TODO : 이미지 조정하여 재설정해야 함
                    Container(
                      height: 28,
                      width: 24,
                      child: IconButton(
                        padding: EdgeInsets.only(right: 6.0),
                        alignment: Alignment.topRight,
                        onPressed: () {
                          if (onMore != null) onMore();
                        },
                        // icon: Icon(Icons.more_vert, color: Colors.white),
                        icon:
                            Image.asset(Const.assets + 'icon/dot_vertical.png'),
                      ),
                    ),
                    if (category == '선택안함')
                      Container(
                        width: 22,
                        height: 22,
                      ),
                    if (category == '일/공부')
                      Container(
                        width: 22,
                        height: 22,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(255, 255, 255, 0.25),
                        ),
                        child:
                            Image.asset(Const.assets + 'icon/pencil_small.png'),
                      ),

                    if (category == '자기계발')
                      Container(
                        width: 22,
                        height: 22,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(255, 255, 255, 0.25),
                        ),
                        child:
                            Image.asset(Const.assets + 'icon/medal_small.png'),
                      ),
                    if (category == 'LIKE')
                      Container(
                        width: 22,
                        height: 22,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(255, 255, 255, 0.25),
                        ),
                        child:
                            Image.asset(Const.assets + 'icon/hart_small.png'),
                      ),
                  ],
                ),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
