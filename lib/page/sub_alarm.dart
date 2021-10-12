import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/common/commons.dart';
import 'package:clay/controllers/helper_app/helper_app.dart';
import 'package:clay/part/part_app/part_app.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AlarmSUB extends StatelessWidget with AppbarHelper {
  final _formKey = GlobalKey<FormState>();

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return GlobalStyle.primary;
    }
    return GlobalStyle.primary;
  }

  Color getColorCancel(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Color(0xffC1C1C1);
    }
    return Color(0xffC1C1C1);
  }

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => PickedImageController());
    Get.lazyPut(() => LoadingController());
    final profileHeight = 60.0;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(profileHeight),
        child: AppBar(
          elevation: 0.0,
          title: Text('알람 히스토리',
              style: baseStyle.copyWith(
                  fontSize: 16,
                  color: Color(0xff373737),
                  fontWeight: FontWeight.normal)),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.chevron_left,
              color: Color(0xff373737),
            ),
          ),
          backgroundColor: Colors.white,
          actions: actionBlankList(),

          ///구코포들를 등록
          flexibleSpace: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ),
          ),
        ),
      ),
      body: GetBuilder<PushController>(
        builder: (_) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: HanListView(
            isSliver: false,
            direction: Axis.vertical,
            controller: PushController.to,
            itemBuilder: (context, idx) {
              final cache = PushController.to.cache;

              return Column(
                children: [
                  Container(
                    decoration: DecoHelper.roundDeco.copyWith(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(width: 1, color: Color(0xFFF6F6F6)),
                    ),
                    child: PushTile(
                      title: 'SK테레콤',
                      content: '2020.08.21  00:00 - 2020.08.21  00:00',
                      alert: PUSH_KIND.BUY,
                    ),
                  ),
                  Container(
                    height: 10.0,
                    color: Colors.white,
                  )
                ],
              );
            },
          ),
        ),
      ),

      //TODO 업로드 저장 루틴
    );
  }
}
