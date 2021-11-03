// 검색 리스트 아이템

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class SearchItemWidget extends StatelessWidget {
  final title; // 내용의 제목
  final date; // 내용의 날짜
  final contentText; // 내용
  final imgUrl;
  final holder; // 이미지 URL
  final onTap;
  SearchItemWidget({
    this.title,
    this.date,
    this.contentText,
    this.imgUrl,
    this.holder = 'images/no_image.png',
    this.onTap,
  });
  final titleStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    color: Color(0xFF3A3A3A),
    fontWeight: FontWeight.w700,
    height: 0.88, // 14.1px
    letterSpacing: -0.8, //-5%
  );
  final contentStyle = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 13,
      color: Color(0xFF676767),
      fontWeight: FontWeight.w400,
      height: 1.5, //19.5px
      letterSpacing: -0.65 //-5%,
      );
  final dateStyle = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 11,
    color: Color.fromRGBO(103, 103, 103, 0.7), // 약 70% 투명도
    fontWeight: FontWeight.w400,
    height: 1.5, // 16.5px
    letterSpacing: 0.55, // -5%
  );
  @override
  Widget build(BuildContext context) {
    return HanListTile(
      onTap: () {
        if (onTap != null) onTap();
      },
      padding: EdgeInsets.only(top: 17.0, bottom: 14.0),
      title: Container(
        height: 92,
        child: Column(
          children: [
            searchItemTitle(),
          ],
        ),
      ),
      trailing: Container(
        alignment: Alignment.topLeft,
        height: 92,
        padding: const EdgeInsets.only(left: 12.0),
        child: searchItemTrail(),
      ),
    );
  }

// HanListTile의 title 부분
  Widget searchItemTitle() {
    return Expanded(
      child: Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: titleStyle,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            heightSpace(13),
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
      flex: 50,
    );
  }

// HanListTile의 trailing 부분
  Widget searchItemTrail() {
    return Container(
      alignment: Alignment.topLeft,
      child: ImageWidget(
        width: 84,
        height: 84,
        imgUrl: imgUrl,
        holder: Const.assets + holder,
      ),
    );
  }
}
