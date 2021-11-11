import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/c_page/sub_post.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:clay/h_board/page/ui_borad_content.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:clay/h_search/controllers/find_controller.dart';
import 'package:clay/h_search/widget/wgt_search_item_board.dart';
import 'package:clay/h_search/widget/wgt_search_item_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

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
          final _item = cache[idx];

          if (_item is Board) {
            int _shareCount = _item.info.shareCount ?? 0;
            int _count = _item.contentsCount ?? 0;
            return Column(children: [
              SearchItemBoardWidget(
                onTap: () {
                  Get.off(() => BoardContentUI(board: _item.copyWith()));
                },
                title: _item.info.boardName,
                contentText: (_count > 0 ? '${_count} items' : '') +
                    (_shareCount > 0 ? ', ${_shareCount} members' : ''),
                badge: _item.info.boardBadge,
                badgeColor: Color(int.parse(_item.info.boardColor, radix: 16)),
              ),
              Divider(
                height: 0,
                color: Color(0xFFdedede),
                thickness: 0.3,
              ),
            ]);
          } else {
            final Contents item = cache[idx];

            var _imgUrl = '';
            if (item.info.contentsType == 'photo')
              _imgUrl = item.info.thumbnails ?? '';
            else
              _imgUrl = item.info.contentsImages ?? '';
            // 검색 데티어가 콘텐츠 일 경우

            return Material(
              child: Column(
                children: [
                  SearchItemContentWidget(
                    onTap: () {
                      Get.off(() => PostSUB(
                          item: item, parentController: FindController.to));
                      // delegate.close();
                    },
                    type: item.info.contentsType,
                    title: item.info.contentsTitle,
                    contentText: item.info.contentsDescription!.isNotEmpty
                        ? item.info.contentsDescription
                        : item.info.contentsComment,
                    imgUrl: _imgUrl,
                  ),
                  Divider(
                    height: 0,
                    color: Color(0xFFdedede),
                    thickness: 0.3,
                  ),
                ],
              ),
            );
          }

          //
        },
      ),
    );
  }
}
