import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/c_page/bott_navi_controller.dart';
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
      height: 66,
      child: Column(
        children: [
          Divider(
            height: 1,
            thickness: 1,
            color: Color(0xffE5E5E5),
          ),
          Container(
              // color: Colors.red,
              padding: EdgeInsets.only(
                top: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // color: Colors.blue,
                        alignment: Alignment.center,
                        child: HanNaiviBarWidget(
                          label: 'com.navi.menu.myboard'.tr,
                          isOn: _index == 0 ? true : false,
                          holder: 'assets/icon/myboard_off.png',
                          onTap: () {
                            BottomNaviController.to.index = 0;
                            BottomNaviController.to.update();
                            Get.offAllNamed('/main_menu');
                          },
                        ),
                      ),
                      HanNaiviBarWidget(
                        isLabel: false,
                        align: MainAxisAlignment.start,
                        height: 48,
                        width: 48,
                        isOn: _index == 1 ? true : false,
                        holder: 'assets/icon/add_board_btn.png',
                        onTap: () {
                          BottomNaviController.to.index = 1;
                          BottomNaviController.to.update();
                          Get.offAllNamed('/main_menu');
                        },
                      ),
                      HanNaiviBarWidget(
                        label: 'com.navi.mycontents'.tr,
                        isOn: _index == 2 ? true : false,
                        holder: 'assets/icon/mycontents_off.png',
                        onTap: () {
                          BottomNaviController.to.index = 2;
                          BottomNaviController.to.update();
                          Get.offAllNamed('/main_menu');
                        },
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return vwBottomMenu(context);
  }
}
