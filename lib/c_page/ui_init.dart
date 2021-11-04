import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/src/auth_controller.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_page/ui_han_bott_navi.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';
import 'package:clay/h_login/ui_login_google.dart';
import 'package:clay/h_push/controllers/push_controller.dart';
import 'package:clay/h_share/h_share.dart';
import 'package:clay/h_share/share_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class InitUI extends StatefulWidget {
  @override
  _InitUIState createState() => _InitUIState();
}

class _InitUIState extends State<InitUI> with AppbarHelper {
  late StreamSubscription _intentDataStreamSubscription;
  List<SharedMediaFile>? _sharedFiles;
  String? _sharedText;
  bool _isSharedOpen = false;
  final _controller = Get.put(BoardListController());

  @override
  void initState() {
    super.initState();

    // For sharing or opening urls/text coming from outside the app while the app is in the memory
    _intentDataStreamSubscription =
        ReceiveSharingIntent.getTextStream().listen((String value) {
      debugPrint("===================> Shared:3 URLS) $value");
      setState(() {
        if (value != null)
          _isSharedOpen = true;
        else
          _isSharedOpen = false;
      });
      startState(value);
    }, onError: (err) {
      debugPrint("getLinkStream error: $err");
    });

    // For sharing or opening urls/text coming from outside the app while the app is closed
    ReceiveSharingIntent.getInitialText().then((String? value) {
      setState(() {
        if (value != null)
          _isSharedOpen = true;
        else
          _isSharedOpen = false;
      });

      debugPrint("===================> Shared:0) $value");
      startState(value);
    });
  }

  Future<void> startState(String? value) async {
    if (value != null) {
      ShareController.to.isShare = true;
      ShareController.to.update();
      debugPrint("========> Shared:1) $value");
      // Future.microtask(() async {
      await Jiffy.locale(Get.deviceLocale?.languageCode);

      await HanUserInfoController.to.actionRead(AuthController.to.getUser);
      Get.offNamed('/share_service');
      // });
      // Future.delayed(Duration(milliseconds: 300), () async {});
      // Get.offNamed('/share_service');
    } else {
      try {
        debugPrint("========> Shared:0) $value");
        ShareController.to.isShare = false;

        // Future.microtask(() async {
        await Jiffy.locale(Get.deviceLocale?.languageCode);

        await HanUserInfoController.to.actionRead(AuthController.to.getUser);
        var route = '/main_menu';
        debugPrint(
            "===================> Push ${PushController.to.messageArguments}");

        if (PushController.to.messageArguments != null) {
          route = '/message';
        }
        debugPrint('=======> ROUTE: $route $_isSharedOpen');
        // Get.off(() => LoginGoogleUI());
        Get.offNamed(route);
        // });
      } catch (e) {
        debugPrint('=========> ${e.toString()}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          color: Colors.transparent,
        ));
  }

  @override
  void dispose() {
    _intentDataStreamSubscription.cancel();
    super.dispose();
  }
}
