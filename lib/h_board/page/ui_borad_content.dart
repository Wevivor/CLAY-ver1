import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/remind_controller.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:clay/h_board/part/part_board_pintest_list.dart';
import 'package:clay/h_board/part_bs/src/helper_bs_board_init.dart';
import 'package:clay/h_board/part_bs/src/helper_bs_function.dart';
import 'package:clay/h_board/part_bs/src/part_bs_board_change.dart';
import 'package:clay/h_board/part_bs/src/part_bs_share.dart';
import 'package:clay/h_content/controllers/content_all_list_controller.dart';
import 'package:clay/h_content/controllers/content_list_controller.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:clay/h_content/part/part_content_header.dart';
import 'package:clay/h_content/part/part_content_list.dart';
import 'package:clay/h_content/part_bs/src/part_bs_calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sprintf/sprintf.dart';
import 'package:share/share.dart' as share;

// ignore: must_be_immutable
class BoardContentUI extends StatefulWidget {
  final Board board;
  final parentContext;
  BoardContentUI({required this.board, this.parentContext});

  @override
  _BoardContentUIState createState() => _BoardContentUIState();
}

class _BoardContentUIState extends State<BoardContentUI>
    with AppbarHelper, SingleTickerProviderStateMixin, BSBoardFunctionHelper {
  int listType = 0;
  late ScrollController _scrollController;
  bool silverCollapsed = false;
  String myTitle = '';
  late LinearGradient gradient;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      tileMode: TileMode.clamp,
      stops: [0.8, 1.0],
      // stops: [1.0, 1.0, 1.0, 1.0, 0.0],
      colors: [
        Color(int.parse(widget.board.info.boardColor, radix: 16)),
        Color(0xFFFFFFFF),
      ],
    );

    _scrollController.addListener(() {
      if (_scrollController.offset > 220 &&
          !_scrollController.position.outOfRange) {
        if (!silverCollapsed) {
          // do what ever you want when silver is collapsing !

          myTitle = widget.board.info.boardName;
          silverCollapsed = true;
          setState(() {});
        }
      }
      if (_scrollController.offset <= 220 &&
          !_scrollController.position.outOfRange) {
        if (silverCollapsed) {
          // do what ever you want when silver is expanding !

          // myTitle = "silver expanded !";
          myTitle = '';
          silverCollapsed = false;
          setState(() {});
        }
      }
    });

    initFetch();
  }

  Future<void> initFetch() async {
    final _controller = Get.put(ContentListController());
    _controller.boardId = widget.board.info.boardId ?? '';
    _controller.cache.clear();
    await ContentListController.to.fetchItems();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    final profileHeight = 252.0;

    return Scaffold(
        backgroundColor: Colors.white,
        body: RefreshIndicator(
          edgeOffset: profileHeight,
          displacement: 100,
          backgroundColor: Colors.white,
          onRefresh: () => Future.sync(
            () => ContentListController.to.actionRefresh(),
          ),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              PreferredSize(
                preferredSize: Size.fromHeight(profileHeight),
                child: SliverAppBar(
                  pinned: true,
                  floating: true,
                  snap: true,
                  automaticallyImplyLeading: true,
                  backgroundColor:
                      Color(int.parse(widget.board.info.boardColor, radix: 16)),
                  leading: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(myTitle),
                  expandedHeight: profileHeight,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    // title: Text('홈베이킹 레시피'),
                    title: null,
                    background: Container(
                      decoration: DecoHelper.roundDeco.copyWith(
                        gradient: gradient,
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        border: Border(),
                      ),
                      height: profileHeight,
                      padding: EdgeInsets.only(
                        top: kToolbarHeight,
                      ),
                      alignment: Alignment.center,
                      child: ContentHeaderPART(widget.board),
                    ),
                  ),
                  actions: [
                    Container(
                      alignment: Alignment.center,
                      child: InkWell(
                        highlightColor: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          final _controller = Get.put(BoardController());
                          BoardController.to.boardItem = widget.board;
                          showBS(context, BottomSheetShare());
                        },
                        child: Container(
                          height: 28,
                          width: 63,
                          decoration: DecoHelper.roundDeco.copyWith(
                            color: Color.fromRGBO(250, 250, 250, 0.12),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          alignment: Alignment.center,
                          child: Text('Share',
                              style: baseStyle.copyWith(
                                fontFamily: 'Avenir',
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                height: 1.37, // 19.12px
                              )),
                        ),
                      ),
                    ),
                    widthSpace(15.0)
                  ],
                ),
              ),
              SliverToBoxAdapter(
                  child: Column(
                children: [
                  heightSpace(13.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ImageButton(
                          height: 16.0,
                          width: 16.0,
                          onTap: () {
                            setState(() {
                              if (listType != 0) listType = 0;
                            });
                            // Get.toNamed('/search');
                          },
                          holder: listType == 0
                              ? 'assets/icon/icon_grid_on.png'
                              : 'assets/icon/icon_grid_off.png'),
                      widthSpace(10.0),
                      ImageButton(
                          height: 16.0,
                          width: 16.0,
                          onTap: () {
                            setState(() {
                              if (listType != 1) listType = 1;
                            });
                          },
                          holder: listType == 1
                              ? 'assets/icon/icon_list_on.png'
                              : 'assets/icon/icon_list_off.png'),
                      widthSpace(20.0),
                    ],
                  ),
                ],
              )),
              SliverToBoxAdapter(
                child: IndexedStack(index: listType, children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: BoardPintestListPART(
                      onMore: (item) {
                        showBS(context, vwBoardMenu(context, item));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: ContentListPART(
                      onMore: (item) {
                        showBS(context, vwBoardMenu(context, item));
                      },
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }

  // 점메뉴 바텀 시트 (B3)
  Widget vwBoardMenu(BuildContext context, Contents item) {
    final menuStyle = TextStyle(
      fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
      fontSize: 14,
      color: Color(0xFF000000),
      fontWeight:
          Get.locale?.languageCode == 'ko' ? FontWeight.w400 : FontWeight.w500,
      height:
          Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 16.41px, 19.12px
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
            alignment: Alignment.bottomCenter,
            height: 15,
            child: Image.asset(Const.assets + 'images/rect_40.png')),
        heightSpace(20.0),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSFixed(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_pin_fix.png')),
          title: item.info.contentsFixed == true // 상단고정
              ? Text('com.bs.body.menu.pinOff'.tr, style: menuStyle)
              : Text('com.bs.body.menu.pinOn'.tr, style: menuStyle),
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSShare(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_share.png')),
          title: Text('com.bs.body.menu.share'.tr, style: menuStyle), // 공유
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSRemindAlarm(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/ph_bell-ringing.png')),
          title: Text('contents.bs.body.menu.reminder'.tr,
              style: menuStyle), // 알람 설정
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSBoardChange(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_boardchange.png')),
          title: Text('contents.bs.body.menu.moveBoard'.tr,
              style: menuStyle), // 보드 변경
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 23.0, bottom: 21.0),
          onTap: () => _actionBSDelete(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_trashcan.png')),
          title: Text('com.bs.body.menu.delBoard'.tr, style: menuStyle), // 삭제
        ),
      ],
    );
  }

  // BS: 상단 고정
  Future<void> _actionBSFixed(BuildContext context, item) async {
    final _contentsCtl = Get.put(ContentsController());
    _contentsCtl.contentsItem = item;
    final _fixed = item.info.contentsFixed ?? false;
    await _contentsCtl.actionPin(fix: !_fixed!);
    Get.back();

    Future.microtask(() async {
      ContentListController.to.cache.clear();
      await ContentListController.to.fetchItems();
    });
  }

  //SUBJECT: 링크
  //TODO: 수정해야 함.
  Future<void> _actionBSShare(BuildContext context, Contents item) async {
    Get.back();
    var _url = '';
    if (item.info.contentsType == 'photo')
      _url = sprintf('%s', [item.info.contentsImages]);
    else if (item.info.contentsType == 'link')
      _url = sprintf('%s', [item.info.contentsUrl]);
    else
      _url = sprintf('%s/%s', [Const.clayBaseUrl, item.info.contentsId]);

    await share.Share.share(_url);
  }

  //SUBJECT : BS: 리마인드 알림 설정
  //TODO: 작업범위 여부 고민
  void _actionBSRemindAlarm(BuildContext context, item) {
    Get.back();
    Get.lazyPut(() => ContentsController());
    Get.lazyPut(() => RemindListController());
    Get.lazyPut(() => RemindController());
    RemindController.to.init();
    showBS(
        context,
        BottomSheetCalendar(
            contents: item,
            onMenu: () {
              showBS(context, vwBoardMenu(context, item));
            }));
  }

  // BS: 보드 변경
  Future<void> _actionBSBoardChange(BuildContext context, item) async {
    Get.back();
    // Get.put(ContentListController());
    final _controller = Get.put(BoardListMySelectController());
    _controller.cache.clear();
    _controller.selected = -1;
    _controller.fetchItems();
    showBS(
        context,
        BottomSheetBoardChange(
          parentContext: context,
          onDone: () {
            Get.lazyPut(() => ContentListController());
            ContentListController.to.actionDelteItem(item.contentsId ?? '');
            BoardListController.to.cache.clear();
            BoardListController.to.fetchItems();
          },
          onMenu: () {
            showBS(context, vwBoardMenu(context, item));
          },
          current: item,
        ));
  }

  // BS: 컨테츠 삭제
  Future<void> _actionBSDelete(BuildContext context, item) async {
    Get.back();
    Get.lazyPut(() => ContentsController());
    var _responce = false;
    await DialogHelper.MessageDialog(
      context,
      (context) => DeleteDialog(
        title: '콘텐츠를 삭제하시겠습니까?',
        deleteTitle: '삭제',
        okTitle: '취소',
        okTap: () {
          _responce = false;
        },
        deleteTap: () {
          _responce = true;
        },
      ),
    );
    if (_responce) {
      await ContentsController.to.actionDelete(item.info.contentsId);
      ContentListController.to.actionDelteItem(item.info.contentsId ?? '');
      BoardListController.to.cache.clear();
      await BoardListController.to.fetchItems();
    }
  }
}
