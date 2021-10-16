import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/models/models.dart';

import 'package:clay/part/part_bs/part_bs.dart';
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

    return GetBuilder<ContentAllListController>(
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
              child: Text('아이템이 없습니다'),
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
          itemCount: ContentAllListController.to.hasMore
              ? ContentAllListController.to.cache.length + 1
              : ContentAllListController.to.cache.length,
          // itemCount: BestListController.to.cache.length,
          itemBuilder: (context, index) {
            final controller = ContentAllListController.to;
            final cache = controller.cache;
            Contents item = cache[index];

            if (item == null) return Container();

            // final favorLists = item.favorite.lists;
            // final exist = favorLists.firstWhere(
            //     (element) => element == AuthController.to.getUser?.uid,
            //     orElse: () {
            //   return null;
            // });

            // return Container();

            //SUBJECT: 콘텐츠 아이템
            //TODO
            return ContentGridItemWidget(
              title: item.info.contentsTitle,
              imgUrl: item.info.contentsImages,
              contentText: item.info.contentsTitle,
              // holder: cache[index].img,
              // onTap: () async {
              //   final postInfo = cache[index];
              //   print('------------>${postInfo.id}');
              //   final _controller = Get.put(PostController());
              //   await _controller.fetchItem(id: postInfo.id);
              //   // final _authorController = Get.put(PostAuthorController(
              //   //     uid: postInfo.uid, excludedId: item.id ?? ''));
              //   // PostAuthorController.to.cache = [];
              //   // await _authorController.fetchItems();

              //   Get.to(() => PostSUB(item: postInfo));
              //   // Get.to(() => PostSUB(item: index));
              // },
              onMore: () {
                _showBS(context, vwBoardMenu(context, item));
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
          onTap: () async {
            //SUBJECT : BS: 상단 고정
            //TODO: 데이터베이스고정.
            final _contentsCtl = Get.put(ContentsController());
            _contentsCtl.contentsItem = item;
            final _fixed = item.info.contentsFixed;
            await _contentsCtl.actionPin(fix: !_fixed!);
            Get.back();

            Future.microtask(() async {
              ContentAllListController.to.cache = [];
              await ContentAllListController.to.fetchItems();
            });
          },
          leading: Image.asset(Const.assets + 'icon/icon_pin_fix.png'),
          title: item.info.contentsFixed == true ? Text('상단해제') : Text('상단고정'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () async {
            Get.back();
            final _boardUrl =
                sprintf('%s/%s', [Const.clayBaseUrl, item.contentsId]);
            await share.Share.share(_boardUrl);
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
            //SUBJECT : BS: 리마인드 알림 설정
            //TODO: 작업범위 여부 고민
            Get.back();
            AppHelper.showMessage('리마인드 알람 관리');
            // _showBS(context, BottomSheetBoardInfo(onMenu: () {
            //   _showBS(context, vwBoardMenu(context));
            // }));
          },
          leading: Image.asset(Const.assets + 'icon/ph_bell-ringing.png'),
          title: Text('알람 설정', style: baseStyle.copyWith(color: Colors.red)),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () {
            //SUBJECT : BS: 보드 변경

            Get.back();
            // Get.put(ContentListController());
            final _controller = Get.put(BoardListMySelectController());
            _controller.cache = [];
            _controller.selected = -1;
            _controller.fetchItems();
            _showBS(
                context,
                BottomSheetBoardChange(
                  onDone: () {
                    ContentAllListController.to
                        .actionDelteItem(item.contentsId ?? '');
                  },
                  onMenu: () {
                    _showBS(context, vwBoardMenu(context, item));
                  },
                  current: item,
                ));
          },
          leading: Image.asset(Const.assets + 'icon/icon_boardchange.png'),
          title: Text('보드변경'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () async {
            //SUBJECT : BS: 컨테츠 삭제
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
            if (_responce) {
              await ContentAllListController.to
                  .actionDelete(item.info.contentsId);
              ContentAllListController.to
                  .actionDelteItem(item.info.contentsId ?? '');
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
