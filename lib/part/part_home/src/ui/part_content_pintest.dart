import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/app/home/homes.dart';
import 'package:clay/controllers/controllers.dart';

import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';
import 'package:clay/page/sub_post.dart';
import 'package:clay/page/widget/card_post_item.dart';
import 'package:clay/part/part_bs/part_bs.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:get/get.dart';

import '../../part_home.dart';

// ignore: must_be_immutable
class ContentPintestPART extends StatelessWidget with AppbarHelper {
  ContentPintestPART();
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
          itemCount: ContentListController.to.hasMore
              ? ContentListController.to.cache.length + 1
              : ContentListController.to.cache.length,
          // itemCount: BestListController.to.cache.length,
          itemBuilder: (context, index) {
            final controller = ContentListController.to;
            final cache = controller.cache;
            PostInfo item = cache[index];

            if (item == null) return Container();

            final favorLists = item.favorite.lists;
            final exist = favorLists.firstWhere(
                (element) => element == AuthController.to.getUser?.uid,
                orElse: () {
              return null;
            });

            //SUBJECT: 콘텐츠 아이템
            //TODO
            return PostItemCard(
              title: '베란다 텃밭에서 방울 ...',
              imgUrl: item.imgUrl,
              category: '좋아',
              cntFavor: item.favorite.cnt,
              isFavor: exist == null ? false : true,
              // holder: cache[index].img,
              onTap: () async {
                final postInfo = cache[index];
                print('------------>${postInfo.id}');
                final _controller = Get.put(PostController());
                await _controller.fetchItem(id: postInfo.id);
                // final _authorController = Get.put(PostAuthorController(
                //     uid: postInfo.uid, excludedId: item.id ?? ''));
                // PostAuthorController.to.cache = [];
                // await _authorController.fetchItems();

                Get.to(() => PostSUB(item: postInfo));
                // Get.to(() => PostSUB(item: index));
              },
              onMore: () {
                _showBS(context, vwBoardMenu(context));
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

  Widget vwBoardMenu(BuildContext context) {
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
          onTap: () {
            //SUBJECT : BS: 상단 고정
            //TODO: 데이터베이스고정.
            Get.back();
          },
          leading: Image.asset(Const.assets + 'icon/icon_pin_fix.png'),
          title: Text('상단고정'),
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
              _showBS(context, vwBoardMenu(context));
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
            AppHelper.showMessage('리마인드 알람 관리');
            // _showBS(context, BottomSheetBoardInfo(onMenu: () {
            //   _showBS(context, vwBoardMenu(context));
            // }));
          },
          leading: Image.asset(Const.assets + 'icon/ph_bell-ringing.png'),
          title: Text('알람 설정'),
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
              _showBS(context, vwBoardMenu(context));
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
            if (_responce) {
              AppHelper.showMessage('보드를 삭제');
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
