// 보드 리스트

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class ContentGridItemWidget extends StatelessWidget {
  final title; // 내용의 제목
  final date; // 내용의 날짜
  final contentText; // 내용
  final imgUrl;
  final holder; // 이미지 URL
  final onMore;
  final onTap;
  ContentGridItemWidget({
    this.title,
    this.date,
    this.contentText,
    this.imgUrl,
    this.holder = 'images/no_image.png',
    this.onMore,
    this.onTap,
  });
  static String stand_stock_image =
      'https://firebasestorage.googleapis.com/v0/b/clay-36ada.appspot.com/o/posts%2Fa00L2RmyOzYX2K5LTOJkdWyihXH3%2F9fb1361d-c090-48db-abdf-870233359fed%2F375.jpg?alt=media&token=9afcefbd-8c94-4020-b6b8-46704f01555e';

  final contentStyle = TextStyle(
    fontSize: 13,
    color: Color(0xFF353535),
    fontWeight: FontWeight.normal,
    height: 0.88, // 11.45px,
    letterSpacing: -0.65, // -5%
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap();
      },
      child: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: DecoHelper.roundDeco.copyWith(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: imgUrl == null
                      ? Border.all(width: 1, color: Color(0xFFDEDEDE))
                      : null,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      imgUrl ?? '$stand_stock_image',
                    ).image,
                  ),
                ),
              ),
            ),
            heightSpace(11.0),
            Row(
              children: [
                //widthSpace(4.0),
                // TODO : [SH] 보드 배지 아이콘이 들어가야 함.
                // Sample
                Image.asset(Const.assets + 'icon/hart_small.png'),
                // ========
                widthSpace(3.0),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: (MySize.safeWidth / 2) - 61,
                  ),
                  child: Container(
                    child: Text(
                      title ?? '',
                      style: contentStyle,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                InkWell(
                  onTap: () {
                    if (onMore != null) onMore!();
                  },
                  child: Container(
                    padding: EdgeInsets.only(right: 4.0),
                    width: 12,
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      Const.assets + 'icon/dot_vertical_black.png',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
