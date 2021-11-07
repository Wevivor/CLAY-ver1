import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/c_page/sub_post.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:clay/h_search/part_search/part_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

import 'wgt_search_item.dart';

// ignore: must_be_immutable
class SearchInitPART extends StatelessWidget {
  final parentContext;
  final delegate;

  SearchInitPART({this.parentContext, this.delegate});

  @override
  Widget build(BuildContext context) {
    ///--------------------------
    /// 검색된 리스트
    ///-------------------------
    return Container(
      padding: const EdgeInsets.only(left: 10.0, right: 20.0),
      child: HanListView(
        noItem: Container(),
        controller: FindController.to,
        isSliver: false,
        direction: Axis.vertical,
        itemBuilder: (context, idx) {
          final cache = FindController.to.cache;
          final size = FindController.to.cache.length;
          print('====== Seachr : $size');
          final Contents item = cache[idx];
          //SUBJECT:보드 만들기
          //TODO : 보드 위젯 이후에 작업

          return Material(
            child: SearchItemWidget(
              onTap: () {
                Get.to(() =>
                    PostSUB(item: item, parentController: FindController.to));
                // delegate.close(parentContext, item);
              },
              holder: Const.assets + 'images/smpl_list1.png',
              title: item.info.contentsTitle,
              date: Jiffy(item.info.contentsCreateDate).format('yyyy-MM-dd'),
              contentText: item.info.contentsDescription,
              imgUrl: item.info.thumbnails,
            ),
          );
        },
      ),
    );
  }
}
