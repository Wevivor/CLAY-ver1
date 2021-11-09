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
    // if (mounted) _loadData();

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 100), () {
        debugPrint(
            '[CLAY Share] : [ui_init: build] : ${ShareController.to.sharedText},${ShareController.to.isShare}');
        if (ShareController.to.isShare) {
          debugPrint("[ onAddPostFrameCallback] ${ShareController.to.isShare}");
          AppHelper.goto('/share_service');
        } else {
          debugPrint(
              "[ onAddPostFrameCallback ] ${ShareController.to.isShare}");
          AppHelper.goto('/main_menu');
          // Future.delayed(Duration(milliseconds: 300), () {
          //   AppHelper.goto('/main_menu');
          // });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: GlobalStyle.configStatusTheme,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GetBuilder<ShareController>(builder: (_) {
          return Center(
            child: Text(
              ShareController.to.isShare
                  ? ShareController.to.sharedText
                  : '대기중...',
              style: TextStyle(fontSize: 40, color: Colors.transparent),
            ),
          );
        }),
        // return Center(
        //   child: Text(
        //     ShareController.to.isShare
        //         ? ShareController.to.sharedText
        //         : '대기중...',
        //     style: TextStyle(fontSize: 40, color: Colors.red),
        //   ),
        // );
        // }),
      ),
    );
  }

  @override
  void dispose() {
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
