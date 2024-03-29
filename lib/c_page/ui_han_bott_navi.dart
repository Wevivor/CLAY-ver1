// 메인 보드 화면의 플러스버튼 (추가하기) & 추가하기 Bottom Sheet
import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/page/ui_board.dart';
import 'package:clay/h_board/part_bs/part_bs_new_board.dart';
import 'package:clay/h_content/controllers/content_all_list_controller.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_content/controllers/contents_list_all_my_select_controller.dart';
import 'package:clay/h_content/page/ui_content.dart';
import 'package:clay/h_content/part_bs/part_bs.dart';
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
    debugPrint('[UI HAN NAVIBOTTOM vwBottomMenu] ${_index}');
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
                      onTap: () async {
                        Get.lazyPut(() => ContentsListAllMySelectController());
                        ContentsListAllMySelectController.to.selected = 0;

                        BoardListController.to.cache.clear();
                        await BoardListController.to.fetchItems();
                        BottomNaviController.to.index = 0;
                        BottomNaviController.to.update();

                        BoardListController.to.selected = 0;
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
                      Get.lazyPut(() => ContentsListAllMySelectController());
                      ContentsListAllMySelectController.to.selected = 0;

                      final contentAllListController = Get.put(
                        ContentAllListController(),
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
    debugPrint('[UI HAN NAVIBOTTOM vwBottomMenu] ${current}');
    if (current == 0)
      return BoardUI();
    else
      return ContentUI();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: GetBuilder<BottomNaviController>(
        builder: (_) => AnnotatedRegion(
          value: GlobalStyle.configStatusTheme,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: vwBody(context),
            bottomNavigationBar: Stack(
              alignment: Alignment.center,
              children: [
                vwBottomMenu(context),
                Container(
                  width: 36,
                  height: 36,
                  child: FloatingActionButton(
                    // 플러스 버튼 (추가하기 버튼)
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
                    onPressed: () async {
                      Get.put(BoardListMySelectController());
                      BoardListMySelectController.to.cache.clear();
                      await BoardListMySelectController.to.fetchItems();
                      _showBS(context, vwBoardMenu(context));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //SUBJECT : 글 추가 보텀다이어로그
  // 글쓰기 메뉴 만들기

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
          leading: Image.asset(Const.assets + 'icon/photo.png'),
          title: Container(
            padding: EdgeInsets.only(left: 6.0),
            child: Text(
              'board.bs.body.menu.photo'.tr, // 사진/비디오
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
  // 새보드 만들기.
  void _actionBSNewBoard(BuildContext context) {
    Get.back();

    final _controller = Get.put(BoardController());
    final _profile = HanUserInfoController.to.toProfile();
    final _item = _controller.initItem(_profile, name: '', type: '');

    _controller.boardItem = _item.toDomain();
    _controller.boardNameController.text = '';

    _showBS(
        context,
        BottomSheetNewBoard(
          onDone: () async {
            Get.lazyPut(() => BoardListController());
            BoardListController.to.cache.clear();
            await BoardListController.to.fetchItems();

            BoardListMySelectController.to.cache.clear();
            await BoardListMySelectController.to.fetchItems();
          },
          onMenu: () {
            _showBS(context, vwBoardMenu(context));
          },
        ));
  }
  //SUBJECT : BS
  // 웹 링크.

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
            onDone: () async {
              Get.lazyPut(() => ContentAllListController());
              ContentAllListController.to.filter = '';

              ContentAllListController.to.cache.clear();
              await ContentAllListController.to.fetchItems();
              BoardListController.to.cache.clear();
              await BoardListController.to.fetchItems();
            }));
  }

//SUBJECT : BS:
  // 사진
  void _actionBSPhoto(BuildContext context) {
    Get.back();
    final _controller = Get.put(ContentsController());
    _controller.initTextController();
    BoardListMySelectController.to.selected = -1;
    _showBS(
        context,
        BottomSheetContentPhoto(
          parentContext: context,
          onDone: () async {
            Get.lazyPut(() => ContentAllListController());
            ContentAllListController.to.filter = '';

            ContentAllListController.to.cache.clear();
            await ContentAllListController.to.fetchItems();
            BoardListController.to.cache.clear();
            await BoardListController.to.fetchItems();
          },
          onMenu: () {
            _showBS(context, vwBoardMenu(context));
          },
        ));
  }

  //SUBJECT : BS
  // 메모
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
          onDone: () async {
            Get.lazyPut(() => ContentAllListController());
            ContentAllListController.to.cache.clear();
            ContentAllListController.to.filter = '';

            await ContentAllListController.to.fetchItems();
            BoardListController.to.cache.clear();
            await BoardListController.to.fetchItems();
          },
        ));
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
    Get.reset();
    await SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
    return Future.value(true);
  }
}
