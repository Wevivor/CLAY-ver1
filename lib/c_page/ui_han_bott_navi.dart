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
      height: 66,
      child: Column(
        children: [
          Divider(
            height: 1,
            thickness: 1,
            color: Color(0xffE5E5E5),
          ),
          Container(
              padding: EdgeInsets.only(
                top: 12,
                left: 72,
                right: 68,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.blue,
                    alignment: Alignment.center,
                    child: HanNaiviBarWidget(
                      label: '내 보드',
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
                  // HanNaiviBarWidget(
                  //   isLabel: false,
                  //   align: MainAxisAlignment.start,
                  //   height: 48,
                  //   width: 48,
                  //   isOn: _index == 1 ? true : false,
                  //   holder: _index == 1
                  //       ? 'assets/icon/add_board_btn.png'
                  //       : 'assets/icon/add_board_btn.png',
                  //   onTap: () {
                  //     BottomNaviController.to.index = 1;
                  //     BottomNaviController.to.update();
                  //     Get.put(BoardListMySelectController());
                  //     BoardListMySelectController.to.cache.clear();
                  //     BoardListMySelectController.to.fetchItems();
                  //     _showBS(context, vwBoardMenu(context));
                  //   },
                  // ),
                  HanNaiviBarWidget(
                    label: '내 콘텐츠',
                    isOn: _index == 2 ? true : false,
                    holder: _index == 2
                        ? 'assets/icon/mycontents_on.png'
                        : 'assets/icon/mycontents_off.png',
                    onTap: () async {
                      print('---------------ALL Contens-------------');
                      final contentAllListController = Get.put(
                        ContentAllListController(pageSize: 2),
                      );
                      contentAllListController.cache.clear();
                      await contentAllListController.fetchItems();
                      BottomNaviController.to.index = 2;
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
        return Container();

      case 2:
        return ContentUI();
      default:
        return Container();
    }
  }

  //SUBJECT : 글추가 보텀다이어로그
  //TODO: 글쓰기 메뉴 만들기

  Widget vwBoardMenu(BuildContext context) {
    return Column(
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
            '추가하기',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () {
            //SUBJECT : BS:
            //TODO: 새보드 만들기.
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
          },
          leading: Image.asset(Const.assets + 'icon/myboard_on.png'),
          title: Text('새 보드'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () {
            //SUBJECT : BS
            //TODO: 웹 링크.

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
          },
          leading: Image.asset(Const.assets + 'icon/web_link.png'),
          title: Text('웹 링크'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () {
            //SUBJECT : BS:
            //TODO: 사진

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
          },
          leading: Image.asset(Const.assets + 'icon/photo.png'),
          title: Text('사진/비디오'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () async {
            //SUBJECT : BS
            //TODO: 메모
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
          },
          leading: Image.asset(Const.assets + 'icon/memo.png'),
          title: Text('메모'),
        ),
      ],
      // ),
    );
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
            // child: AnnotatedRegion<SystemUiOverlayStyle>(
            //   value: GlobalStyle.configStatusTheme,
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
        });
  }

  DateTime currentBackPressTime = DateTime.now();

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;

      Fluttertoast.showToast(
        msg: '한번 더 백키를 누르시면 종료합니다.',
        backgroundColor: Colors.black45,
        textColor: Colors.white,
      );
      return Future.value(false);
    }
    Get.reset();
    SystemNavigator.pop(); //종
    return Future.value(true);
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
            FloatingActionButton(
              child: Icon(
                Icons.add,
                size: 36,
              ),

              mini: false,
              backgroundColor: Colors.black,
              // foregroundColor: Colors.white,
              splashColor: Colors.black,
              onPressed: () {
                Get.put(BoardListMySelectController());
                BoardListMySelectController.to.cache.clear();
                BoardListMySelectController.to.fetchItems();
                _showBS(context, vwBoardMenu(context));
              },
            ),
          ],
        ),

        // floatingActionButton: FloatingActionButton(
        //   child: Container(),
        //   backgroundColor: Colors.greenAccent,
        //   foregroundColor: Colors.white,
        //   splashColor: Colors.black,
        //   onPressed: () {},
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.,
      ),
    );
  }

  Widget vwTitle(final title) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }
}
