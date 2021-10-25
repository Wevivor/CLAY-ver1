import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/part_bs/src/part_bs_board_change.dart';
import 'package:clay/h_content/controllers/content_list_controller.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:clay/h_content/part/wgt_content_list_item.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

// ignore: must_be_immutable
class ContentListPART extends StatelessWidget with AppbarHelper {
  ContentListPART();

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
        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
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
                      _controller.cache = [];
                      _controller.selected = -1;
                      _controller.fetchItems();
                      _showBS(
                          context,
                          BottomSheetBoardChange(
                            parentContext: context,
                            onDone: () {
                              ContentListController.to
                                  .actionDelteItem(item.contentsId ?? '');
                            },
                            onMenu: () {
                              _showBS(context, vwBoardMenu(context, item));
                            },
                            current: item,
                          ));
                    },
                    // title: 'eng) 무야호~미니오븐으로6가지 맛 미니바스크 치즈케이크 입니다.',
                    title: item.info.contentsTitle,

                    date: Jiffy(item.info.ContentsCreateDate)
                        .format('yyyy-MM-dd'),
                    contentText: item.info.contentsDescription,
                    imgUrl: item.info.thumbnails,
                    holder: Const.assets + 'images/smpl_list1.png',
                  ),
                  Divider(
                    color: Color(0xFFEEEFF2),
                  )
                ],
              );
            }),
      );
    });
  }

  Widget vwBoardMenu(BuildContext context, Contents item) {
    return BottomSheetBoardChange(
      parentContext: context,
      onDone: () {
        ContentListController.to.actionDelteItem(item.contentsId ?? '');
      },
      onMenu: () {
        _showBS(context, vwBoardMenu(context, item));
      },
      current: item,
    );
  }

  void _showBS(context, child) {
    showModalBottomSheet(
        context: context,
        enableDrag: false,
        builder: (BuildContext buildContext) {
          return child;
        });
  }
}