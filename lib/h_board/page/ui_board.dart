import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/c_page/bott_navi_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';
import 'package:clay/h_board/part/part_board_list.dart';
import 'package:clay/h_search/part_search/part_search.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    final appbarHeight = 0 + kToolbarHeight;

    return WillPopScope(
      onWillPop: () {
        BottomNaviController.to.stack
            .removeWhere((element) => element == 'home');
        return Future.value(true);
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appbarHeight),
          //SUBJECT : 앱바의 액션
          child: vwAppBar(
            title: 'board.appbar.title.logo'.tr, // 'CLAY'

            actions: [
              ImageButton(
                  height: 24.0,
                  width: 24.0,
                  onTap: () async {
                    final _controller = Get.put(FindController());
                    _controller.cache.clear();
                    _controller.fetchItems();
                    Get.toNamed('/search');

                    // final _controller =
                    //             Get.put(SearchKeyWordListController());
                    FindController.to.searchWord = '';

                    // Get.put(SearchKeyWordListController());
                    final result = await showSearch<String>(
                      context: context,
                      delegate: SearchHan(FindController.to.searchWord.isEmpty
                          ? '검색'
                          : FindController.to.searchWord),
                    );
                    //SUBJECT: 검색
                    //TODO : 검색어 조건 설정
                    // FindController.to.searchWord = result ?? '';
                    // FindController.to.cache.clear();

                    // await FindController.to.fetchItems(term: result);
                    // FindController.to.update();

                    //SUBJECT: 검색.후보
                    //TODO

                    // final _controller = Get.put(SearchKeyWordListController());
                    // final result = await showSearch<String>(
                    //   context: context,
                    //   delegate: SearchHan(FindController.to.searchWord.isEmpty
                    //       ? '검색'
                    //       : FindController.to.searchWord),
                    // );
                    // //SUBJECT: 검색
                    // //TODO : 검색어 조건 설정
                    // FindController.to.searchWord = result ?? '';
                    // FindController.to.cache.clear();

                    // await FindController.to.fetchItems(term: result);
                    // FindController.to.update();
                  },
                  holder: 'assets/icon/search.png'),
              widthSpace(10.0),
              ImageButton(
                  height: 24.0,
                  width: 24.0,
                  onTap: () {
                    Get.toNamed('/profile');
                  },
                  holder: 'assets/icon/account.png'),
              widthSpace(20.0),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
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
                          controller.cache = [];
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
                          controller.cache = [];
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
                          controller.cache = [];
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
                          controller.cache = [];
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
              heightSpace(20.0),
              Expanded(child: BoardListPART()),
            ],
          ),
        ),
      ),
    );
  }
}
