// ignore: must_be_immutable
import 'dart:io';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_account/controllers/remind_controller.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:clay/h_account/models/remind/remind.dart';
import 'package:clay/h_account/models/remind/remind_dto.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sprintf/sprintf.dart';

import 'helper_content_init_dto.dart';
import 'wgt_datetime_picker.dart';

class BottomSheetCalendar extends StatefulWidget {
  final onMenu;
  final Contents? contents;
  final Remind? remind;
  BottomSheetCalendar({
    this.onMenu,
    this.contents,
    this.remind,
  });

  @override
  _BottomSheetCalendarState createState() => _BottomSheetCalendarState();
}

class _BottomSheetCalendarState extends State<BottomSheetCalendar>
    with AppbarHelper, BSValidator, ContentInitDtoHelper {
  @override
  void initState() {
    super.initState();
    if (widget.remind != null) {
      // _hitText = remind?.title ?? '';
      _currentDate = widget.remind!.rAlarmTime;
      _time = DateTime(_currentDate.year, _currentDate.month, _currentDate.day,
          _currentDate.hour, _currentDate.minute);
      RemindController.to.txtController.text = widget.remind?.title ?? '';
      RemindController.to.time = _time;
      final _ctl = RemindController.to;
      _ctl.txtController
        ..selection = TextSelection.fromPosition(
            TextPosition(offset: _ctl.txtController.text.length));
    }
    if (widget.contents != null) {
      _hitText = widget.contents?.info.contentsTitle ?? '';
    }
  }

  final _formKey = GlobalKey<FormState>();
  DateTime _currentDate = DateTime.now();
  final tileTitleStyle = baseStyle.copyWith(
      fontSize: 13,
      color: ThemeController.to.isLightOn ? Color(0xFF353535) : Colors.white,
      fontWeight: FontWeight.normal);

  String _hitText = '';
  DateTime? _time;

  @override
  Widget build(BuildContext context) {
    RemindController.to.date = DateTime.now();
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
                    if (widget.onMenu != null) widget.onMenu();
                  },
                  title: '',
                  actions: [
                    Container(
                      alignment: Alignment.center,
                      // color: Colors.red,
                      child: InkWell(
                        onTap: () => _actionSubmit(context),
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
                heightSpace(15.0),

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
                          child: Obx(
                            () => Container(
                              height: 38,
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  TextFormField(
                                    // autofocus: false,
                                    maxLines: 1,
                                    onTap: () {},

                                    decoration: kRegisterDecoration.copyWith(
                                      fillColor: Colors.white,
                                      hintText: _hitText == null
                                          ? '꼭 확인해! 수민!'
                                          : null,
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
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                    ),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.done,
                                    onEditingComplete: () => node.unfocus(),
                                    controller:
                                        RemindController.to.txtController,
                                    enabled:
                                        RemindController.to.isTxtEditble.value
                                            ? false
                                            : true,
                                  ),
                                  if (RemindController.to.isTxtEditble.value)
                                    Container(
                                      width: 18,
                                      height: 18,
                                      // padding: EdgeInsets.only(top: 15),
                                      child: ImageButton(
                                        width: 12,
                                        height: 12,
                                        holder: Const.assets +
                                            'icon/pencil_small.png',
                                        onTap: () {
                                          final _ctl = RemindController.to;
                                          _ctl.isTxtEditble.value =
                                              !_ctl.isTxtEditble.value;
                                        },
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                heightSpace(25.0),
                DateTimePickerWidget(),

                Divider(
                  thickness: 1,
                  color: Color(0xffe6e4ea),
                  // color: Colors.red,
                ),
                heightSpace(11.85),

                Container(
                    height: 148,
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      initialDateTime: _time == null
                          ? new DateTime(_currentDate.year, _currentDate.month,
                              _currentDate.day, 12, 12)
                          : _time,
                      onDateTimeChanged: (DateTime newDateTime) {
                        // _currentDate = newDateTime;
                        RemindController.to.time = newDateTime;
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
    //SUBJECT: 리마인드 입력

    FocusScope.of(context).unfocus();

    final _controller = RemindController.to;
    var _txt = _controller.txtController.text;

    //문짜 입력 밸리데이션
    if (remindTitle(_txt) != null || _txt.isEmpty) {
      AppHelper.showMessage(messages['remind'] ?? '');
      return;
    }

    //날짜 밸리데이션
    if (_controller.date == null) {
      AppHelper.showMessage(messages['date'] ?? '');
      return;
    }
    //시간 밸리데이션
    if (_controller.time == null) {
      AppHelper.showMessage(messages['time'] ?? '');
      return;
    }
    LoadingController.to.isLoading = true;
    DateTime _createTime = DateTime(
      _controller.date?.year ?? 0,
      _controller.date?.month ?? 1,
      _controller.date?.day ?? 1,
      _controller.time?.hour ?? 0,
      _controller.time?.minute ?? 0,
    );
    final _profile = HanUserInfoController.to.toProfile();

    if (widget.remind != null) {
      final _remindDto =
          widget.remind!.copyWith(rAlarmTime: _createTime, title: _txt).toDto();
      await _controller.actionUpdate(_remindDto);
      RemindListController.to.actionUpdateItem(_remindDto.toDomain());
    } else {
      final _remindDto = RemindDto(
        from: _profile.toDto(),
        title: _txt,
        rAlarmTime: _createTime,
        contentsInfo: widget.contents!.info.toDto(),
      );
      await _controller.actionIns(_remindDto);
    }

    LoadingController.to.isLoading = false;
    Get.back();
  }
}
