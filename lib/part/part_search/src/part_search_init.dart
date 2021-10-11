import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/part/part_search/src/wgt_search_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';

// ignore: must_be_immutable
class SearchInitPART extends StatelessWidget {
  SearchInitPART();

  @override
  Widget build(BuildContext context) {
    return

        ///--------------------------
        /// 검색된 리스트
        ///-------------------------
        GetBuilder<FindController>(builder: (controller) {
      return Container(
        padding: const EdgeInsets.only(left: 10.0, right: 20.0),
        child: HanListView(
          controller: FindController.to,
          isSliver: false,
          direction: Axis.vertical,
          itemBuilder: (context, idx) {
            final cache = FindController.to.cache;
            final size = FindController.to.cache.length;
            //SUBJECT:보드 만들기
            //TODO : 보드 위젯 이후에 작업

            return Column(
              children: [
                SearchItemWidget(
                  title: 'eng) 무야호~미니오븐으로6가지맛 미니바스',
                  date: '2021.03.22',
                  contentText:
                      '안녕하세요 진영입니다:-) 오늘은 간단하지만 정말 맛있는 바스크치즈케이크를 들고 왔습니다.',
                  holder: Const.assets + 'images/smpl_list1.png',
                ),
                Divider(
                  color: Color(0xFFEEEFF2),
                )
              ],
            );
          },
        ),
      );
    });
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
