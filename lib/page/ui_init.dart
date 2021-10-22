import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/common/commons.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/controllers/home/homes.dart';
import 'package:clay/models/models.dart';
import 'package:clay/page/ui_board.dart';
import 'package:clay/page/ui_content.dart';
import 'package:clay/part/part_bs/part_bs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import 'ui_search.dart';
import 'ui_share_service.dart';

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
        print("===================>Shared: 1) " +
            (_sharedFiles?.map((f) => f.path).join(",") ?? ""));
      });
    }, onError: (err) {
      print("getIntentDataStream error: $err");
    });

    // For sharing images coming from outside the app while the app is closed
    ReceiveSharingIntent.getInitialMedia().then((List<SharedMediaFile> value) {
      setState(() {
        _sharedFiles = value;
        print("===================>Shared: 2) " +
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
    if (value == null) {
      // _isSharedOpen = false;
      ShareController.to.isShare.value = false;
      if (FirebaseAuth.instance.currentUser != null) {
        await HanUserInfoController.to
            .actionRead(FirebaseAuth.instance.currentUser?.uid ?? '');
        print('====> To main_menu');
        Get.offNamed('/main_menu');
      } else {
        print('====> To LOGIN');
        Future.microtask(() => Get.offNamed('/login'));
      }
    } else {
      // _isSharedOpen = true;
      ShareController.to.isShare.value = true;

      if (FirebaseAuth.instance.currentUser != null) {
        final _exist = await HanUserInfoController.to
            .actionRead(FirebaseAuth.instance.currentUser?.uid ?? '');
        print(' START STATE');

        Get.to(() => ShareServiceUI());
      } else
        Get.toNamed('/login');
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
