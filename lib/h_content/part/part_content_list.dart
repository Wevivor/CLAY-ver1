// 내보드 상세 리스트 페이지 : 리스트 타입

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_content/controllers/content_list_controller.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:clay/h_content/part/wgt_content_list_item.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

// ignore: must_be_immutable
class ContentListPART extends StatelessWidget with AppbarHelper {
  final onMore;
  ContentListPART({this.onMore});

  @override
  Widget build(BuildContext context) {
    return

        ///--------------------------
        /// 일반 리스트
        ///-------------------------
        GetBuilder<ContentListController>(builder: (controller) {
      final cache = controller.cache;
      final loading = controller.loading;
      return Container(
        child: HanListView(
            controller: controller,
            isSliver: false,
            shrinkWrap: true,
            direction: Axis.vertical,
            itemBuilder: (context, index) {
              final cache = controller.cache;
              Contents item = cache[index];

              if (item == null) return Container();

              //SUBJECT:보드 만들기
              //TODO : 보드 위젯 이후에 작업

              return Column(
                children: [
                  ContentListItemWidget(
                    onMore: () {
                      final _controller =
                          Get.put(BoardListMySelectController());
                      _controller.cache.clear();
                      _controller.selected = -1;
                      _controller.fetchItems();
                      if (this.onMore != null) onMore(item);
                    },
                    title: item.info.contentsTitle,
                    date: Jiffy(item.info.contentsCreateDate)
                        .format('yyyy-MM-dd'),
                    contentText: item.info.contentsDescription,
                    imgUrl: item.info.thumbnails,
                    // holder: Const.assets + 'img/holder_img.png',
                  ),
                ],
              );
            }),
      );
    });
  }
}
