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

class RemindTextSUB extends StatelessWidget with AppbarHelper, BSValidator {
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
      backgroundColor: getBg(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(profileHeight),
        child: AppBar(
          elevation: 0.0,
          title: Text('리마인드 문구 설정',
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
            heightSpace(22.0),
            Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.only(left: 27.0, right: 27.0),
                height: 38,
                child: TextFormField(
                  maxLines: 1,
                  onTap: () {},

                  // style: accountEditTextStyle,
                  decoration: kRegisterDecoration.copyWith(
                    fillColor: Colors.white,
                    hintText: '‘꼭 확인해!’와 같은 나만의 문구를 입력해주세요',
                    hintStyle: baseStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF707070)),
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
                  //TODO: 안내문구 저장 ==> 사용자 정보롤 변경
                  // controller: RemindListController.to.alarmTextController,
                  validator: (value) {
                    return remindTitle(value);
                  },
                ),
              ),
            ),
            heightSpace(10.0),

            //SUBJECT: 리마인드 문구 설정.. 사용자정보로 설정
            Container(
              padding: EdgeInsets.only(left: 27.0, right: 27.0),
              alignment: Alignment.centerLeft,
              child: Text(
                sprintf('미리보기: [콘텐츠 이름] %s', [
                  ''
                  // RemindListController.to.alarmTextController.text,
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
              width: MySize.safeWidth - 27.0 * 2,
            ),
            heightSpace(22.0),
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
}
