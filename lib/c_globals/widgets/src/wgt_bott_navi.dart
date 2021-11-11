import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/c_page/bott_navi_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_content/controllers/content_all_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BNBarWidget extends StatefulWidget {
  @override
  _BNBarWidgetState createState() => _BNBarWidgetState();
}

class _BNBarWidgetState extends State<BNBarWidget> with AppbarHelper {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(BNBarWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget vwBottomMenu(BuildContext context) {
    final _index = BottomNaviController.to.getIndex;
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.22),
            blurRadius: 5.0,
            offset: Offset(0, -0.5),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 8, left: 72, right: 68),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: HanNaiviBarWidget(
                    height: 18,
                    width: 18,
                    label: 'com.navi.menu.myboard'.tr,
                    isOn: _index == 0 ? true : false,
                    holder: _index == 0
                        ? 'assets/icon/myboard_on.png'
                        : 'assets/icon/myboard_off.png',
                    onTap: () {
                      BottomNaviController.to.index = 0;
                      BottomNaviController.to.update();
                      Get.offAllNamed('/main_menu');
                    },
                  ),
                ),
                // HanNaiviBarWidget(
                //   isLabel: false,
                //   align: MainAxisAlignment.start,
                //   height: 48,
                //   width: 48,
                //   isOn: _index == 1 ? true : false,
                //   holder: 'assets/icon/add_board_btn.png',
                //   onTap: () {
                //     BottomNaviController.to.index = 1;
                //     BottomNaviController.to.update();
                //     Get.offAllNamed('/main_menu');
                //   },
                // ),
                HanNaiviBarWidget(
                  height: 17,
                  width: 17,
                  label: 'com.navi.mycontents'.tr,
                  isOn: _index == 1 ? true : false,
                  holder: _index == 1
                      ? 'assets/icon/mycontents_on.png'
                      : 'assets/icon/mycontents_off.png',
                  onTap: () async {
                    final contentAllListController = Get.put(
                      ContentAllListController(),
                    );
                    contentAllListController.cache.clear();
                    await contentAllListController.fetchItems();
                    BottomNaviController.to.index = 1;
                    BottomNaviController.to.update();
                    Get.offAllNamed('/main_menu');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      GetBuilder<BottomNaviController>(builder: (_) => vwBottomMenu(context)),
      Container(
        width: 36,
        height: 36,
        child: FloatingActionButton(
          child: Icon(
            Icons.add_rounded,
            size: 24,
          ),
          // child: Image.asset('assets/icon/add_board_btn.png'),
          mini: false,
          elevation: 0,
          backgroundColor: Colors.black,
          // foregroundColor: Colors.white,
          splashColor: Colors.black,
          onPressed: () {
            Get.put(BoardListMySelectController());
            BoardListMySelectController.to.cache.clear();
            BoardListMySelectController.to.fetchItems();
            // _showBS(context, vwBoardMenu(context));
          },
        ),
      ),
    ]);
  }
}
