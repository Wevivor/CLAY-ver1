import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/common/commons.dart';
import 'package:clay/part/part_home/part_home.dart';
import 'package:clay/controllers/controllers.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//SUBJECT: 컨텐츠 화면
//TODO : 컨텐트

// ignore: must_be_immutable
class ContentUI extends StatefulWidget {
  ContentUI();

  @override
  _ContentUIState createState() => _ContentUIState();
}

class _ContentUIState extends State<ContentUI>
    with AppbarHelper, SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    initFetch();
  }

  Future<void> initFetch() async {
    contentListController.cache = [];
    await contentListController.fetchItems();
    contentCategoryListController.cache = [];
    await contentCategoryListController.fetchItems();
  }

  final contentCategoryListController = Get.put(
    ContentCtgListController(),
  );
  final contentListController = Get.put(
    ContentListController(),
  );

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
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(appbarHeight),
            //SUBJECT : 앱바의 액션
            child: vwAppBar(
              title: 'All Contents',
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
          body: Column(
            children: [
              Container(
                  // color: Colors.red,
                  height: 30 + 4,
                  padding: EdgeInsets.only(left: 20),
                  child: GetBuilder<ContentCtgListController>(
                      builder: (controller) {
                    return HanListView(
                      isSliver: false,
                      direction: Axis.horizontal,
                      controller: controller,
                      itemBuilder: (context, idx) {
                        final cache = controller.cache;

                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CategoryTextButton(
                            title: '전체',
                            index: idx,
                            selected: controller.selected,
                            onTap: (value) {
                              controller.selected = value;
                              // _.cache = [];
                              // _.fetchItems(term: _.searchWord);
                            },
                          ),
                        );
                      },
                    );
                  })),
              heightSpace(16.0),
              Expanded(child: ContentPintestPART()),
            ],
          ),
        ),
      ),
    );
  }
}
