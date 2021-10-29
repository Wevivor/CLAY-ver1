import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:clay/h_account/part_profile/src/btn_wide.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_content/part_bs/src/part_bs_calendar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:jiffy/jiffy.dart';
import 'package:sprintf/sprintf.dart';

class RemindSUB extends StatelessWidget with AppbarHelper, BSValidator {
  final _formKey = GlobalKey<FormState>();
  final tileTitleStyle = baseStyle.copyWith(
      fontSize: 13,
      color: ThemeController.to.isLightOn ? Color(0xFF353535) : Colors.white,
      fontWeight: FontWeight.normal);
  final titleStyle = baseStyle.copyWith(
      fontSize: 12,
      color: ThemeController.to.isLightOn ? Color(0xFF353535) : Colors.white,
      fontWeight: FontWeight.w700);

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

  Color getGrayBg() {
    return ThemeController.to.isLightOn
        ? Color(0xFFF6F6F6)
        : Colors.grey[400] ?? Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    final profileHeight = 60.0;
    return Scaffold(
      backgroundColor: getGrayBg(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(profileHeight),
        child: AppBar(
          elevation: 0.0,
          title: Text('리마인드 알림 관리',
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
      body: Container(
        child: Column(
          children: [
            Container(
              color: getGrayBg(),
              padding:
                  EdgeInsets.only(left: 20, right: 20.0, top: 17, bottom: 17),
              child: Container(
                child: HanListTile(
                  padding: EdgeInsets.zero,
                  leading: Text(
                    '알림 문구 커스텀',
                    style: tileTitleStyle,
                  ),
                  // trailing: Icon(MdiIcons.chevronRight),
                ),
              ),
            ),
            Container(
              height: 134,
              color: getBg(),
              padding: EdgeInsets.only(
                left: 20,
                right: 20.0,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 19.0, right: 19.0),
                    child: Form(
                      key: _formKey,
                      child: Container(
                        height: 38,
                        child: TextFormField(
                          maxLines: 1,
                          onTap: () {},

                          // style: accountEditTextStyle,
                          decoration: kRegisterDecoration.copyWith(
                            fillColor: Colors.white,
                            hintText: '꼭 확인해! 수민!',
                            hintStyle: baseStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                            isDense: true,
                            errorText: null,
                            errorStyle: TextStyle(
                              color: Colors.transparent,
                              fontSize: 0,
                              height: 0,
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          onEditingComplete: () => node.unfocus(),
                          controller:
                              RemindListController.to.alarmTextController,
                          validator: (value) {
                            return remindTitle(value);
                          },
                        ),
                      ),
                    ),
                  ),
                  heightSpace(10.0),
                  Container(
                    padding: EdgeInsets.only(left: 19.0, right: 19.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      sprintf('미리보기: [콘텐츠 이름] %s', [
                        RemindListController.to.alarmTextController.text,
                      ]),
                      style: baseStyle.copyWith(
                        color: Color(0XFF707070),
                      ),
                    ),
                  ),
                  heightSpace(12.0),
                  WideButton(
                    isSubmit: false,
                    title: '확인',
                    onTap: _actionSubmit,
                    width: MySize.safeWidth - 50.0,
                  ),
                  heightSpace(22.0),
                ],
              ),
            ),
            Container(
              color: getGrayBg(),
              padding:
                  EdgeInsets.only(left: 20, right: 20.0, top: 17, bottom: 17),
              child: Container(
                child: HanListTile(
                  padding: EdgeInsets.zero,
                  leading: Text(
                    '설정된 알림 리스트 ',
                    style: tileTitleStyle,
                  ),
                  // trailing: Icon(MdiIcons.chevronRight),
                ),
              ),
            ),
            GetBuilder<RemindListController>(builder: (controller) {
              return Expanded(
                child: Container(
                  // padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                  child: HanListView(
                    controller: controller,
                    isSliver: false,
                    direction: Axis.vertical,
                    itemBuilder: (context, idx) {
                      final cache = controller.cache;
                      final size = controller.cache.length;
                      Board item = cache[idx];

                      //SUBJECT:보드 만들기
                      //TODO : 보드 위젯 이후에 작업
                      //TODO: 공유부분을 추가해야함. 고정을 추가해야 함

                      return Column(children: [
                        HanListTile(
                          padding: EdgeInsets.only(
                              top: 16, left: 16, bottom: 16, right: 16),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.info.boardName,
                                style: baseStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff191919),
                                ),
                              ),
                              heightSpace(5.0),
                              Text(
                                Jiffy(item.info.registerDate)
                                    .format('yyyy.dd.dd hh:mm a'),
                                style: baseStyle.copyWith(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff191919),
                                ),
                              ),
                            ],
                          ),
                          trailing: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ImageButton(
                                onTap: () => _actionSelect(context),
                                width: 30,
                                height: 30,
                                holder: Const.assets + 'icon/icon_alarm.png',
                              ),
                              widthSpace(8.0),
                              ImageButton(
                                // onTap: () async {
                                //   await _actionDelete(context, item);
                                // },
                                onTap: () => _actionDelete(context, item),
                                width: 30,
                                height: 30,
                                holder: Const.assets + 'icon/icon_close.png',
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 0.5,
                          color: Color(0xFFDEDEDE),
                        )
                      ]);
                    },
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Future<void> _actionSubmit(BuildContext context) async {
    return;
  }

  Future<void> _actionDelete(BuildContext context, final item) async {
    var _responce = false;
    await DialogHelper.MessageDialog(
      context,
      (context) => DeleteDialog(
        title: '알람을 삭제하시겠습니까?',
        deleteTitle: '삭제',
        okTitle: '취소',
        okTap: () {
          _responce = false;
        },
        deleteTap: () {
          _responce = true;
        },
      ),
    );
    if (_responce) {
      await RemindListController.to.actionDelete(item.info.contentsId);
      // RemindListController.to.actionDelteItem(item.info.contentsId ?? '');
    }
    return;
  }

  Future<void> _actionSelect(BuildContext context) async {
    Get.lazyPut(() => ContentsController());

    _showBS(context, BottomSheetCalendar());
  }

  void _showBS(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        // barrierColor: Colors.red,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return WillPopScope(
            onWillPop: () {
              //SUBJECT: BS 시스템네비바 검게 방지하는
              delaySetSysyemUIOverlays(250);

              return Future.value(true);
            },
            // child: AnnotatedRegion<SystemUiOverlayStyle>(
            //   value: GlobalStyle.configStatusTheme,
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                child: Wrap(
                  children: [child],
                ),
              ),
            ),
            // ),
          );
        });
  }
}
