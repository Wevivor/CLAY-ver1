import 'package:clay/c_config/config.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_board/models/board_dtos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BSBoardInitDtoHelper {
  Widget vwTitle(final title) {
    return Container(
      padding: EdgeInsets.only(left: 20.0),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
            fontSize: 14,
            color: Get.locale?.languageCode == 'ko'
                ? Color(0xFF000000)
                : Color(0xFF353535),
            fontWeight: Get.locale?.languageCode == 'ko'
                ? FontWeight.w700
                : FontWeight.w800,
            height: Get.locale?.languageCode == 'ko'
                ? 1.17
                : 1.37 // 16.41px, 19.12px
            ),
      ),
    );
  }

  BoardDto createInitBoard() {
    final _profile = HanUserInfoController.to.toProfile();
    final _info = BoardInfoDto(
      boardName: '',
      boardColor: 'FFfc5e20',
      boardBadge: '',
      shareCheck: 0,
      isFixed: false,
      shareCount: 0,
      registerDate: DateTime.now(),
    );
    final _item = BoardDto(
      boardCreator: _profile.toDto(),
      info: _info,
      shareCheck: 0,
      contentsCount: 0,
      registerDate: DateTime.now(),
    );

    return _item;
  }

  // void showBS(context, parentContext, {onMenu, child}) {
  //   showModalBottomSheet(
  //       shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
  //       isScrollControlled: true,
  //       backgroundColor: Colors.white,
  //       context: context,
  //       builder: (BuildContext buildContext) {
  //         return Padding(
  //           padding: MediaQuery.of(context).viewInsets,
  //           child: Container(
  //             child: Wrap(
  //               children: [child],
  //             ),
  //           ),
  //         );
  //       }).then((value) {
  //     showBSSecond(
  //         parentContext,
  //         BottomSheetContentLink(
  //           onMenu: onMenu,
  //           parentContext: parentContext,
  //         ));
  //   });
  // }

  // void showBSSecond(context, child) {
  //   showModalBottomSheet(
  //       shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
  //       isScrollControlled: true,
  //       backgroundColor: Colors.white,
  //       context: context,
  //       builder: (BuildContext buildContext) {
  //         return Padding(
  //           padding: MediaQuery.of(context).viewInsets,
  //           child: Container(
  //             child: Wrap(
  //               children: [child],
  //             ),
  //           ),
  //         );
  //       });
  // }
}
