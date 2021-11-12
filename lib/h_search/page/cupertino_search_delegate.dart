import 'package:clay/c_config/config.dart';
import 'package:clay/h_search/controllers/find_controller.dart';
import 'package:clay/h_search/page/part_search_init.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'platform_search.dart';
import 'package:get/get.dart';

class CupertinoSearchDelegate extends AbstractPlatformSearchDelegate {
  // final List<PlatformItem> Function(String text) search;
  final Function(String text) search;
  CupertinoSearchDelegate(this.search);
  Widget buildActions(BuildContext context) {
    return CupertinoButton(
      child: const Text('Cancel'),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      onPressed: () {
        close(context, null);
      },
    );
  }

  fetchSearch() async {
    await search(query);
  }

  Widget buildResults(BuildContext context) {
    fetchSearch();
    return GetBuilder<FindController>(
        builder: (_) => SearchInitPART(
              delegate: this,
              parentContext: context,
            ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    fetchSearch();
    // return GetBuilder<FindController>(builder: (_) => SearchInitPART());
    return GetBuilder<FindController>(
        builder: (_) => SearchInitPART(
              delegate: this,
              parentContext: context,
            ));
  }

  @override
  Widget buildScaffold(Widget? body, BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        transitionBetweenRoutes: true,
        // leading: SizedBox.fromSize(
        //   size: Size.fromWidth(5.0),
        // ),
        leading: null,
        automaticallyImplyLeading: false,
        middle: Container(
          // width: MySize.safeWidth,
          height: 32.0,
          padding: const EdgeInsets.only(left: 10.0),

          child: CupertinoSearchTextField(
            prefixIcon: Container(
              // color: Colors.blue,
              padding: EdgeInsets.only(top: 5.0),
              height: 32.0,
              alignment: Alignment.bottomCenter,
              child: Icon(
                CupertinoIcons.search,
                color: Colors.black,
              ),
            ),
            placeholder: FindController.to.searchWord == ''
                ? 'search.appbar.pholder.search'.tr //검색
                : FindController.to.searchWord,
            padding: EdgeInsets.only(left: 10.0),
            controller: queryTextController,
            decoration: BoxDecoration(
              color: Color(0xFFEFEFEF),
              // color: Colors.red,
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0) //         <--- border radius here
                  ),
            ), //       <--- BoxDeco
            style: baseStyle.copyWith(
              fontFamily:
                  Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
              fontSize: 13,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              height: Get.locale?.languageCode == 'ko' ? 1.17 : 1.37,
            ), // 15.23px, 17.76px,
            focusNode: focusNode,
            onSubmitted: (String _) {
              showResults(context);
            },
          ),
        ),

        //SUBJECT: 검색
        //TODO: 다국어
        //WORKER: SH
        trailing: CupertinoButton(
          child: Text(
            'com.btn.cancel'.tr,
            style: baseStyle.copyWith(
              fontFamily:
                  Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',

              fontSize: Get.locale?.languageCode == 'ko' ? 13 : 12,
              color: Colors.black,
              fontWeight: Get.locale?.languageCode == 'ko'
                  ? FontWeight.w400
                  : FontWeight.w500,
              height: Get.locale?.languageCode == 'ko'
                  ? 1.17
                  : 1.37, // 15.23px, 16.39px
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          onPressed: () {
            close(context, null);
          },
        ),
      ),
      child: body ?? Container(),
    );
  }
}
