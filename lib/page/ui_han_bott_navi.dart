import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/page/ui_board.dart';
import 'package:clay/page/ui_content.dart';
import 'package:clay/part/part_bs/part_bs.dart';
import 'package:clay/part/part_bs/src/part_bs_menu_from_share.dart';
import 'package:clay/part/part_home/part_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import 'ui_search.dart';

class HanBottomNavigationBar extends StatefulWidget {
  @override
  _HanBottomNavigationBarState createState() => _HanBottomNavigationBarState();
}

class _HanBottomNavigationBarState extends State<HanBottomNavigationBar>
    with AppbarHelper {
  late StreamSubscription _intentDataStreamSubscription;
  List<SharedMediaFile>? _sharedFiles;
  String? _sharedText;
  bool _isSharedOpen = false;
  @override
  void initState() {
    super.initState();

    // For sharing images coming from outside the app while the app is in the memory
    _intentDataStreamSubscription = ReceiveSharingIntent.getMediaStream()
        .listen((List<SharedMediaFile> value) {
      setState(() {
        _sharedFiles = value;
        print("===================>Shared: 1) " +
            (_sharedFiles?.map((f) => f.path).join(",") ?? ""));
      });
      // WidgetsBinding.instance!
      //     .addPostFrameCallback((_) => _showBS(context, vwBoardMenu(context)));
    }, onError: (err) {
      print("getIntentDataStream error: $err");
    });

    // For sharing images coming from outside the app while the app is closed
    ReceiveSharingIntent.getInitialMedia().then((List<SharedMediaFile> value) {
      setState(() {
        _sharedFiles = value;
        print("===================>Shared: 2) " +
            (_sharedFiles?.map((f) => f.path).join(",") ?? ""));
      });
    });

    // For sharing or opening urls/text coming from outside the app while the app is in the memory
    _intentDataStreamSubscription =
        ReceiveSharingIntent.getTextStream().listen((String value) {
      setState(() {
        _sharedText = value;
        print("===================> Shared:3) $_sharedText");
      });
      // WidgetsBinding.instance!
      //     .addPostFrameCallback((_) => _showBS(context, vwBoardMenu(context)));
    }, onError: (err) {
      print("getLinkStream error: $err");
    });

    // For sharing or opening urls/text coming from outside the app while the app is closed
    ReceiveSharingIntent.getInitialText().then((String? value) {
      setState(() {
        _sharedText = value;
        if (value == null) {
          _isSharedOpen = false;
        } else {
          _isSharedOpen = true;
          WidgetsBinding.instance!.addPostFrameCallback(
              (_) => _showBSFromShare(context, vwBoardMenuFromShare(context)));
        }

        print("---------->Shared: $_sharedText");
      });
    });
  }

  Widget vwBoardMenuFromShare(BuildContext context) {
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
            title: '바로 분류하기',
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
          HanListTile(
            onTap: () async {
              //SUBJECT : 공유상태에서 앱 종료하기.
              //TODO:

              Get.reset();
              await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            },
            leading: Image.asset(Const.assets + 'icon/icon_pin_fix.png'),
            title: Text('바로 분류하기'),
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(HanBottomNavigationBar oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _intentDataStreamSubscription.cancel();
    super.dispose();
  }

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
            onTap: () {
              //SUBJECT : BS:
              //TODO: 새보드 만들기.
              Get.back();
              _showBS(context, BottomSheetNewBoard(
                onMenu: () {
                  _showBS(context, vwBoardMenu(context));
                },
              ));
            },
            leading: Image.asset(Const.assets + 'icon/icon_pin_fix.png'),
            title: Text('새 보드'),
          ),
          HanListTile(
            onTap: () {
              //SUBJECT : BS
              //TODO: 웹 링크.
              Get.back();
              _showBS(context, BottomSheetLink(
                onMenu: () {
                  _showBS(context, vwBoardMenu(context));
                },
              ));
            },
            leading: Image.asset(Const.assets + 'icon/icon_share.png'),
            title: Text('웹 링크'),
          ),
          HanListTile(
            onTap: () {
              //SUBJECT : BS:
              //TODO: 사진
              Get.back();
              _showBS(context, BottomSheetPhoto(
                onMenu: () {
                  _showBS(context, vwBoardMenu(context));
                },
              ));
            },
            leading: Image.asset(Const.assets + 'icon/icon_boardchange.png'),
            title: Text('사진/비디오'),
          ),
          HanListTile(
            onTap: () async {
              //SUBJECT : BS
              //TODO: 메모
              Get.back();
              _showBS(context, BottomSheetMemo(
                onMenu: () {
                  _showBS(context, vwBoardMenu(context));
                },
              ));
            },
            leading: Image.asset(Const.assets + 'icon/icon_trashcan.png'),
            title: Text('메모'),
          ),
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

  void _showBSFromShare(context, child) {
    showModalBottomSheet(
        context: context,
        enableDrag: false,
        builder: (BuildContext buildContext) {
          final node = FocusScope.of(context);
          return child;
        }).then((value) async {
      Get.reset();
      await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isSharedOpen == true) {
      return Container();
    } else {
      return Scaffold(
        body: GetBuilder<BottomNaviController>(builder: (_) => vwBody(context)),
        bottomNavigationBar: GetBuilder<BottomNaviController>(
            builder: (_) => vwBottomMenu(context)),
      );
    }
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
