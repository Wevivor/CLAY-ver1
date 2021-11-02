// sub_search 검색 화면
import 'package:clay/c_config/config.dart';
import 'package:clay/h_search/part_search/controllers/find_controller.dart';
import 'package:clay/h_search/part_search/part_search.dart';
import 'package:clay/h_search/page/part_search_init.dart';
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

    final profileHeight = 65.0;
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
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 7.67, top: 19.0, bottom: 14.0),
                          child: InkWell(
                            child: Container(
                              // width: MySize.safeWidth,
                              height: 32.0,
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                color: Color(0xFFEFEFEF),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        10.0) //         <--- border radius here
                                    ),
                              ), //       <--- BoxDecoration here
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(Icons.search,
                                        color: Color(0xff8E8E8E)),
                                  ),
                                  widthSpace(12.51),
                                  Text(
                                    FindController.to.searchWord == ''
                                        ? 'search.appbar.pholder.search'.tr //검색
                                        : FindController.to.searchWord,
                                    style: baseStyle.copyWith(
                                      fontFamily:
                                          Get.locale?.languageCode == 'ko'
                                              ? 'Roboto'
                                              : 'Avenir',
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      height: Get.locale?.languageCode == 'ko'
                                          ? 1.17
                                          : 1.37, // 15.23px, 17.76px,
                                    ),
                                  ),
                                  Expanded(child: widthSpace(10.0)),
                                ],
                              ),
                            ),
                            //SUBJECT: 검색.
                            onTap: () async {
                              final _controller =
                                  Get.put(SearchKeyWordListController());
                              final result = await showSearch<String>(
                                context: context,
                                delegate: SearchHan(
                                    FindController.to.searchWord.isEmpty
                                        ? '검색' // TODO : [SH] 현재 번역하지 않음.
                                        : FindController.to.searchWord),
                              );
                              //SUBJECT: 검색
                              //TODO : 검색어 조건 설정
                              FindController.to.searchWord = result ?? '';
                              FindController.to.cache.clear();

                              await FindController.to.fetchItems(term: result);
                              FindController.to.update();
                            },
                          ),
                        ),
                      ),
                      widthSpace(11.0),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          'com.btn.cancel'.tr,
                          style: baseStyle.copyWith(
                            fontFamily: Get.locale?.languageCode == 'ko'
                                ? 'Roboto'
                                : 'Avenir',

                            fontSize:
                                Get.locale?.languageCode == 'ko' ? 13 : 12,
                            color: Colors.black,
                            fontWeight: Get.locale?.languageCode == 'ko'
                                ? FontWeight.w400
                                : FontWeight.w500,
                            height: Get.locale?.languageCode == 'ko'
                                ? 1.17
                                : 1.37, // 15.23px, 16.39px
                          ),
                        ),
                      ),
                      widthSpace(20),
                    ],
                  ),
                ),
              ),
              // Divider(),
            ],
          ),
        ),
      ),
      // backgroundColor: Color(0xFFf2f2f2),
      backgroundColor: Colors.white,

      ///--------------------------
      ///  컴색 필터 임
      ///-------------------------
      body: Column(
        children: [
          Flexible(
            child: GetBuilder<FindController>(builder: (_) => SearchInitPART()),
          ),
        ],
      ),
    );
  }
}
