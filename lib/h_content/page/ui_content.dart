import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:clay/h_content/controllers/content_all_list_controller.dart';
import 'package:clay/h_content/controllers/content_list_controller.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_content/controllers/contents_list_all_my_select_controller.dart';
import 'package:clay/h_search/controllers/find_controller.dart';
import 'package:clay/h_search/page/cupertino_search_delegate.dart';
import 'package:clay/h_search/page/platform_search.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

import 'part_content_all_pintest.dart';

//SUBJECT: 콘텐츠 화면

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
    Get.lazyPut(() => ContentsController());
    Get.lazyPut(() => ContentListController());
    contentAllListController.cache.clear();
    await contentAllListController.fetchItems();

    contentsListAllMySelectController.selected = 0;
    contentsListAllMySelectController.cache.clear();
    await contentsListAllMySelectController.fetchItems();
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

    final appbarHeight = 0 + kToolbarHeight;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appbarHeight),
        //SUBJECT : 앱바의 액션
        child: vwAppBar(
          title: 'contents.appbar.title.contents'.tr, // All Contents
          titleStyle: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 24,
            color: Color(0xFF000000),
            fontWeight: FontWeight.w900,
            height: 1.37, // 32.78px
          ),
          actions: [
            ImageButton(
                height: 24.46,
                width: 24.58,
                onTap: () async {
                  //SUBJECT: 검색

                  final _controller = Get.put(FindController());
                  _controller.cache.clear();
                  final _item = await showPlatformSearch(
                    context: context,
                    delegate: CupertinoSearchDelegate(search),
                  );
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
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        backgroundColor: Colors.white,
        onRefresh: () => Future.sync(
          () => ContentAllListController.to.actionRefresh(),
        ),
        child: GetBuilder<ContentAllListController>(builder: (controller) {
          return Column(
            children: [
              Container(
                  height: 30 + 4,
                  padding: EdgeInsets.only(left: 20),
                  child: GetBuilder<ContentsListAllMySelectController>(
                      builder: (controller) {
                    return Container(
                      child: Row(
                        children: [
                          CategoryTextButton(
                            title: 'board.body.chip.all'.tr,
                            index: 0,
                            selected: controller.selected,
                            onTap: (value) async {
                              controller.selected = value;
                              controller.update();
                              ContentAllListController.to.filter = '';
                              ContentAllListController.to.cache.clear();
                              await ContentAllListController.to.fetchItems();
                            },
                          ),
                          widthSpace(7.0),
                          Expanded(
                            child: HanListView(
                              isSliver: false,
                              direction: Axis.horizontal,
                              controller: controller,
                              itemBuilder: (context, idx) {
                                final cache = controller.cache;
                                Board item = cache[idx];

                                return Padding(
                                  padding: const EdgeInsets.only(right: 7.0),
                                  child: CategoryTextButton(
                                    title: item.info.boardName,
                                    index: idx + 1,
                                    selected: controller.selected,
                                    onTap: (value) async {
                                      controller.selected = value;
                                      controller.update();
                                      ContentAllListController.to.cache.clear();
                                      ContentAllListController.to.filter =
                                          item.info.boardId ?? '';

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
              heightSpace(10.0),
              Expanded(child: ContentAllPintestPART()),
            ],
          );
        }),
      ),
    );
  }
}
