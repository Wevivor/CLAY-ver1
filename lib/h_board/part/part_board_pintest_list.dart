// 내보드의 상세리스트 페이지 : 그리드 타입.

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/c_page/sub_post.dart';
import 'package:clay/h_account/controllers/remind_controller.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/part_bs/src/part_bs_board_change.dart';
import 'package:clay/h_content/controllers/content_all_list_controller.dart';
import 'package:clay/h_content/controllers/content_list_controller.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:clay/h_content/part/wgt_content_grid_item.dart';
import 'package:clay/h_content/part_bs/src/part_bs_calendar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:share/share.dart' as share;

import 'package:get/get.dart';
import 'package:sprintf/sprintf.dart';

// ignore: must_be_immutable
class BoardPintestListPART extends StatelessWidget with AppbarHelper {
  BoardPintestListPART();
  @override
  Widget build(BuildContext context) {
    ///--------------------------
    /// 핀테스트 리스트
    ///-------------------------

    return GetBuilder<ContentListController>(
      builder: (controller) {
        final cache = controller.cache;
        final loading = controller.loading;

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
        return StaggeredGridView.countBuilder(
          // physics: NeverScrollableScrollPhysics(),
          primary: false,
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          crossAxisCount: 2,
          mainAxisSpacing: 14.0,
          crossAxisSpacing: 12.0,
          itemCount: ContentListController.to.hasMore
              ? ContentListController.to.cache.length + 1
              : ContentListController.to.cache.length,
          // itemCount: BestListController.to.cache.length,
          itemBuilder: (context, index) {
            final controller = ContentListController.to;
            final cache = controller.cache;
            if (index >= ContentListController.to.cache.length) {
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

            // if (item == null) return Container();

            Contents item = cache[index];

            return ContentGridItemWidget(
              onTap: () async {
                // final postInfo = cache[index];
                // print('------------>${postInfo.id}');
                // final _controller = Get.put(PostController());
                // await _controller.fetchItem(id: postInfo.id);
                // final _authorController = Get.put(PostAuthorController(
                //     uid: postInfo.uid, excludedId: item.id ?? ''));
                // PostAuthorController.to.cache.clear();
                // await _authorController.fetchItems();

                Get.to(() => PostSUB(item: item, parentController: controller));
              },
              nobadge: 1, // TODO : [SH] 임시로 넣어 둔 변수 수정이 필요함.(그리드,리스트 구분)
              title: item.info.contentsTitle,
              // imgUrl: item.info.contentsImages,
              imgUrl: item.info.thumbnails,
              // holder: Const.assets + 'images/smpl_list1.png',
              onMore: () {
                final _controller = Get.put(BoardListMySelectController());
                _controller.cache.clear();
                _controller.selected = -1;
                _controller.fetchItems();
                _showBS(
                  context,
                  vwBoardMenu(context, item),
                );
              },
            );
          },
          // staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
          staggeredTileBuilder: (int index) =>
              // new StaggeredTile.fit(2),
              new StaggeredTile.count(1, index.isEven ? 1 : 1.4),
        );
      },
    );
  }

  // 점메뉴 바텀 시트 (B3)
  Widget vwBoardMenu(BuildContext context, Contents item) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
            alignment: Alignment.bottomCenter,
            height: 15,
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
