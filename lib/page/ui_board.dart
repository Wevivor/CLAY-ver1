import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/part/part_home/part_home.dart';
import 'package:clay/controllers/controllers.dart';

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
    initProfile();
  }

  final profileListController = Get.put(
    ProfileListController(),
  );
  Future<void> initProfile() async {
    profileListController.cache = [];
    await profileListController.fetchItems();
  }

  @override
  void dispose() {
    super.dispose();
  }

  late TabBar _tabBar;
  int _tabIndex = 0;
  late TabController _tabController;

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
                  onTap: () {
                    Get.toNamed('/search');
                  },
                  holder: 'assets/icon/search.png'),
              widthSpace(10.0),
              ImageButton(
                  height: 32.0,
                  width: 32.0,
                  onTap: () {
                    Get.toNamed('/profile');
                    AppHelper.showMessage('설정..');
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
                      onTap: (value) {
                        controller.selected = value;
                        // _.cache = [];
                        // _.fetchItems(term: _.searchWord);
                      },
                    ),
                    CategoryButton(
                      index: 1,
                      selected: controller.selected,
                      onTap: (value) {
                        controller.selected = value;
                        // _.cache = [];
                        // _.fetchItems(term: _.searchWord);
                      },
                    ),
                    CategoryButton(
                      index: 2,
                      selected: controller.selected,
                      onTap: (value) {
                        controller.selected = value;
                        // _.cache = [];
                        // _.fetchItems(term: _.searchWord);
                      },
                    ),
                    CategoryButton(
                      index: 3,
                      title: null,
                      selected: controller.selected,
                      onTap: (value) {
                        controller.selected = value;
                        // _.cache = [];
                        // _.fetchItems(term: _.searchWord);
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
