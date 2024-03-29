import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/c_page/bott_navi_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';
import 'package:clay/h_search/controllers/find_controller.dart';
import 'package:clay/h_search/page/cupertino_search_delegate.dart';
import 'package:clay/h_search/page/platform_search.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'part_board_list.dart';

// ignore: must_be_immutable
class BoardUI extends StatefulWidget {
  @override
  _BoardUIState createState() => _BoardUIState();
}

class _BoardUIState extends State<BoardUI>
    with AppbarHelper, SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    initFetch();
  }

  final listController = Get.put(
    BoardListController(),
  );
  Future<void> initFetch() async {
    listController.cache.clear();
    await listController.fetchItems();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> search(String text) async {
    FindController.to.cache.clear();
    if (text.isNotEmpty)
      await FindController.to.fetchItems(term: text);
    else
      FindController.to.update();
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    debugPrint('[UI BOARD] ${kToolbarHeight}');

    final appbarHeight = 0 + kToolbarHeight;

    return WillPopScope(
      onWillPop: () {
        BottomNaviController.to.stack
            .removeWhere((element) => element == 'home');
        return Future.value(true);
      },
      child: Scaffold(
        // backgroundColor:
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appbarHeight),
          child: vwAppBar(
            title: 'board.appbar.title.logo'.tr, // CLAY

            actions: [
              ImageButton(
                  height: 24.46,
                  width: 24.58,
                  onTap: () async {
                    final _controller = Get.put(FindController());
                    _controller.cache.clear();
                    //SUBJECT: 검색

                    final _item = await showPlatformSearch(
                      context: context,
                      delegate: CupertinoSearchDelegate(search),
                    );
                    // Get.to(() => BoardContentUI(board: _item));
                    // if (_item != null) debugPrint(_item.toString());
                  },
                  holder: 'assets/icon/search.png'),
              widthSpace(10.0),
              ImageButton(
                  height: 24.46,
                  width: 24.58,
                  onTap: () {
                    Get.toNamed('/profile');
                  },
                  holder: 'assets/icon/account.png'),
              widthSpace(20.0),
            ],
          ),
        ),
        // backgroundColor: Colors.white,
        body: RefreshIndicator(
          backgroundColor: Colors.white,
          onRefresh: () => Future.sync(
            () => BoardListController.to.actionRefresh(),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 11, right: 18),
            child: Column(
              children: [
                Obx(() {
                  final controller = BoardListController.to;
                  //SUBJECT: 보드의 카테고리

                  return Row(
                    children: [
                      widthSpace(7.0),
                      Expanded(
                        child: CategoryButton(
                          index: 0,
                          selected: controller.selected,
                          onTap: (value) async {
                            controller.selected = value;
                            controller.cache.clear();
                            await controller.fetchItems(term: '');
                          },
                        ),
                        flex: 10,
                      ),
                      widthSpace(7.0),
                      Expanded(
                        child: CategoryButton(
                          index: 1,
                          selected: controller.selected,
                          onTap: (value) async {
                            controller.selected = value;
                            controller.cache.clear();
                            await controller.fetchItems(
                                term: 'com.chip.badge.work'.tr);
                          },
                        ),
                        flex: 15,
                      ),
                      widthSpace(7.0),
                      Expanded(
                        child: CategoryButton(
                          index: 2,
                          selected: controller.selected,
                          onTap: (value) async {
                            controller.selected = value;
                            controller.cache.clear();
                            await controller.fetchItems(
                                term: 'com.chip.badge.growth'.tr);
                          },
                        ),
                        flex: 15,
                      ),
                      widthSpace(7.0),
                      Expanded(
                        child: CategoryButton(
                          index: 3,
                          title: null,
                          selected: controller.selected,
                          onTap: (value) async {
                            controller.selected = value;
                            controller.cache.clear();
                            await controller.fetchItems(
                                term: 'com.chip.badge.like'.tr);
                          },
                        ),
                        flex: 10,
                      ),
                    ],
                  );
                }),
                widthSpace(2.0),
                heightSpace(15.0),
                Expanded(child: BoardListPART()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
