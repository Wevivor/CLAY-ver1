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
    fontWeight: FontWeight.bold,
  );

  final boardInfoStyle = TextStyle(
    fontSize: 11,
    color: Color(0xFFffffff),
    fontWeight: FontWeight.w500,
  );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap();
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 16,
          right: 12,
          top: 10,
          bottom: 15,
        ),
        decoration: BoxDecoration(
          color: boardColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // color: Colors.red,
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightSpace(12.0),
                  Row(
                    children: [
                      Text(
                        title,
                        style: titleStyle,
                      ),
                      widthSpace(4.0),
                      if (isFix)
                        ImageWidget(
                          height: 18.87,
                          width: 18.87,
                          holder: Const.assets + 'icon/icon_pin_fix.png',
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
            Column(
              children: [
                //SUBEJCT: 오유
                //TODO : 이미지 조정하여 재설정해야 함
                IconButton(
                  onPressed: () {
                    if (onMore != null) onMore();
                  },
                  icon: Icon(Icons.more_vert, color: Colors.white),
                ),
                if (category == '')
                  Container(
                    child: ImageWidget(
                      height: 22,
                      width: 22,
                      holder: Const.assets + 'icon/no_choice.png',
                    ),
                  ),
                if (category == '업무')
                  Container(
                    // color: Colors.red,
                    child: ImageWidget(
                      height: 22,
                      width: 22,
                      holder: Const.assets + 'icon/pencil_small.png',
                    ),
                  ),
                if (category == '계발')
                  Container(
                    child: ImageWidget(
                      height: 22,
                      width: 22,
                      holder: Const.assets + 'icon/medal_small.png',
                    ),
                  ),
                if (category == '좋아')
                  Container(
                    child: ImageWidget(
                      height: 22,
                      width: 22,
                      holder: Const.assets + 'icon/hart_small.png',
                    ),
                  ),
                // heightSpace(4.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
