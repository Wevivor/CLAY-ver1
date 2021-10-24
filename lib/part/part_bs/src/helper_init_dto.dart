import 'package:clay/c_config/config.dart';
import 'package:clay/controllers/common/commons.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'part_bs_content_link.dart';

class InitDtoHelper {
  Widget vwTitle(final title) {
    return Container(
      padding: EdgeInsets.only(left: 18),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }

  ContentsDto createInitDto({
    final link,
    final comment,
    final title,
    final type,
    final memo,
    final imgURL,
    final thumbnail,
  }) {
    final _boardInfo = BoardListMySelectController.to.boardInfo;
    final _profile = HanUserInfoController.to.toProfile();
    final _info = ContentsInfoDto(
      //  contentsId: contentsId,
      contentsTitle: title,
      contentsUrl: link,
      contentsImages: imgURL,
      contentsDescription: '',
      contentsComment: comment,
      contentsType: type,
      thumbnails: thumbnail,
      contentsUniqueLink: '',
      ContentsCreateDate: DateTime.now(),
      ContentsUpdateDate: DateTime.now(),
    );

    //SUBJECT comment 타입 변경 필요
    //TODO: comment 타입 변경
    final _item = ContentsDto(
      boardInfo: _boardInfo?.toDto(),
      userInfo: _profile.toDto(),
      info: _info,
      contentsAllviewCount: 0,
      contentsMyviewCount: 0,
      contentsAlarmCheck: 0,
      shareInfo: null,
      contentsComment: null,
      ContentsCreateDate: DateTime.now(),
      ContentsUpdateDate: DateTime.now(),
    );
    return _item;
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

  void showBS(context, parentContext, onMenu, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              child: Wrap(
                children: [child],
              ),
            ),
          );
        }).then((value) {
      showBSSecond(
          parentContext,
          BottomSheetContentLink(
            onMenu: onMenu,
            parentContext: parentContext,
          ));
    });
  }

  void showBSSecond(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              child: Wrap(
                children: [child],
              ),
            ),
          );
        });
  }
}