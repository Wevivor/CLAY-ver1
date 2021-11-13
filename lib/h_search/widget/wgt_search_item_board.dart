// 검색 리스트

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class SearchItemBoardWidget extends StatelessWidget {
  final title; // 내용의 제목
  final date; // 내용의 날짜
  final contentText; // 내용
  final imgUrl; // 이미지 URL
  final imgHolder;
  final badge;
  final Color? badgeColor;
  final onTap;
  SearchItemBoardWidget({
    this.onTap,
    this.title,
    this.date,
    this.contentText,
    this.imgUrl,
    this.imgHolder = '/images/no_image.png',
    this.badge,
    this.badgeColor = const Color(0xFFcccccc),
  });
  final titleStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 13,
    color: Color(0xFF353535),
    fontWeight: FontWeight.w700,
    height: 1.31, //17px
    letterSpacing: -0.65, //-5%
  );
  final memberStyle = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 11,
    color: Color(0xFF676767),
    fontWeight: FontWeight.w500,
    height: 1.37, //15.03px
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: HanListTile(
        onTap: () {
          if (onTap != null) onTap();
        },
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        padding: EdgeInsets.only(top: 16, bottom: 15),
        leading: searchItemCase(),

        title: searchItemTitle(),
        //trailing: searchItemTrail(),
      ),
    );
  }

// HanListTile의 trailing 부분
  Widget searchItemCase() {
    return Container(
      margin: EdgeInsets.only(left: 7.0, right: 1.0),
      decoration: BoxDecoration(
        color: badgeColor,
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
          child: badge == '자기계발' // 1 : 자기계발 medal
              ? Image.asset(Const.assets + 'icon/medal_search.png',
                  width: 17, height: 17)
              : badge == '일/공부' // 2 : 일/공부 pencil
                  ? Image.asset(Const.assets + 'icon/pencil_search.png')
                  : badge == 'LIKE' // 3 : LIKE  hart
                      ? Image.asset(Const.assets + 'icon/hart_search.png',
                          width: 17, height: 17)
                      : badge == '선택안함' // 4 : 선택안함 no_choice
                          ? Image.asset(Const.assets + 'icon/no_entry.png',
                              width: 17, height: 17)
                          : SizedBox.shrink()),
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
              style: memberStyle,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ),
      flex: 100,
    );
  }

// HanListTile의 trailing 부분
  Widget searchItemTrail() {
    return Container(
      child: ImageWidget(
        width: 84,
        height: 84,
        imgUrl: imgUrl,
        holder: Const.assets + imgHolder,
      ),
    );
  }
}
