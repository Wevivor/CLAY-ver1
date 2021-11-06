import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/h_share/share_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitUI extends StatefulWidget {
  @override
  _InitUIState createState() => _InitUIState();
}

class _InitUIState extends State<InitUI> with AppbarHelper {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future _loadData() async {
    await Future.delayed(Duration(seconds: 2), () async {
      debugPrint(
          '[CLAY Share] : [Share _loadData ${ShareController.to.isShare}]');

      if (ShareController.to.isShare) {
        debugPrint('[CLAY Share] : [Share _loadData ShareService 이동]');
        Get.offNamed('/share_service');
      } else {
        debugPrint('[CLAY Share] : [Share _loadData 메인메뉴로 이동]');
        Get.offNamed('/main_menu');
      }
    });
    debugPrint(
        '[CLAY Share] : [ui_init: _loadData] : ${ShareController.to.sharedText},${ShareController.to.isShare}');
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      debugPrint(
          " [CLAY: ui_init] ${ShareController.to.sharedText} ,${ShareController.to.isShare}");
      if (ShareController.to.isShare) {
        Get.offNamed('/share_service');
      }
    });

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '대기중...',
              style: TextStyle(fontSize: 40, color: Colors.red),
            ),
            GetBuilder<ShareController>(
              builder: (_) => Center(
                child: Text(
                  ShareController.to.isShare
                      ? ShareController.to.sharedText
                      : '대기중...',
                  style: TextStyle(fontSize: 40, color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // _intentDataStreamSubscription.cancel();
    super.dispose();
  }

  // Future<void> startState(String? value) async {
  //   if (value != null) {
  //     ShareController.to.isShare = true;
  //     ShareController.to.update();
  //     debugPrint("========> Shared:1) $value");
  //     // Future.microtask(() async {
  //     await Jiffy.locale(Get.deviceLocale?.languageCode);

  //     await HanUserInfoController.to.actionRead(AuthController.to.getUser);
  //     await Get.offNamed('/share_service');
  //     // });
  //     // Future.delayed(Duration(milliseconds: 300), () async {});
  //     // Get.offNamed('/share_service');
  //   } else {
  //     try {
  //       debugPrint("========> Shared:0) $value");
  //       ShareController.to.isShare = false;

  //       // Future.microtask(() async {
  //       await Jiffy.locale(Get.deviceLocale?.languageCode);

  //       await HanUserInfoController.to.actionRead(AuthController.to.getUser);
  //       var route = '/main_menu';
  //       debugPrint(
  //           "===================> Push ${PushController.to.messageArguments}");

  //       if (PushController.to.messageArguments != null) {
  //         route = '/message';
  //       }
  //       debugPrint('=======> ROUTE: $route $_isSharedOpen');
  //       // Get.off(() => LoginGoogleUI());
  //       // await Get.offAll(route);
  //       await Get.offNamed(route);
  //       // await ;
  //       // });
  //     } catch (e) {
  //       debugPrint('=========> ${e.toString()}');
  //     }
  //   }
  // }
}
