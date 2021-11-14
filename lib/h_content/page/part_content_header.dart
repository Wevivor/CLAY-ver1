import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:clay/h_board/widget/wgt_profile_ovlay_list.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:sprintf/sprintf.dart';

// ignore: must_be_immutable

class ContentHeaderPART extends StatelessWidget with AppbarHelper {
  final Board board;

  ContentHeaderPART(
    this.board,
  );

  @override
  Widget build(BuildContext context) {
    // initFetch();

    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          vwTitle(board.info.boardName),
          heightSpace(2.0),
          //TODO: 날짜, 및 개수 sprinf
          Container(
            padding: EdgeInsets.only(left: 3.0),
            alignment: Alignment.centerLeft,
            child: Text(
              sprintf('%s, %d items', [
                Get.locale?.languageCode == 'ko'
                    ? Jiffy(board.info.registerDate).format('yyyy년 MM월 dd일')
                    : Jiffy(board.info.registerDate).format('MMM. do yyyy'),
                board.contentsCount,
              ]),
              style: baseStyle.copyWith(
                fontFamily:
                    Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                fontSize: 13,
                color: Color(0xFFffffff),
                fontWeight: Get.locale?.languageCode == 'ko'
                    ? FontWeight.w700
                    : FontWeight.w800,
                height: 1.37, // 17.76px
                letterSpacing: -0.65, // -5%
              ),
            ),
          ),
          heightSpace(10.0),
          if (board.info.shareCount != null && board.info.shareCount! > 0)
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
                      ],
                      enabledOverlayBorder: true,
                      overlayBorderColor: Colors.white,
                      overlayBorderThickness: 1.0,
                      leftFraction: 0.7,
                      size: 35.0),
                ],
              ),
            ),
          heightSpace(20.0),
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
          fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
          fontSize: Get.locale?.languageCode == 'ko' ? 36 : 30,
          color: Color(0xFFffffff),
          fontWeight: FontWeight.w900,
          height: Get.locale?.languageCode == 'ko'
              ? 1.17
              : 1.37, // 42.19px, 40.98px
        ),
      ),
    );
  }
}
