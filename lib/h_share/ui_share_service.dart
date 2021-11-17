import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/part_bs/dialog_share_done.dart';
import 'package:clay/h_board/part_bs/part_board_select.dart';
import 'package:clay/h_board/part_bs/part_bs_new_board.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_share/share_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metadata_fetch/metadata_fetch.dart';

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
    initFetch();
    debugPrint('ShareServiceUI  ======== ');
    // delaySetSysyemUIOverlays(500);
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Future.microtask(() => _showBS(context, vwBoardMenu(context)));
      // Future.delayed(Duration(milliseconds: 200), () {});
    });
  }

  Future<void> initFetch() async {
    BoardListMySelectController.to.cache.clear();
    await BoardListMySelectController.to.fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    return AnnotatedRegion(
      value: GlobalStyle.configStatusTheme,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: 50.0,
          // color: Colors.transparent,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool isExit = true;

  void _showBS(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        // barrierColor: Colors.red,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return WillPopScope(
            onWillPop: () {
              //SUBJECT: BS 시스템네비바 검게 방지하는
              delaySetSysyemUIOverlays(250);

              return Future.value(true);
            },

            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                child: Wrap(
                  children: [child],
                ),
              ),
            ),
            // ),
          );
        }).then((value) async {
      if (isExit) {
        Get.reset();

        await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      }
    });
  }

//새보드와 같이 계속하는 경우에 사용함
  void _showBSContinue(context, child) {
    // Get.put(ContentsController());
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return WillPopScope(
            onWillPop: () {
              //SUBJECT: BS 시스템네비바 검게 방지하는
              delaySetSysyemUIOverlays(300);

              return Future.value(true);
            },
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                child: Wrap(
                  children: [child],
                ),
              ),
            ),
          );
        }).then((value) {});
  }

  Widget vwBoardMenu(BuildContext context) {
    final node = FocusScope.of(context);

    return GetBuilder<ContentsController>(builder: (controller) {
      return Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
                topLeft: Radius.circular(26), topRight: Radius.circular(26))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                alignment: Alignment.bottomCenter,
                height: 15,
                child: Image.asset(Const.assets + 'images/rect_40.png')),
            AppBar(
              elevation: 0.0,
              leading: null,
              automaticallyImplyLeading: false,
              title: Text(
                'share.bs.appbar.title.class'.tr, // 바로 분류하기
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w700,
                  height: 1.17, // 21.09px
                ),
              ),
              centerTitle: true,
              actions: [
                Container(
                  alignment: Alignment.center,
                  // color: Colors.red,
                  child: InkWell(
                    onTap: () => _actionSubmit(context),
                    child: Text(
                      'com.btn.save'.tr, // 완료(save)
                      style: baseStyle.copyWith(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        color: Color(0xFF017BFE),
                        fontWeight: FontWeight.w400,
                        height: 1.17, // 16.41px
                      ),
                    ),
                  ),
                ),
                widthSpace(20.0),
              ],
            ),
            heightSpace(19.0),
            GetBuilder<BoardListMySelectController>(builder: (controller) {
              return Container(
                height: 54 + 8 + 11 + 10,
                child: BoardSelectPART(onTap: () async {
                  final _controller = BoardController.to;
                  final _profile = HanUserInfoController.to.toProfile();

                  final _board = _controller.initBoardItem();

                  _controller.boardItem = _board;
                  _controller.boardNameController.text = '';

                  _showBSContinue(
                      context,
                      BottomSheetNewBoard(
                        onMenu: () {
                          _showBS(context, vwBoardMenu(context));
                        },
                        onDone: () async {
                          Get.lazyPut(() => BoardListController());
                          BoardListController.to.cache.clear();
                          await BoardListController.to.fetchItems();

                          BoardListMySelectController.to.cache.clear();
                          await BoardListMySelectController.to.fetchItems();
                        },
                      ));
                }),
              );
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
                  child: Text(
                    'share.bs.body.btn.cmt'.tr, // 코멘트 입력하기(Write Comment)
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      height: 1.17, // 16.41px
                    ),
                  ),
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
                      hintText: 'share.bs.body.pholder.cmt'
                          .tr, // |콘텐츠에 남기고 싶은 말을 써주세요.(Write something about this item.)
                      hintStyle: baseStyle.copyWith(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0xFF707070),
                          fontWeight: FontWeight.w400,
                          height: 1.17, // 16.41px
                          letterSpacing: -0.7 //-5%
                          ),
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

  Future<void> _actionSubmit(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final _comment = ContentsController.to.commentController.text;

    // if (comment(_comment) != null || _comment.isEmpty) {
    //   AppHelper.showMessage(messages['comment'] ?? '');
    //   return;
    // }

    if (BoardListMySelectController.to.selected < 0) {
      AppHelper.showMessage(messages['board_select'] ?? '');
      return;
    }
    isExit = false;

    final _link = ShareController.to.sharedText;
    var data = await MetadataFetch.extract(_link);

    //SUBJECT: 컨텐츠
    Get.lazyPut(() => BoardListController());
    final _boardInfo = BoardListMySelectController.to.boardInfo;

    final _controller = ContentsController.to;
    final _profile = HanUserInfoController.to.toProfile();
    final _item = await _controller.createContentsDto(
      _profile,
      _boardInfo,
      comment: _comment,
      type: 'link',
      imgURL: data?.image,
      link: data?.url,
      title: data?.title,
    );

    await _controller.actionIns(_item);
    Get.back();
    await DialogHelper.MessageDialog(context,
        (context) => ShareDoneDialog(boardName: _boardInfo?.boardName ?? ''));
    Get.reset();
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }
}
