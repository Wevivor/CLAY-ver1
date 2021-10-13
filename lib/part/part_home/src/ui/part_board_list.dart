import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/models/boards/boards.dart';

import 'package:clay/page/ui_borad_content.dart';
import 'package:clay/part/part_bs/src/part_bs_board_info.dart';
import 'package:clay/part/part_bs/src/part_bs_share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'wgt_board_item.dart';

// ignore: must_be_immutable
class BoardListPART extends StatelessWidget with AppbarHelper {
  BoardListPART();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
      child: Column(
        children: [
          ///--------------------------
          /// 보드 리스트
          ///-------------------------
          Expanded(
            child: GetBuilder<BoardListController>(builder: (controller) {
              final cache = controller.cache;
              final loading = controller.loading;
              print(
                  ' ==========> MyBoardListController Exist ${cache.toString()}');

              return Container(
                // padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                child: HanListView(
                  controller: controller,
                  isSliver: false,
                  direction: Axis.vertical,
                  itemBuilder: (context, idx) {
                    final cache = controller.cache;
                    final size = controller.cache.length;
                    Board item = cache[idx];

                    //SUBJECT:보드 만들기
                    //TODO : 보드 위젯 이후에 작업
                    //TODO: 공유부분을 추가해야함. 고정을 추가해야 함

                    return Column(
                      children: [
                        BoardItemWidget(
                          onTap: () {
                            Get.to(() => BoardContentUI(board: '1'));
                          },
                          boardColor:
                              Color(int.parse(item.info.boardColor, radix: 16)),
                          title: item.info.boardName,
                          cnt: item.info.contentsCount,
                          cntShare: 0,
                          category: item.info.contentsCount,
                          isFix: item.info.isFixed,
                          onMore: () {
                            Get.put(BoardController());
                            BoardController.to.boardItem = item;
                            // Future.microtask()
                            _showBS(context, vwBoardMenu(context, item));
                            AppHelper.showMessage('모어');
                          },
                        ),
                        Divider(
                          color: Color(0xFFEEEFF2),
                        )
                      ],
                    );
                  },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget vwBoardMenu(BuildContext context, info) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        heightSpace(2.0),
        Container(
            alignment: Alignment.bottomCenter,
            height: 11,
            child: Image.asset(Const.assets + 'images/rect_40.png')),
        heightSpace(34),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () async {
            //SUBJECT : BS: 상단 고정

            BoardInfo? infoDto = BoardController.to.boardItem?.info;
            final _fixed = infoDto?.isFixed;
            await BoardController.to.actionPin(fix: !_fixed!);

            await BoardListController.to
                .actionUpdateItem(BoardController.to.boardItem);
            Get.back();
          },
          leading: Image.asset(Const.assets + 'icon/icon_pin_fix.png'),
          title: BoardController.to.boardItem?.info.isFixed == true
              ? Text('상단해제')
              : Text('상단고정'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () {
            //SUBJECT : BS: 공유 권한 변경
            //TODO: 패딩조정.
            Get.back();
            _showBS(context, BottomSheetShare(onMenu: () {
              _showBS(context, vwBoardMenu(context, info));
            }));
          },
          leading: Image.asset(Const.assets + 'icon/icon_share.png'),
          title: Text('공유'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () {
            //SUBJECT : BS: 보드 체인지
            //TODO: 공유....
            Get.back();
            _showBS(context, BottomSheetBoardInfo(onMenu: () {
              _showBS(context, vwBoardMenu(context, info));
            }));
          },
          leading: Image.asset(Const.assets + 'icon/icon_boardchange.png'),
          title: Text('보드정보 수정'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () async {
            //SUBJECT : BS: 보드 삭제
            //TODO: 삭제....
            Get.back();
            var _responce = false;
            await DialogHelper.MessageDialog(
              context,
              (context) => DeleteDialog(
                title: '보드를 삭제하시겠습니까?',
                deleteTitle: '삭제',
                okTitle: '취소',
                okTap: () {
                  _responce = false;
                },
                deleteTap: () {
                  _responce = true;
                },
              ),
            );

            //SUBJECT: 보드 삭제
            //TODO: 다이어로르 처리, boardList 를 refresh
            if (_responce) {
              await BoardController.to.actionDelete(info.id);
              BoardListController.to.actionDeleteItem(info.id);
            }
          },
          leading: Image.asset(Const.assets + 'icon/icon_trashcan.png'),
          title: Text('삭제'),
        ),
      ],
    );
  }

  void _showBS(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        enableDrag: false,
        builder: (BuildContext buildContext) {
          return child;
        });
  }

  Widget vwTitle(final title) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }
}
