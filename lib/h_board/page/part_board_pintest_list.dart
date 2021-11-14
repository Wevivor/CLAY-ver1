// 내보드의 상세리스트 페이지 : 그리드 타입.

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_page/sub_post.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_content/controllers/content_list_controller.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:clay/h_content/widget/wgt_content_grid_item.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

// ignore: must_be_immutable
class BoardPintestListPART extends StatelessWidget with AppbarHelper {
  final onMore;
  BoardPintestListPART({this.onMore});
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
                Get.to(() => PostSUB(item: item, parentController: controller));
              },
              nobadge: '',
              title: item.info.contentsTitle,
              imgUrl: item.info.contentsType == 'photo'
                  ? item.info.thumbnails
                  : item.info.contentsImages,
              contentText: item.info.contentsTitle,
              // imgUrl: item.info.thumbnails,

              onMore: () {
                final _controller = Get.put(BoardListMySelectController());
                _controller.cache.clear();
                _controller.selected = -1;
                _controller.fetchItems();

                if (onMore != null) onMore(item);
                // _showBS(
                //   context,
                //   vwBoardMenu(context, item),
                // );
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
}
