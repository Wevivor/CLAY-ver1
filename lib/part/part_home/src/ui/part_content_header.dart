import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/models/models.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:sprintf/sprintf.dart';

import 'wgt_profile_ovlay_list.dart';

// ignore: must_be_immutable
class ContentHeaderPART extends StatelessWidget with AppbarHelper {
  final Board board;
  final listController = Get.put(
    BoardListController(),
  );
  ContentHeaderPART(
    this.board,
  );
  Future<void> initFetch() async {
    listController.cache = [];
    await listController.fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    initFetch();
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          vwTitle(board.info.boardName),
          heightSpace(2.0),
          //TODO: 날짜, 및 개수 sprinf
          Container(
            // padding: EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            child: Text(
              sprintf('%s, %d items',
                  [Jiffy(board.info.registerDate).format('yyyy년 MM월 dd일'), 13]),
              style: baseStyle.copyWith(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
          heightSpace(10.0),
          Container(
            padding: const EdgeInsets.only(top: 10.0, right: 18.0),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileOvlayListWidget(
                    images: [
                      '예림',
                      'Post',
                      'Post',
                      '2+',
                      // 'assets/images/avatar-3.jpg',
                      // 'assets/images/avatar-5.jpg',
                      // 'assets/images/avatar-2.jpg',
                      // 'assets/images/avatar-3.jpg',
                      // 'assets/images/avatar-5.jpg',
                      // 'assets/images/avatar-2.jpg',
                      // 'assets/images/avatar-3.jpg',
                      // 'assets/images/avatar-5.jpg',
                      // 'assets/images/avatar-2.jpg',
                      // 'assets/images/avatar-3.jpg',
                    ],
                    enabledOverlayBorder: true,
                    overlayBorderColor: Colors.white,
                    overlayBorderThickness: 1.0,
                    leftFraction: 0.7,
                    size: 35.0),
                // InkWell(
                //   onTap: () {
                //     // final _controller = Get.put(
                //     //     ChatParticListController(client: http.Client()));
                //     // _controller.fetchItems();
                //     // Get.toNamed('/chat_partic');
                //   },
                //   child: Text(
                //     '...더보기',
                //     style: baseStyle.copyWith(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 12,
                //         color: Color(0XFF959595)),
                //   ),
                // )
              ],
            ),
          ),

          heightSpace(19.0),
        ],
      ),
    );
  }

  Widget vwTitle(final title) {
    return Container(
      // padding: EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.w900),
      ),
    );
  }
}
