import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:clay/h_search/part_search/part_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

import 'wgt_search_item.dart';

// ignore: must_be_immutable
class SearchInitPART extends StatelessWidget {
  SearchInitPART();

  @override
  Widget build(BuildContext context) {
    ///--------------------------
    /// 검색된 리스트
    ///-------------------------
    return Container(
      padding: const EdgeInsets.only(left: 10.0, right: 20.0),
      child: HanListView(
        controller: FindController.to,
        isSliver: false,
        direction: Axis.vertical,
        itemBuilder: (context, idx) {
          final cache = FindController.to.cache;
          final size = FindController.to.cache.length;
          print('====== Seachr : $size');
          final Contents item = cache[idx];
          //SUBJECT:보드 만들기
          //TODO : 보드 위젯 이후에 작업

          return Column(
            children: [
              // TODO : [SH] holder 이미지 요청 84 * 84
              SearchItemWidget(
                holder: Const.assets + 'images/smpl_list1.png',
                title: item.info.contentsTitle,
                date: Jiffy(item.info.ContentsCreateDate).format('yyyy-MM-dd'),
                contentText: item.info.contentsDescription,
                imgUrl: item.info.thumbnails,
              ),
              Divider(
                height: 0,
                thickness: 0.5,
                color: Color(0xFFDEDEDE),
              )
            ],
          );
        },
      ),
    );
  }

  Widget getSearchField() {
    // String text = getStringValue(LanguageKey.searchForPhotos, context);
    return Container(
      decoration: new BoxDecoration(
        // color: themeData.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        border: Border.all(
          width: 1.2,
          // color: themeData.colorScheme.surface,
        ),
      ),
    );
  }
}
