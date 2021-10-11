import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/app/home/homes.dart';
import 'package:clay/controllers/controllers.dart';

import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';
import 'package:clay/page/sub_post.dart';
import 'package:clay/page/widget/card_post_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:get/get.dart';

import '../../part_home.dart';

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
              // category: '좋아',
              category: null,
              cntFavor: item.favorite.cnt,
              isFavor: exist == null ? false : true,
              // holder: cache[index].img,
              onTap: () async {
                // final postInfo = cache[index];
                // print('------------>${postInfo.id}');
                // final _controller = Get.put(PostController());
                // await _controller.fetchItem(id: postInfo.id);
                // final _authorController = Get.put(PostAuthorController(
                //     uid: postInfo.uid, excludedId: item.id ?? ''));
                // PostAuthorController.to.cache = [];
                // await _authorController.fetchItems();

                Get.to(() => PostSUB(item: index));
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

  Widget vwEnd() {
    return Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          heightSpace(2.0),
          Container(
              alignment: Alignment.bottomCenter,
              height: 11,
              child: Image.asset(Const.assets + 'images/rect_40.png')),
          // heightSpace(18),
          AppBar(
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.chevron_left),
            ),
            centerTitle: true,
            title: Text(
              '보드변경',
              style: baseStyle.copyWith(
                  fontSize: 18,
                  color: Color(0xFF2F2F2F),
                  fontWeight: FontWeight.bold),
            ),
            elevation: 0.0,
            actions: [
              Container(
                alignment: Alignment.center,
                // color: Colors.red,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    '완료',
                    style: baseStyle.copyWith(
                        fontSize: 13,
                        color: Color(0xff017BFE),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              widthSpace(18.87),
            ],
          ),
          vwTitle('기존보드'),
          Container(
            height: 54 + 8 + 11,
            padding: EdgeInsets.only(left: 20),
            child: HanListView(
              isSliver: false,
              direction: Axis.horizontal,
              controller: ContentListController.to,
              itemBuilder: (context, idx) {
                final cache = ContentListController.to.cache;

                return Container(
                  height: 54,
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageNodecWidget(
                        holder: Const.assets + 'icon/hart.png',
                        height: 28,
                        width: 28,
                        onTap: () {
                          Get.toNamed('/collect_detail?index=$idx');
                        },
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'test',
                          textAlign: TextAlign.center,
                          style: baseStyle.copyWith(
                              fontSize: 12,
                              color: Color(0xFF3A3A3A),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          heightSpace(16),

          vwTitle('변경할 보드'),
          heightSpace(10),
          Container(
            height: 54 + 8 + 11,
            padding: EdgeInsets.only(left: 20),
            child: HanListView(
              isSliver: false,
              direction: Axis.horizontal,
              controller: ContentListController.to,
              itemBuilder: (context, idx) {
                final cache = ContentListController.to.cache;

                return Container(
                  height: 54,
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageWidget(
                        holder: Const.assets + 'icon/hart.png',
                        height: 28,
                        width: 28,
                        onTap: () {
                          Get.toNamed('/collect_detail?index=$idx');
                        },
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'test',
                          textAlign: TextAlign.center,
                          style: baseStyle.copyWith(
                              fontSize: 12,
                              color: Color(0xFF3A3A3A),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showBS(context, child) {
    showModalBottomSheet(
        context: context,
        enableDrag: false,
        builder: (BuildContext buildContext) {
          final node = FocusScope.of(context);
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
