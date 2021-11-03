import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/remind_controller.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/part_bs/src/part_bs_board_change.dart';
import 'package:clay/h_content/controllers/content_all_list_controller.dart';
import 'package:clay/h_content/controllers/content_list_controller.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:clay/h_content/part/wgt_content_list_item.dart';
import 'package:clay/h_content/part_bs/src/part_bs_calendar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:sprintf/sprintf.dart';
import 'package:share/share.dart' as share;

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
                      _controller.cache.clear();
                      _controller.selected = -1;
                      _controller.fetchItems();
                      _showBS(
                        context,
                        vwBoardMenu(context, item),
                      );
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
          onTap: () => _actionBSFixed(context, item),
          leading: Image.asset(Const.assets + 'icon/icon_pin_fix.png'),
          title: item.info.contentsFixed == true ? Text('상단해제') : Text('상단고정'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () => _actionBSShare(context, item),
          leading: Image.asset(Const.assets + 'icon/icon_share.png'),
          title: Text('공유'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () => _actionBSRemindAlarm(context, item),
          leading: Image.asset(Const.assets + 'icon/ph_bell-ringing.png'),
          title: Text('알람 설정', style: baseStyle.copyWith(color: Colors.black)),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () => _actionBSBoardChange(context, item),
          leading: Image.asset(Const.assets + 'icon/icon_boardchange.png'),
          title: Text('보드변경'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () => _actionBSDelete(context, item),
          leading: Image.asset(Const.assets + 'icon/icon_trashcan.png'),
          title: Text('삭제'),
        ),
      ],
    );
  }
//SUBJECT : BS: 상단 고정
  //TODO: 데이터베이스고정.

  Future<void> _actionBSFixed(BuildContext context, item) async {
    final _contentsCtl = Get.put(ContentsController());
    _contentsCtl.contentsItem = item;
    final _fixed = item.info.contentsFixed;
    await _contentsCtl.actionPin(fix: !_fixed!);
    Get.back();

    Future.microtask(() async {
      ContentAllListController.to.cache.clear();
      await ContentAllListController.to.fetchItems();
    });
  }

  //SUBJECT: 링크
  //TODO: 수정해야 함.
  Future<void> _actionBSShare(BuildContext context, item) async {
    Get.back();
    final _boardUrl = sprintf('%s/%s', [Const.clayBaseUrl, item.contentsId]);
    await share.Share.share(_boardUrl);
  }

  //SUBJECT : BS: 리마인드 알림 설정
  //TODO: 작업범위 여부 고민
  void _actionBSRemindAlarm(BuildContext context, item) {
    Get.back();
    Get.lazyPut(() => ContentsController());
    Get.lazyPut(() => RemindListController());
    Get.lazyPut(() => RemindController());
    RemindController.to.init();
    _showBS(
        context,
        BottomSheetCalendar(
            contents: item,
            onMenu: () {
              _showBS(context, vwBoardMenu(context, item));
            }));
  }

  //SUBJECT : BS: 보드 변경
  Future<void> _actionBSBoardChange(BuildContext context, item) async {
    Get.back();
    // Get.put(ContentListController());
    final _controller = Get.put(BoardListMySelectController());
    _controller.cache.clear();
    _controller.selected = -1;
    _controller.fetchItems();
    _showBS(
        context,
        BottomSheetBoardChange(
          parentContext: context,
          onDone: () {
            Get.lazyPut(() => ContentAllListController());
            ContentAllListController.to.actionDelteItem(item.contentsId ?? '');
          },
          onMenu: () {
            _showBS(context, vwBoardMenu(context, item));
          },
          current: item,
        ));
  }

  //SUBJECT : BS: 컨테츠 삭제
  Future<void> _actionBSDelete(BuildContext context, item) async {
    Get.back();
    Get.lazyPut(() => ContentAllListController());
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
    if (_responce) {
      await ContentAllListController.to.actionDelete(item.info.contentsId);
      ContentAllListController.to.actionDelteItem(item.info.contentsId ?? '');
    }
  }

  void _showBS(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        // barrierColor: Colors.red,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return WillPopScope(
            onWillPop: () {
              //SUBJECT: BS 시스템네비바 검게 방지하는
              delaySetSysyemUIOverlays(250);

              return Future.value(true);
            },
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Wrap(
                children: [child],
              ),
            ),
          );
        });
  }
}
