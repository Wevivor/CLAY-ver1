// 검색 리스트

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class SearchItemContentWidget extends StatelessWidget {
  final title; // 내용의 제목
  final date; // 내용의 날짜
  final contentText; // 내용
  final imgUrl; // 이미지 URL
  final imgHolder;
  final type;
  final onTap;
  SearchItemContentWidget({
    this.title,
    this.date,
    this.contentText,
    this.imgUrl,
    this.type,
    this.onTap,
    this.imgHolder = '/images/no_image.png',
  });
  final titleStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 13,
    color: Color(0xFF353535),
    fontWeight: FontWeight.w700,
    height: 1.31, //17px
    letterSpacing: -0.65, //-5%
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
    return HanListTile(
      onTap: () {
        if (onTap != null) onTap();
      },
      padding: EdgeInsets.only(top: 16, bottom: 15),
      leading: searchItemCase(),
      title: searchItemTitle(),
    );
  }

// HanListTile의 trailing 부분
  Widget searchItemCase() {
    return Container(
      margin: EdgeInsets.only(right: 11.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            blurRadius: 10.0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      width: 38,
      height: 38,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: type == 'memo' // 5 : 웹링크로 추가하기
              ? Image.asset(Const.assets + 'icon/memo_search_edit.png',
                  width: 17, height: 17)
              : Image.network(
                  imgUrl,
                  width: 17,
                  height: 17,
                  fit: BoxFit.fill,
                )),
    );
  }

// HanListTile의 title 부분
  Widget searchItemTitle() {
    return Expanded(
      child: Container(
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
            Text(
              contentText,
              style: contentStyle,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ),
      flex: 100,
    );
  }

// // HanListTile의 trailing 부분
//   Widget searchItemTrail() {
//     return Container(
//       child: ImageWidget(
//         width: 84,
//         height: 84,
//         imgUrl: imgUrl,
//         holder: Const.assets + imgHolder,
//       ),
//     );
//   }
}
