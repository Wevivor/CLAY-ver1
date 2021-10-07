import 'package:clay/controllers/app/apps.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/page/sub_post.dart';
import 'package:clay/page/widget/card_post_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';

// ignore: must_be_immutable
class SearchInitPART extends StatelessWidget {
  SearchInitPART();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: [
          ///--------------------------
          ///타이틀
          ///-------------------------

          ///--------------------------
          /// 브랜드 핀테스트 리스트
          ///-------------------------
          GetBuilder<FindController>(
            builder: (controller) => new StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              crossAxisCount: 2,
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
              // itemCount: 8,
              itemCount: FindController.to.hasMore
                  ? FindController.to.cache.length + 1
                  : FindController.to.cache.length,
              itemBuilder: (context, index) {
                // final controller = PostListController.to;
                final cache = controller.cache;
                final item = cache[index];
                if (item == null) return Container();

                final favorLists = item.favorite?.lists;
                final exist = favorLists?.firstWhere(
                    (element) => element == AuthController.to.getUser?.uid,
                    orElse: () {
                  return null;
                });

                return PostItemCard(
                  imgUrl: item.imageUrl,
                  contentKind: item.contentKind,
                  cntFavor: item.favorite?.cnt ?? 0,
                  isFavor: exist == null ? false : true,
                  // imgUrl: cache[index].img,
                  onTap: () {
                    final postInfo = cache[index];
                    Get.to(() => PostSUB(item: postInfo));
                  },
                );
              },
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(1, index.isEven ? 1.2 : 1.8),
            ),
          ),
        ],
      ),
    );
  }

  Widget getSearchField() {
    // String text = getStringValue(LanguageKey.searchForPhotos, context);
    return Container(
      decoration: new BoxDecoration(
        // color: themeData.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        border: Border.all(
          width: 1.2,
          // color: themeData.colorScheme.surface,
        ),
      ),
    );
  }
}
