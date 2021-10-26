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
import 'package:http/http.dart' as http;

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
    listController.cache = [];
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
            title: 'CLAY',
            actions: [
              ImageButton(
                  height: 32.0,
                  width: 32.0,
                  onTap: () async {
                    final _controller = Get.put(FindController());
                    _controller.cache = [];
                    _controller.fetchItems();
                    Get.toNamed('/search');

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
                    // FindController.to.cache = [];

                    // await FindController.to.fetchItems(term: result);
                    // FindController.to.update();
                  },
                  holder: 'assets/icon/search.png'),
              widthSpace(10.0),
              ImageButton(
                  height: 32.0,
                  width: 32.0,
                  onTap: () {
                    Get.toNamed('/profile');
                  },
                  holder: 'assets/icon/account.png'),
              widthSpace(10.0),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.only(left: 18, right: 18),
          child: Column(
            children: [
              Obx(() {
                final controller = BoardListController.to;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryButton(
                      index: 0,
                      selected: controller.selected,
                      onTap: (value) async {
                        controller.selected = value;
                        controller.cache = [];
                        await controller.fetchItems(term: '');
                      },
                    ),
                    CategoryButton(
                      index: 1,
                      selected: controller.selected,
                      onTap: (value) async {
                        controller.selected = value;
                        controller.cache = [];
                        await controller.fetchItems(term: '일/공부');
                      },
                    ),
                    CategoryButton(
                      index: 2,
                      selected: controller.selected,
                      onTap: (value) async {
                        controller.selected = value;
                        controller.cache = [];
                        await controller.fetchItems(term: '자기계발');
                      },
                    ),
                    CategoryButton(
                      index: 3,
                      title: null,
                      selected: controller.selected,
                      onTap: (value) async {
                        controller.selected = value;
                        controller.cache = [];
                        await controller.fetchItems(term: 'LIKE');
                      },
                    ),
                  ],
                );
              }),
              heightSpace(20.0),
              Expanded(child: BoardListPART()),
            ],
          ),
        ),
      ),
    );
  }
}
