import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/controllers/home/homes.dart';
import 'package:clay/models/models.dart';
import 'package:clay/part/part_bs/part_bs.dart';
import 'package:clay/part/part_bs/src/dialog_share_done.dart';
import 'package:clay/part/part_bs/src/part_board_select.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import 'ui_search.dart';

class ShareServiceUI extends StatefulWidget {
  @override
  _ShareServiceUIState createState() => _ShareServiceUIState();
}

class _ShareServiceUIState extends State<ShareServiceUI>
    with AppbarHelper, BSValidator {
  @override
  void initState() {
    super.initState();

    Get.put(ContentsController());
    Get.put(BoardController());

    Get.put(BoardListMySelectController());
    BoardListMySelectController.to.cache = [];
    BoardListMySelectController.to.fetchItems();
    print('ShareServiceUI  ======== ');
    WidgetsBinding.instance!.addPostFrameCallback(
        (_) => _showBSFromShare(context, vwBoardMenuFromShare(context)));
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    return Container(
      color: Colors.transparent,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool isExit = true;

  void _showBSFromShare(context, child) {
    // Get.put(ContentsController());
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
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
      if (isExit) {
        Get.reset();
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      }
    });
  }

//새보드와 같이 계속하는 경우에 사용함
  void _showBSFromShareContinue(context, child) {
    // Get.put(ContentsController());
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
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
        }).then((value) {});
  }

  Widget vwBoardMenuFromShare(BuildContext context) {
    final node = FocusScope.of(context);

    return GetBuilder<ContentsController>(builder: (controller) {
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
            AppBar(
              elevation: 0.0,
              leading: null,
              automaticallyImplyLeading: false,
              title: Text(
                'Add to..',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              centerTitle: true,
              actions: [
                Container(
                  alignment: Alignment.center,
                  // color: Colors.red,
                  child: InkWell(
                    onTap: () async {
                      final _comment =
                          ContentsController.to.commentController.text;

                      if (comment(_comment) != null || _comment.isEmpty) {
                        AppHelper.showMessage(messages['comment'] ?? '');
                        return;
                      }

                      if (BoardListMySelectController.to.selected < 0) {
                        AppHelper.showMessage(messages['board_select'] ?? '');
                        return;
                      }
                      isExit = false;

                      //SUBJECT: 컨텐츠

                      final _boardInfo =
                          BoardListMySelectController.to.boardInfo;

                      final _controller = ContentsController.to;
                      final _profile = HanUserInfoController.to.toProfile();
                      final _info = ContentsInfoDto(
                        //  contentsId: contentsId,
                        contentsTitle: '',
                        contentsUrl: '',
                        contentsImages: '',
                        contentsDescription: '',
                        contentsComment: _comment,
                        contentsType: 'comment',
                        thumbnails: null,
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
                      await _controller.actionIns(_item);
                      Get.back();
                      await DialogHelper.MessageDialog(
                          context,
                          (context) => ShareDoneDialog(
                              boardName: _boardInfo?.boardName ?? ''));
                      Get.reset();
                      SystemChannels.platform
                          .invokeMethod('SystemNavigator.pop');
                    },
                    child: Text(
                      'Save',
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
            heightSpace(40.0),
            GetBuilder<BoardListMySelectController>(builder: (controller) {
              return BoardSelectPART(onTap: () {
                final _controller = BoardController.to;
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

                _controller.boardItem = _item.toDomain();
                _controller.boardNameController.text = '';

                _showBSFromShareContinue(context, BottomSheetNewBoard(
                  onMenu: () {
                    _showBSFromShare(context, vwBoardMenuFromShare(context));
                  },
                ));
              });
            }),
            heightSpace(29.0),
            if (!ContentsController.to.isCommentShow)
              InkWell(
                onTap: () {
                  ContentsController.to.isCommentShow = true;
                  ContentsController.to.update();
                },
                child: Container(
                  width: 158 + 20,
                  height: 32,
                  alignment: Alignment.center,
                  decoration: DecoHelper.roundDeco.copyWith(
                    color: Color(0xFFF6F6F6),
                  ),
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 35.0,
                    right: 34.0,
                  ),
                  child: Text('Write Comment'),
                ),
              ),
            if (ContentsController.to.isCommentShow)
              Padding(
                padding: EdgeInsets.only(left: 19.0, right: 19.0),
                child: Container(
                  height: 70,
                  decoration: DecoHelper.roundDeco.copyWith(
                    color: Color(0xFFF6F6F6),
                  ),
                  padding: const EdgeInsets.only(
                    left: 12.0,
                    right: 12.0,
                  ),
                  child: TextFormField(
                    maxLines: 2,
                    onTap: () {},

                    // style: accountEditTextStyle,
                    decoration: kInputDecoration.copyWith(
                      fillColor: Color(0xFFF6F6F6),
                      hintText: '|콘텐츠에 남기고 싶은 말을 써주세요.',
                      hintStyle: baseStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(
                            0xFFCACACA,
                          )),
                      isDense: true,
                      errorText: null,
                      errorStyle: TextStyle(
                        color: Colors.transparent,
                        fontSize: 0,
                        height: 0,
                      ),
                    ),
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    onEditingComplete: () => node.unfocus(),
                    controller: ContentsController.to.commentController,
                    validator: (value) {
                      return comment(value);
                    },
                  ),
                ),
              ),
            heightSpace(16.0),
            if (ContentsController.to.isCommentShow) heightSpace(12.0),
          ],
        ),
      );
    });
  }
}