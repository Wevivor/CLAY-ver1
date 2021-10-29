// ignore: must_be_immutable
import 'dart:io';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sprintf/sprintf.dart';

import 'helper_content_init_dto.dart';
import 'wgt_datetime_picker.dart';

class BottomSheetCalendar extends StatelessWidget
    with AppbarHelper, BSValidator, ContentInitDtoHelper {
  final onMenu;
  BottomSheetCalendar({
    this.onMenu,
  });

  final _formKey = GlobalKey<FormState>();
  DateTime _currentDate = DateTime.now();
  final tileTitleStyle = baseStyle.copyWith(
      fontSize: 13,
      color: ThemeController.to.isLightOn ? Color(0xFF353535) : Colors.white,
      fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return GetBuilder<LoadingController>(builder: (controller) {
      return Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                heightSpace(2.0),
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 11,
                    child: Image.asset(Const.assets + 'images/rect_40.png')),
                vwBSAppBar(
                  onBack: () {
                    Get.back();
                    if (onMenu != null) onMenu();
                  },
                  title: '',
                  actions: [
                    Container(
                      alignment: Alignment.center,
                      // color: Colors.red,
                      child: InkWell(
                        onTap: () => _actionSubmit,
                        child: Text(
                          '완료',
                          style: baseStyle.copyWith(
                              fontSize: 13,
                              color: Color(0xff017BFE),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    widthSpace(18.87),
                  ],
                ),
                Container(
                  color: getGrayBg(),
                  padding: EdgeInsets.only(
                      left: 20, right: 20.0, top: 17, bottom: 17),
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
                  // height: 134,
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
                                // return remindTitle(value);
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
                      // heightSpace(12.0),
                      // WideButton(
                      //   isSubmit: false,
                      //   title: '확인',
                      //   onTap: _actionSubmit,
                      //   width: MySize.safeWidth - 50.0,
                      // ),
                      // heightSpace(22.0),
                    ],
                  ),
                ),

                DateTimePickerWidget(),

                Divider(
                  thickness: 1,
                  color: Color(0xffe6e4ea),
                  // color: Colors.red,
                ),
                vwTitle('시간설정'),
                heightSpace(14.0),
                Container(
                    height: 160,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      initialDateTime: new DateTime(_currentDate.year,
                          _currentDate.month, _currentDate.day, 12, 12),
                      onDateTimeChanged: (DateTime newDateTime) {
                        _currentDate = newDateTime;
                      },
                      // onTimerDurationChanged: (Duration value) {},
                      // mode: CupertinoTimerPickerMode.hm,
                    )),
                heightSpace(22.0),

                // // vwTitle('웹 링크'),
                // vwTitle('코멘트'),
                // heightSpace(10.0),
              ],
            ),
          ),
          LoadingController.to.isLoading
              ? Center(
                  child: CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.grey)),
                )
              : Container(),
        ],
      );
    });
  }

  Future<void> _actionSubmit(BuildContext context) async {
    return;
  }
}
