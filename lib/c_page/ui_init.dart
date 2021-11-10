import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/src/auth_controller.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_push/controllers/push_controller.dart';
import 'package:clay/h_share/share_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class InitUI extends StatefulWidget {
  @override
  _InitUIState createState() => _InitUIState();
}

class _InitUIState extends State<InitUI> with AppbarHelper {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 100), () async {
        await Jiffy.locale(Get.deviceLocale?.languageCode);
        await HanUserInfoController.to.actionRead(AuthController.to.getUser);
        debugPrint(
            '[CLAY Share] : [ui_init: build] : ${ShareController.to.sharedText},${ShareController.to.isShare}');
        // if (ShareController.to.isShare) {
        debugPrint("[ onAddPostFrameCallback] ${ShareController.to.isShare}");
        AppHelper.goto('/share_service');
        // } else {
        //   debugPrint(
        //       "[ onAddPostFrameCallback ] ${ShareController.to.isShare}");
        //   var route = '/main_menu';

        //   if (PushController.to.messageArguments != null) {
        //     route = '/message';
        //   }

        //   AppHelper.goto(route);
        // }
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
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
