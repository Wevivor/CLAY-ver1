// 설정에서 받은알림 부분
// 아이템

import 'package:clay/c_config/const.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sprintf/sprintf.dart';

class PushItemWidget extends StatelessWidget {
  final iconUrl;
  final pushtext;
  final classtext;
  final subTitle;
  final timetext;
  final kind;
  final badage;
  final isDel;
  final onDel;
  final onTap;
  PushItemWidget({
    this.iconUrl = '/icon/no_choice_small.png',
    this.onTap,
    this.pushtext,
    this.classtext,
    this.timetext,
    this.subTitle,
    this.kind,
    this.badage,
    this.isDel,
    this.onDel,
  });
  final pushTextStyle = TextStyle(
      fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
      fontSize: 13,
      color: Color(0xFF707070), // color 정보 없음.
      fontWeight: FontWeight.w400,
      height: 1.31, // 17px
      letterSpacing: Get.locale?.languageCode == 'ko' ? -0.65 : 0 // -5%, null
      );
  final classTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 13,
    color: Color(0xFF353535), // color 정보 없음.
    fontWeight: FontWeight.w700,
    height: 1.31, // 17px
    letterSpacing: -0.65, // -5%,
  );
  final timeTextStyle = TextStyle(
    fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
    fontSize: 11,
    color: Color(0xFFc7c7c7),
    fontWeight: FontWeight.w400,
    height: Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 12.89px, 15.03px
    letterSpacing: -0.55, // -5%
  );

  var _icon = 'icon/medal.png';

  @override
  Widget build(BuildContext context) {
    if ('remind' == kind) ;

    if ('count_content' == kind)
      ;
    else if ('best_board' == kind) {
      if ('일/공부' == badage) _icon = 'icon/pencil.png';
      if ('자기계발' == badage) _icon = 'icon/medal.png';
      if ('LIKE' == badage) _icon = 'icon/hart.png';
      if ('선택안함' == badage) _icon = 'icon/no_choice.png';
    } else if ('week_start' == kind) ;

    return Container(
      child: HanListTile(
        padding:
            EdgeInsets.only(left: 7.0, top: 16.0, right: 7.0, bottom: 15.0),
        onTap: () {
          if (onTap != null) onTap();
        },
        leading: Container(
          height: 38,
          width: 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.05), // 0.05
                offset: Offset(0, 0),
                blurRadius: 10,
              ),
            ],
          ),
          child: Image.asset(Const.assets + _icon),
        ),

        // [SH] 피그마의 설명에 따른 코드 작성이 어려움.
        title: Expanded(
          child: Container(
            height: 40,
            // padding: EdgeInsets.only(right: 12),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pushtext,
                  style: pushTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  sprintf('%s %s', [subTitle ?? '', timetext]),
                  style: pushTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),

            // child: Text.rich(
            //   TextSpan(
            //     text: pushtext,
            //     style: pushTextStyle,
            //     children: <TextSpan>[
            //       TextSpan(text: ':' + classtext + ' ', style: classTextStyle),
            //       TextSpan(text: timetext, style: timeTextStyle),
            //     ],
            //   ),
            //   overflow: TextOverflow.ellipsis,
            //   maxLines: 2,
            // ),
          ),
          flex: 80,
        ),
        trailing: isDel
            ? ImageButton(
                onTap: () {
                  if (onDel != null) onDel();
                },
                holder: Const.assets + 'icon/icon_close.png',
              )
            : SizedBox.shrink(),
      ),
    );
  }
}
