import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:clay/h_board/part/part_board_pintest_list.dart';
import 'package:clay/h_board/part_bs/src/part_bs_share.dart';
import 'package:clay/h_content/controllers/content_list_controller.dart';
import 'package:clay/h_content/part/part_content_header.dart';
import 'package:clay/h_content/part/part_content_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

// ignore: must_be_immutable
class BoardContentUI extends StatefulWidget {
  final Board board;
  final parentContext;
  BoardContentUI({required this.board, this.parentContext});

  @override
  _BoardContentUIState createState() => _BoardContentUIState();
}

class _BoardContentUIState extends State<BoardContentUI>
    with AppbarHelper, SingleTickerProviderStateMixin {
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
    final _controller = Get.put(ContentListController(pageSize: 2));
    _controller.boardId = widget.board.info.boardId ?? '';
    _controller.cache = [];
    await ContentListController.to.fetchItems();
    debugPrint('--------- BoardContentUI initFetch-----------');
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    final aTabbaHeight = 50.0;
    final aToolbarHeight = 56.0;

    // final profileHeight = aToolbarHeight + aTabbaHeight;
    final profileHeight = 252.0;

    // (MySize.safeHeight - (kBottomNavigationBarHeight)) / 2;
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            PreferredSize(
              preferredSize: Size.fromHeight(profileHeight),
              child: SliverAppBar(
                // title: Text(
                //   '홈베이킹 레시피',
                //   style: baseStyle.copyWith(color: Colors.black),
                // ),

                pinned: true,
                floating: true,
                snap: true,
                automaticallyImplyLeading: true,
                backgroundColor: Color(0xFFffffb3b3),
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
                      onTap: () {
                        final _controller = Get.put(BoardController());
                        BoardController.to.boardItem = widget.board;
                        _showBS(context, BottomSheetShare());
                      },
                      child: Container(
                        height: 28,
                        width: 63,
                        decoration: DecoHelper.roundDeco.copyWith(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                        child: Text('Share',
                            style: baseStyle.copyWith(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                    ),
                  ),
                  widthSpace(18.0)
                ],
              ),
            ),
            SliverToBoxAdapter(
                child: Column(
              children: [
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
                // heightSpace(16.0),
              ],
            )),
            SliverToBoxAdapter(
              child: IndexedStack(index: listType, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: BoardPintestListPART(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ContentListPART(),
                ),
              ]),
            ),
          ],
        ));

    ///Tab 바
  }

  void _showBS(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          delaySetSysyemUIOverlays();
          return WillPopScope(
            onWillPop: () {
              delaySetSysyemUIOverlays();

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
}
