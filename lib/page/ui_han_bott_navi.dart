import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/page/ui_board.dart';
import 'package:clay/page/ui_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'ui_search.dart';

class HanBottomNavigationBar extends StatelessWidget with AppbarHelper {
  Widget vwBottomMenu(BuildContext context) {
    // print('---------${_getcontroller?.index}');
    final _index = BottomNaviController.to.getIndex;
    return Container(
      // padding: EdgeInsets.only(left: 34, right: 34),

      child: Container(
        height: 66,
        child: Column(
          children: [
            Divider(
              height: 1,
              thickness: 1,
              color: Color(0xffE5E5E5),
            ),
            Container(
                // color: Colors.red,
                padding: EdgeInsets.only(
                  top: 12,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        HanNaiviBarWidget(
                          isLabel: false,
                          align: MainAxisAlignment.start,
                          height: 48,
                          width: 48,
                          isOn: _index == 1 ? true : false,
                          holder: _index == 1
                              ? 'assets/icon/add_board_btn.png'
                              : 'assets/icon/add_board_btn.png',
                          onTap: () {
                            // Future.microtask(
                            //     () => );
                            BottomNaviController.to.index = 1;
                            BottomNaviController.to.update();
                            _showBS(context, vwBoardMenu(context));
                          },
                        ),
                        HanNaiviBarWidget(
                          label: '내 콘텐츠',
                          isOn: _index == 2 ? true : false,
                          holder: _index == 2
                              ? 'assets/icon/mycontents_on.png'
                              : 'assets/icon/mycontents_off.png',
                          onTap: () {
                            BottomNaviController.to.index = 2;
                            BottomNaviController.to.update();

                            // Get.put(MyFollowerController(client: http.Client()));
                            // Get.put(MyFollowingController(client: http.Client()));

                            // Get.toNamed('/list');
                          },
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
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
          heightSpace(49),
          HanListTile(
            onTap: () {
              //SUBJECT : BS: 상단 고정
              //TODO: 데이터베이스고정.
              Get.back();
              _showBS(context, vwBoardNew(context));
            },
            leading: Image.asset(Const.assets + 'icon/icon_pin_fix.png'),
            title: Text('새 보드'),
          ),
          HanListTile(
            onTap: () {
              //SUBJECT : BS: 공유 권한 변경
              //TODO: 패딩조정.
              Get.back();

              _showBS(context, vwBoardLink(context));
            },
            leading: Image.asset(Const.assets + 'icon/icon_share.png'),
            title: Text('웹 링크'),
          ),
          HanListTile(
            onTap: () {
              //SUBJECT : BS: 보드 체인지
              //TODO: 공유....
              Get.back();

              _showBS(context, vwBoardPhoto(context));
            },
            leading: Image.asset(Const.assets + 'icon/icon_boardchange.png'),
            title: Text('사진/비디오'),
          ),
          HanListTile(
            onTap: () async {
              //SUBJECT : BS: 보드 삭제
              //TODO: 삭제....
              Get.back();
              _showBS(context, vwBoardMemo(context));
            },
            leading: Image.asset(Const.assets + 'icon/icon_trashcan.png'),
            title: Text('메모'),
          ),
        ],
      ),
    );
  }

  //SUBJECT : 글추가 보텀다이어로그
  //TODO: 글쓰기 메뉴 만들기
  Widget vwBoardNew(BuildContext context) {
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
          vwBSAppBar(
            onBack: () {
              Get.back();
              _showBS(context, vwBoardMenu(context));
            },
            title: '보드 만들기',
            actions: [
              Container(
                alignment: Alignment.center,
                // color: Colors.red,
                child: InkWell(
                  onTap: () {
                    // FindController.to.searchWord = '';
                    // FindController.to.update();
                    Get.back();
                  },
                  child: Text(
                    '완료',
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
          vwTitle('보드 이름'),
          vwTitle('보드에 배지 추가하기'),
        ],
      ),
    );
  }

  //SUBJECT : 글추가 보텀다이어로그
  //TODO: 링크로 초가하기
  Widget vwBoardLink(BuildContext context) {
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
          vwBSAppBar(
            onBack: () {
              Get.back();
              _showBS(context, vwBoardMenu(context));
            },
            title: '링크로 추가하기',
            actions: [
              Container(
                alignment: Alignment.center,
                // color: Colors.red,
                child: InkWell(
                  onTap: () {
                    // FindController.to.searchWord = '';
                    // FindController.to.update();
                    Get.back();
                  },
                  child: Text(
                    '완료',
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
          vwTitle('웹 링크'),
          vwTitle('코멘트'),
        ],
      ),
    );
  }

  //SUBJECT : 글추가 보텀다이어로그
  //TODO: 링크로 초가하기
  Widget vwBoardPhoto(BuildContext context) {
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
          vwBSAppBar(
            onBack: () {
              Get.back();
              _showBS(context, vwBoardMenu(context));
            },
            title: '사진/비디오',
            actions: [
              Container(
                alignment: Alignment.center,
                // color: Colors.red,
                child: InkWell(
                  onTap: () {
                    // FindController.to.searchWord = '';
                    // FindController.to.update();
                    Get.back();
                  },
                  child: Text(
                    '완료',
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
          vwTitle('코멘트'),
          vwTitle('저장할 보드 선택하기'),
        ],
      ),
    );
  }

  //SUBJECT : 글추가 보텀다이어로그
  //TODO: 링크로 초가하기
  Widget vwBoardMemo(BuildContext context) {
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
          vwBSAppBar(
            onBack: () {
              Get.back();
              _showBS(context, vwBoardMenu(context));
            },
            title: '메모',
            actions: [
              Container(
                alignment: Alignment.center,
                // color: Colors.red,
                child: InkWell(
                  onTap: () {
                    // FindController.to.searchWord = '';
                    // FindController.to.update();
                    Get.back();
                  },
                  child: Text(
                    '완료',
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
          vwTitle('제목'),
          vwTitle('저장할 보드 선택하기'),
        ],
      ),
    );
  }

  void _showBS(context, child) {
    showModalBottomSheet(
        context: context,
        enableDrag: false,
        builder: (BuildContext buildContext) {
          final node = FocusScope.of(context);
          return child;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNaviController>(builder: (_) => vwBody(context)),
      bottomNavigationBar: GetBuilder<BottomNaviController>(
          builder: (_) => vwBottomMenu(context)),
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
