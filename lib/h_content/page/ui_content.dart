import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:clay/h_content/controllers/content_all_list_controller.dart';
import 'package:clay/h_content/controllers/contents_list_all_my_select_controller.dart';
import 'package:clay/h_content/part/part_content_all_pintest.dart';

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
    contentsListAllMySelectController.cache = [];
    await contentsListAllMySelectController.fetchItems();
    contentsListAllMySelectController.selected = 0;
    contentAllListController.cache = [];
    await contentAllListController.fetchItems();
  }

  final contentsListAllMySelectController = Get.put(
    ContentsListAllMySelectController(pageSize: 10000),
  );
  final contentAllListController = Get.put(
    ContentAllListController(pageSize: 30),
  );

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    final appbarHeight = 0 + kToolbarHeight;

    return Scaffold(
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
                },
                holder: 'assets/icon/account.png'),
            widthSpace(10.0),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: GetBuilder<ContentAllListController>(builder: (controller) {
        return Column(
          children: [
            Container(
                // color: Colors.red,
                height: 30 + 4,
                padding: EdgeInsets.only(left: 20),
                child: GetBuilder<ContentsListAllMySelectController>(
                    builder: (controller) {
                  return Container(
                    child: Row(
                      children: [
                        CategoryTextButton(
                          title: '전체',
                          index: 0,
                          selected: controller.selected,
                          onTap: (value) async {
                            controller.selected = value;
                            controller.update();
                            ContentAllListController.to.cache.clear();
                            await ContentAllListController.to.fetchItems();
                          },
                        ),
                        widthSpace(8.0),
                        Expanded(
                          child: HanListView(
                            isSliver: false,
                            direction: Axis.horizontal,
                            controller: controller,
                            itemBuilder: (context, idx) {
                              final cache = controller.cache;
                              Board item = cache[idx];

                              return Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: CategoryTextButton(
                                  title: item.info.boardName,
                                  index: idx + 1,
                                  selected: controller.selected,
                                  onTap: (value) async {
                                    controller.selected = value;
                                    controller.update();
                                    ContentAllListController.to.cache.clear();
                                    await ContentAllListController.to
                                        .fetchItems(term: item.info.boardId);
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                })),
            heightSpace(16.0),
            Expanded(child: ContentAllPintestPART()),
          ],
        );
      }),
    );
  }
}
