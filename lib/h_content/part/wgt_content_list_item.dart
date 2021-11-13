// 보드 리스트

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/src/tile_han_list_new.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class ContentListItemWidget extends StatelessWidget {
  final title; // 내용의 제목
  final date; // 내용의 날짜
  final contentText; // 내용
  final imgUrl; // 이미지 URL
  final holder;
  final onMore;
  ContentListItemWidget({
    this.title,
    this.date,
    this.contentText,
    this.imgUrl,
    this.holder = 'images/no_image.png',
    this.onMore,
  });
  final titleStyle = TextStyle(
    fontSize: 16,
    color: Color(0xFF353535),
    fontWeight: FontWeight.w700, // weight : 750
    height: 0.88, //14.1px
    letterSpacing: -0.8, //-0.5px
  );
  final contentStyle = TextStyle(
    fontSize: 13,
    color: Color(0xFF707070),
    fontWeight: FontWeight.w400,
    height: 1.5, //19.5px
    letterSpacing: -0.65, // -5%
  );
  final dateStyle = TextStyle(
      fontSize: 11,
      color: Color.fromRGBO(112, 112, 112, 0.7),
      fontWeight: FontWeight.w400,
      height: 1.5, // 16.5px
      letterSpacing: -0.55 // -5%
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
                    title ?? '',
                    style: titleStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                flex: 12,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    if (onMore != null) onMore();
                  },
                  child: Container(
                    width: 24,
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      Const.assets + 'icon/dot_vertical_black.png',
                    ),
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
          //SUBJECT : SH
          //TODO : 위젯 없음.

          HanListTileNew(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            padding: EdgeInsets.only(top: 10, bottom: 7),
            title: boardContent(),
            trailing: boardItemTrail(),
          ),
          Divider(
            height: 0,
            color: Color(0xFFDEDEDE),
            thickness: 0.5,
          ),
          heightSpace(18.0),
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
            heightSpace(4.0),
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

  Widget boardItemTrail() {
    return Container(
      decoration: DecoHelper.roundDeco.copyWith(
        color: Colors.white,
      ),
      width: 74,
      height: 74,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: ImageWidget(
          imgUrl: imgUrl,
          holder: 'assets/img/holder_img.png',
          width: 74,
          height: 74,
        ),
      ),
    );
  }
}
