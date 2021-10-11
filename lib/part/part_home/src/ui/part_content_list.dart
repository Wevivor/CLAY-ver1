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

              return Column(
                children: [
                  ContentListItemWidget(
                    title: 'eng) 무야호~미니오븐으로6가지 맛 미니바스크 치즈케이크 입니다.',
                    date: '2021.03.22',
                    contentText:
                        '안녕하세요 진영입니다:-) 오늘은 간단하지만 정말 맛있는 바스크치즈케이크를 들고 왔습니다.',
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
}
