import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/c_page/sub_post.dart';
import 'package:clay/h_account/controllers/remind_controller.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/part_bs/src/part_bs_board_change.dart';
import 'package:clay/h_content/controllers/content_all_list_controller.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_content/controllers/contents_list_all_my_select_controller.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:clay/h_content/part_bs/src/part_bs_calendar.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:share/share.dart' as share;
import 'package:get/get.dart';
import 'package:sprintf/sprintf.dart';

import 'wgt_content_grid_item.dart';

// ignore: must_be_immutable
class ContentAllPintestPART extends StatelessWidget with AppbarHelper {
  ContentAllPintestPART();
  @override
  Widget build(BuildContext context) {
    ///--------------------------
    /// 핀테스트 리스트
    ///-------------------------
    return GetBuilder<ContentAllListController>(builder: (controller) {
      // final controller = ContentAllListController.to;
      final cache = controller.cache;
      final loading = controller.loading;
      print('${controller.hasMore}');

      if (loading && cache.length == 0) {
        return Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }

      if (!loading && cache.length == 0) {
        return Container(
          child: Center(
            child: Text('아이템이 없습니다'), // TODO : [SH] 현재 번역하지 않음.
          ),
        );
      }
      return new StaggeredGridView.countBuilder(
        // physics: NeverScrollableScrollPhysics(),
        primary: false,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        crossAxisCount: 2,
        mainAxisSpacing: 14.0,
        crossAxisSpacing: 12.0,
        itemCount: controller.hasMore
            ? controller.cache.length + 1
            : controller.cache.length,
        // itemCount: ContentAllListController.to.cache.length,
        itemBuilder: (context, index) {
          final controller = ContentAllListController.to;
          final cache = controller.cache;
          final hasMore = controller.hasMore;
          if (hasMore && index == cache.length) {
            debugPrint(
                '[StaggeredGridView]:[microtask] HasMore:${hasMore},${controller.cache.length},$index');
            Future.microtask(() {
              controller.fetchItems(nextId: index, term: controller.filter);
            });
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          Contents item = cache[index];
          debugPrint(
              '[StaggeredGridView]: HasMore:${hasMore},${controller.cache.length},$index');
          if (index < cache.length) {
            //SUBJECT: 콘텐츠 아이템
            //TODO
            return Container(
              padding: EdgeInsets.only(top: 6.0),
              child: ContentGridItemWidget(
                nobadge: item.boardInfo?.boardBadge ?? '선택안함',
                title: item.info.contentsTitle,
                imgUrl: item.info.contentsType == 'photo'
                    ? item.info.thumbnails
                    : item.info.contentsImages,
                contentText: item.info.contentsTitle,
                onTap: () {
                  Get.to(
                      () => PostSUB(item: item, parentController: controller));
                },
                onMore: () {
                  debugPrint('======> Show BS');
                  _showBS(context, vwBoardMenu(context, item));
                },
              ),
            );
          } else {
            if (hasMore)
              return SizedBox.shrink();
            else
              return Container(
                padding: EdgeInsets.only(top: 6.0),
                child: ContentGridItemWidget(
                  title: item.info.contentsTitle,
                  imgUrl: item.info.contentsImages,
                  // imgUrl: item.info.thumbnails,
                  contentText: item.info.contentsTitle,
                  onTap: () {
                    Get.to(() =>
                        PostSUB(item: item, parentController: controller));
                  },

                  onMore: () {
                    debugPrint('======> Show BS');
                    _showBS(context, vwBoardMenu(context, item));
                  },
                ),
              );
          }
        },
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(1, index.isEven ? 1 : 1.4),
      );
    });
  }

  // All Content 리스트에서 점메뉴
  Widget vwBoardMenu(BuildContext context, Contents item) {
    final menuStyle = TextStyle(
      fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
      fontSize: 14,
      color: Color(0xFF000000),
      fontWeight:
          Get.locale?.languageCode == 'ko' ? FontWeight.w400 : FontWeight.w500,
      height:
          Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 16.41px, 19.12px
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
            alignment: Alignment.bottomCenter,
            height: 15,
            child: Image.asset(Const.assets + 'images/rect_40.png')),
        heightSpace(20.0),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSFixed(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_pin_fix.png')),
          title: item.info.contentsFixed == true // 상단고정
              ? Text('com.bs.body.menu.pinOff'.tr, style: menuStyle)
              : Text('com.bs.body.menu.pinOn'.tr, style: menuStyle),
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSShare(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_share.png')),
          title: Text('com.bs.body.menu.share'.tr, style: menuStyle), // 공유
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSRemindAlarm(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/ph_bell-ringing.png')),
          title: Text('contents.bs.body.menu.reminder'.tr,
              style: menuStyle), // 알람 설정
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSBoardChange(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_boardchange.png')),
          title: Text('contents.bs.body.menu.moveBoard'.tr,
              style: menuStyle), // 보드 변경
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 23.0, bottom: 21.0),
          onTap: () => _actionBSDelete(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_trashcan.png')),
          title: Text('com.bs.body.menu.delBoard'.tr, style: menuStyle), // 삭제
        ),
      ],
    );
  }
//SUBJECT : BS: 상단 고정
  //TODO: 데이터베이스고정.

  Future<void> _actionBSFixed(BuildContext context, item) async {
    final _contentsCtl = Get.put(ContentsController());
    _contentsCtl.contentsItem = item;
    final _fixed = item.info.contentsFixed ?? false;
    await _contentsCtl.actionPin(fix: !_fixed!);

    ContentAllListController.to.cache.clear();
    await ContentAllListController.to.fetchItems();
    Get.back();
  }

  //SUBJECT: 링크
  //TODO: 수정해야 함.
  Future<void> _actionBSShare(BuildContext context, item) async {
    Get.back();
    final _boardUrl = sprintf('%s', [item.info.contentsUrl]);
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
          onDone: () async {
            ContentAllListController.to.cache.clear();
            final _selected = ContentsListAllMySelectController.to.selected;
            if (_selected > 0) {
              final _board =
                  ContentsListAllMySelectController.to.cache[_selected - 1];
              await ContentAllListController.to
                  .fetchItems(term: _board.boardId);
            } else
              await ContentAllListController.to.fetchItems();
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
    var _responce = false;
    await DialogHelper.MessageDialog(
      context,
      (context) => DeleteDialog(
        title: 'contents.bs.dlg.question.delete'.tr, // 콘텐츠를 삭제하시겠어요?
        deleteTitle: 'com.btn.delete'.tr, // 삭제
        okTitle: 'com.btn.cancel'.tr, // 취소
        okTap: () {
          _responce = false;
        },
        deleteTap: () {
          _responce = true;
        },
      ),
    );
    if (_responce) {
      await ContentsController.to.actionDelete(item.info.contentsId);
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
