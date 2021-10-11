// 보드 리스트

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class ContentListItemWidget extends StatelessWidget {
  final title; // 내용의 제목
  final date; // 내용의 날짜
  final contentText; // 내용
  final imgUrl;
  final holder; // 이미지 URL
  ContentListItemWidget({
    this.title,
    this.date,
    this.contentText,
    this.imgUrl,
    this.holder = 'images/no_image.png',
  });
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
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: titleStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                flex: 18,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    Const.assets + 'icon/dot_vertical_black.png',
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
          HanListTile(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            padding: EdgeInsets.only(top: 10, bottom: 7),
            title: boardContent(),
            trailing: boardItemTrail(),
          ),
          // Divider(
          //   height: 1,
          //   color: Color(0xFFdedede),
          //   thickness: 0.5,
          // ),
        ],
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
