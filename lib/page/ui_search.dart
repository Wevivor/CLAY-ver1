// sub_search
import 'package:clay/c_config/config.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/part/part_search/part_search.dart';
import 'package:clay/part/part_search/src/part_search_init.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';

// ignore: must_be_immutable
class SearchUI extends StatelessWidget {
  SearchUI();

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    final _controller = Get.put(FindController());

    final profileHeight = 70.0;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(profileHeight),
        child: new AppBar(
          elevation: 0.0,
          // backgroundColor: Color(0xfff2f2f2),
          automaticallyImplyLeading: false,
          leading: null,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              heightSpace(MySize.paddingTop ?? 0.0),

              ///------------------------------------------------------
              //// 검색 부분
              ///------------------------------------------------------

              GetBuilder<FindController>(
                builder: (_) => Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 16.0, bottom: 10.0),
                          child: InkWell(
                            child: Container(
                              // width: MySize.safeWidth,
                              height: 36.0,
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                color: Color(0xFFf2f2f2),
                                border: Border.all(
                                    width: 0.1, color: Color(0xFFf2f2f2)),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        100.0) //         <--- border radius here
                                    ),
                              ), //       <--- BoxDecoration here
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(Icons.search,
                                        color: Color(0xffbdbdbd)),
                                  ),
                                  widthSpace(12.51),
                                  Text(
                                    FindController.to.searchWord == ''
                                        ? '검색'
                                        : FindController.to.searchWord,
                                  ),
                                  Expanded(child: widthSpace(10.0)),
                                  // if (FindController
                                  //     .to.searchWord.isNotEmpty)
                                ],
                              ),
                            ),
                            onTap: () async {
                              final _controller =
                                  Get.put(SearchKeyWordListController());
                              final result = await showSearch<String>(
                                context: context,
                                delegate: SearchHan(
                                    FindController.to.searchWord.isEmpty
                                        ? '검색'
                                        : FindController.to.searchWord),
                              );
                              //SUBJECT: 검색
                              //TODO : 검색어 조건 설정
                              FindController.to.searchWord = result ?? '';
                              FindController.to.cache = [];
                              // FindController.to.own = false;
                              // FindController.to.support = false;
                              // FindController.to.member = false;

                              await FindController.to.fetchItems(term: result);
                            },
                          ),
                        ),
                      ),
                      widthSpace(12.17),
                      InkWell(
                        onTap: () {
                          // FindController.to.searchWord = '';
                          // FindController.to.update();
                          Get.back();
                        },
                        child: Text(
                          '취소',
                          style: baseStyle.copyWith(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      widthSpace(18.87),
                    ],
                  ),
                ),
              ),
              // Divider(),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFf2f2f2),
      body:

          ///--------------------------
          /// best UI의 컴색 필터 임
          ///-------------------------

          Column(
        children: [
          Flexible(
            child: GetBuilder<FindController>(
                init: FindController(), builder: (_) => SearchInitPART()),
          ),
        ],
      ),
    );
  }

  Widget getSearchField() {
    // String text = getStringValue(LanguageKey.searchForPhotos, context);
    return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        border: Border.all(width: 1.2, color: Colors.white),
      ),
    );
  }
}
