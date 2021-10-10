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
import 'wgt_board_item.dart';

// ignore: must_be_immutable
class ContentListPART extends StatelessWidget with AppbarHelper {
  final bestController = Get.put(
    BestListController(),
  );
  ContentListPART();
  Future<void> initFetch() async {
    bestController.cache = [];
    await bestController.fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    initFetch();
    return

        ///--------------------------
        /// 일반 리스트
        ///-------------------------
        GetBuilder<BestListController>(builder: (controller) {
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
              PostInfo item = cache[index];

              if (item == null) return Container();
              final favorLists = item.favorite.lists;

              final exist = favorLists.firstWhere(
                  (element) => element == AuthController.to.getUser?.uid,
                  orElse: () {
                return null;
              });

              //SUBJECT:보드 만들기
              //TODO : 보드 위젯 이후에 작업

              return Container(
                height: 124.0,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: PostItemCard(
                  imgUrl: item.imgUrl,
                  contentKind: item.contentKind,
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
                  },
                ),
              );
            }),
      );
    });
  }
}
