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
  final titleStyle = TextStyle(
    fontSize: 16,
    color: Color(0xFF3A3A3A),
    fontWeight: FontWeight.bold,
    height: 1.0,
    letterSpacing: 0.05,
  );
  final contentStyle = TextStyle(
    fontSize: 13,
    color: Color(0xFF676767),
    fontWeight: FontWeight.normal,
    height: 1.2,
    letterSpacing: 0.05,
  );
  final dateStyle = TextStyle(
    fontSize: 11,
    color: Color(0xb2676767), // 약 70% 투명도
    fontWeight: FontWeight.normal,
    height: 1.5,
    letterSpacing: 0.5,
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
                  border: Border.all(width: 1, color: Color(0xFFC1C1C1)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.network(
                      imgUrl ?? '$stand_stock_image',
                    ).image,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                widthSpace(4.0),
                Text(
                  title ?? '',
                  style: contentStyle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Expanded(
                  child: Container(),
                ),
                InkWell(
                  onTap: () {
                    if (onMore != null) onMore!();
                  },
                  child: Container(
                    width: 22,
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

// HanListTile의 title 부분
  Widget boardContent() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contentText,
              style: contentStyle,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            heightSpace(5),
            Text(
              date,
              style: dateStyle,
            ),
          ],
        ),
      ),
      flex: 100,
    );
  }

// HanListTile의 trailing 부분
  Widget boardItemTrail() {
    return Container(
      child: ImageWidget(
        width: 74,
        height: 74,
        imgUrl: imgUrl,
        holder: holder,
      ),
    );
  }
}