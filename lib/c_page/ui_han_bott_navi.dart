import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_account/models/users/users.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/models/board_dtos.dart';
import 'package:clay/h_board/page/ui_board.dart';
import 'package:clay/h_board/part_bs/src/part_bs_new_board.dart';
import 'package:clay/h_content/controllers/content_all_list_controller.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_content/page/ui_content.dart';
import 'package:clay/h_content/part_bs/src/part_bs_content_link.dart';
import 'package:clay/h_content/part_bs/src/part_bs_content_memo.dart';
import 'package:clay/h_content/part_bs/src/part_bs_content_photo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bott_navi_controller.dart';

class HanBottomNavigationBar extends StatefulWidget {
  @override
  _HanBottomNavigationBarState createState() => _HanBottomNavigationBarState();
}

class _HanBottomNavigationBarState extends State<HanBottomNavigationBar>
    with AppbarHelper {
  final sheetTitle = baseStyle.copyWith(
    fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
    fontSize: 14,
    fontWeight:
        Get.locale?.languageCode == 'ko' ? FontWeight.w400 : FontWeight.w500,

    height: 1.17, // line height : 16.41px
    color: Colors.black,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(HanBottomNavigationBar oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget vwBottomMenu(BuildContext context) {
    // print('---------${_getcontroller?.index}');
    final _index = BottomNaviController.to.getIndex;
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.22),
            blurRadius: 5.0,
            offset: Offset(0, -0.5),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 8, left: 72, right: 68),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: HanNaiviBarWidget(
                      height: 18,
                      width: 18,
                      label: 'com.navi.menu.myboard'.tr,
                      isOn: _index == 0 ? true : false,
                      holder: _index == 0
                          ? 'assets/icon/myboard_on.png'
                          : 'assets/icon/myboard_off.png',
                      onTap: () {
                        BottomNaviController.to.index = 0;
                        BottomNaviController.to.update();
                      },
                    ),
                  ),
                  HanNaiviBarWidget(
                    height: 17,
                    width: 17,
                    label: 'com.navi.mycontents'.tr,
                    isOn: _index == 1 ? true : false,
                    holder: _index == 1
                        ? 'assets/icon/mycontents_on.png'
                        : 'assets/icon/mycontents_off.png',
                    onTap: () async {
                      final contentAllListController = Get.put(
                        ContentAllListController(pageSize: 2),
                      );
                      contentAllListController.cache.clear();
                      await contentAllListController.fetchItems();
                      BottomNaviController.to.index = 1;
                      BottomNaviController.to.update();
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget vwBody(BuildContext context) {
    int current = BottomNaviController.to.getIndex;

    switch (current) {
      case 0:
        return BoardUI();

      case 1:
        return ContentUI();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: GetBuilder<BottomNaviController>(builder: (_) => vwBody(context)),
        bottomNavigationBar: Stack(
          alignment: Alignment.center,
          children: [
            GetBuilder<BottomNaviController>(
                builder: (_) => vwBottomMenu(context)),
            Container(
              width: 36,
              height: 36,
              child: FloatingActionButton(
                child: Icon(
                  Icons.add_rounded,
                  size: 24,
                ),
                // child: Image.asset('assets/icon/add_board_btn.png'),
                mini: false,
                elevation: 0,
                backgroundColor: Colors.black,
                // foregroundColor: Colors.white,
                splashColor: Colors.black,
                onPressed: () {
                  Get.put(BoardListMySelectController());
                  BoardListMySelectController.to.cache = [];
                  BoardListMySelectController.to.fetchItems();
                  _showBS(context, vwBoardMenu(context));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  //SUBJECT : 글추가 보텀다이어로그
  //TODO: 글쓰기 메뉴 만들기
  // TODO : [SH] TEXT가 영어일 경우 폰트 변경하기

  // Bottom Sheet : 추가하기
  Widget vwBoardMenu(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          alignment: Alignment.bottomCenter,
          height: 15,
          child: Image.asset(Const.assets + 'images/rect_40.png'),
        ),
        AppBar(
          toolbarHeight: 45,
          elevation: 0.0,
          leading: null,
          automaticallyImplyLeading: false,
          title: Text(
            'board.bs.appbar.title.addItem'.tr,
            style: TextStyle(
              fontFamily:
                  Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
              fontSize: 18,
              color: Color(0xFF000000),
              fontWeight: Get.locale?.languageCode == 'ko'
                  ? FontWeight.w700
                  : FontWeight.w900,
              height: Get.locale?.languageCode == 'ko'
                  ? 1.17
                  : 1.37, // 21.09px, 24.59px
            ),
          ),
          centerTitle: true,
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 19.0, bottom: 22.5, top: 21),
          onTap: () => _actionBSNewBoard(context),
          leading: Image.asset(Const.assets + 'icon/new_board.png'), //새 보드
          title: Container(
            padding: EdgeInsets.only(left: 9.0),
            child: Text(
              'board.bs.body.menu.newBoard'.tr,
              style: sheetTitle,
            ),
          ),
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 16.0, bottom: 22.5),
          onTap: () => _actionBSWeblink(context),
          leading: Image.asset(Const.assets + 'icon/web_link.png'), // 웹링크
          title: Container(
            padding: EdgeInsets.only(left: 6.0),
            child: Text(
              'board.bs.body.menu.webLink'.tr,
              style: sheetTitle,
            ),
          ),
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 16.0, bottom: 22.5),
          onTap: () => _actionBSPhoto(context),
          leading: Image.asset(Const.assets + 'icon/photo.png'), // 사진/비디오
          title: Container(
            padding: EdgeInsets.only(left: 6.0),
            child: Text(
              'board.bs.body.menu.photo'.tr,
              style: sheetTitle,
            ),
          ),
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 17.0, bottom: 22.5),
          onTap: () => _actionBSMemo(context),
          leading: Image.asset(Const.assets + 'icon/memo.png'), // 메모
          title: Container(
            padding: EdgeInsets.only(left: 6.0),
            child: Text(
              'board.bs.body.menu.memo'.tr,
              style: sheetTitle,
            ),
          ),
        ),
        heightSpace(14.0),
      ],
      // ),
    );
  }

  //SUBJECT : BS:
  //TODO: 새보드 만들기.
  void _actionBSNewBoard(BuildContext context) {
    Get.back();

    final _controller = Get.put(BoardController());
    final _profile = HanUserInfoController.to.toProfile();
    final _item = _createBoard(_profile);
    _controller.boardItem = _item.toDomain();
    _controller.boardNameController.text = '';

    _showBS(context, BottomSheetNewBoard(
      onMenu: () {
        _showBS(context, vwBoardMenu(context));
      },
    ));
  }
  //SUBJECT : BS
  //TODO: 웹 링크.

  void _actionBSWeblink(BuildContext context) {
    Get.back();

    final _controller = Get.put(ContentsController());
    _controller.initTextController();

    BoardListMySelectController.to.selected = -1;
    _showBS(
        context,
        BottomSheetContentLink(
          parentContext: context,
          onMenu: () {
            _showBS(context, vwBoardMenu(context));
          },
        ));
  }

//SUBJECT : BS:
  //TODO: 사진
  void _actionBSPhoto(BuildContext context) {
    Get.back();
    final _controller = Get.put(ContentsController());
    _controller.initTextController();
    BoardListMySelectController.to.selected = -1;
    _showBS(
        context,
        BottomSheetContentPhoto(
          parentContext: context,
          onMenu: () {
            _showBS(context, vwBoardMenu(context));
          },
        ));
  }

  //SUBJECT : BS
  //TODO: 메모
  void _actionBSMemo(BuildContext context) {
    final _controller = Get.put(ContentsController());
    _controller.initTextController();

    BoardListMySelectController.to.selected = -1;

    Get.back();
    _showBS(
        context,
        BottomSheetContentMemo(
          parentContext: context,
          onMenu: () {
            _showBS(context, vwBoardMenu(context));
          },
        ));
  }

  BoardDto _createBoard(Profile profile) {
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
      boardCreator: profile.toDto(),
      info: _info,
      shareCheck: 0,
      contentsCount: 0,
      registerDate: DateTime.now(),
    );
    return _item;
  }

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
          );
        });
  }

  DateTime currentBackPressTime = DateTime.now();

  Future<bool> onWillPop() async {
    // DateTime now = DateTime.now();
    // if (now.difference(currentBackPressTime) > Duration(seconds: 2)) {
    //   currentBackPressTime = now;

    //   Fluttertoast.showToast(
    //     msg: '한번 더 백키를 누르시면 종료합니다.',
    //     backgroundColor: Colors.black45,
    //     textColor: Colors.white,
    //   );
    //   return Future.value(false);
    // }
    Get.reset();
    // exit(0);
    await SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
    // SystemNavigator.pop(); //종
    return Future.value(true);
  }
}
