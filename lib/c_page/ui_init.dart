import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/src/auth_controller.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';
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
  // bool _isSharedOpen = false;
  final _controller = Get.put(BoardListController());

  @override
  void initState() {
    super.initState();

    // For sharing images coming from outside the app while the app is in the memory
    _intentDataStreamSubscription = ReceiveSharingIntent.getMediaStream()
        .listen((List<SharedMediaFile> value) {
      setState(() {
        _sharedFiles = value;
        debugPrint("===================>Shared: 1) " +
            (_sharedFiles?.map((f) => f.path).join(",") ?? ""));
      });
    }, onError: (err) {
      debugPrint("getIntentDataStream error: $err");
    });

    // For sharing images coming from outside the app while the app is closed
    ReceiveSharingIntent.getInitialMedia().then((List<SharedMediaFile> value) {
      setState(() {
        _sharedFiles = value;
        debugPrint("===================>Shared: 2) " +
            (_sharedFiles?.map((f) => f.path).join(",") ?? ""));
      });
    });

    // For sharing or opening urls/text coming from outside the app while the app is in the memory
    _intentDataStreamSubscription =
        ReceiveSharingIntent.getTextStream().listen((String value) {
      print("===================> Shared:3 URLS) $value");
      startState(value);
    }, onError: (err) {
      print("getLinkStream error: $err");
    });

    // For sharing or opening urls/text coming from outside the app while the app is closed
    ReceiveSharingIntent.getInitialText().then((String? value) {
      print("===================> Shared:0) $value");
      startState(value);
    });
  }

  void startState(String? value) async {
    await Jiffy.locale(Get.deviceLocale?.languageCode);
    if (value == null) {
      // _isSharedOpen = false;
      ShareController.to.isShare.value = false;
      // await HanUserInfoController.to
      //     .actionRead(FirebaseAuth.instance.currentUser?.uid ?? '');
      print('====> To main_menu');
      if (AuthController.to.getUser != null) {
        await HanUserInfoController.to.actionRead(AuthController.to.getUser);
        Get.offNamed('/main_menu');
      } else {
        Future.microtask(() => Get.offNamed('/login'));
      }
      //SUBJECT: 푸시 처
      if (AuthController.to.getUser != null) {
        await HanUserInfoController.to.actionRead(AuthController.to.getUser);
        var route = '/main_menu';
        if (PushController.to.messageArguments != null) {
          route = '/message';
        }
        Get.offNamed(route);
      } else {
        // _isSharedOpen = true;
        ShareController.to.isShare.value = true;

        if (AuthController.to.getUser != null) {
          await HanUserInfoController.to.actionRead(AuthController.to.getUser);

          Get.to(() => ShareServiceUI());
        } else
          Get.toNamed('/login');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    if (ShareController.to.isShare.value)
      return Container(
        color: Colors.transparent,
      );
    else
      return Scaffold(
        body: Container(),
      );
  }

  @override
  void dispose() {
    _intentDataStreamSubscription.cancel();
    super.dispose();
  }
}
