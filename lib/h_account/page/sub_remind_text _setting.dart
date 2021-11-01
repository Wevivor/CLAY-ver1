import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_account/controllers/remind_controller.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:clay/h_account/part_profile/src/btn_wide.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sprintf/sprintf.dart';

class RemindTextSettingSUB extends StatelessWidget
    with AppbarHelper, BSValidator {
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

  var _txt = RemindController.to.txtController.text;

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
                    hintText:
                        _txt.isEmpty ? '‘꼭 확인해!’와 같은 나만의 문구를 입력해주세요' : _txt,
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
                  controller: RemindController.to.txtController,
                  validator: (value) {
                    return remindTitle(value);
                  },
                  onChanged: (value) {
                    RemindController.to.txtController.text = value;
                    RemindController.to.txtController
                      ..selection = TextSelection.fromPosition(TextPosition(
                          offset:
                              RemindController.to.txtController.text.length));
                    if (value.isEmpty) {
                      RemindController.to.isTxtEditble.value = true;
                    } else {
                      RemindController.to.isTxtEditble.value = false;
                    }
                    RemindController.to.update();
                  },
                ),
              ),
            ),
            heightSpace(10.0),

            //SUBJECT: 리마인드 문구 설정.. 사용자정보로 설정
            GetBuilder<RemindController>(
              builder: (_) {
                _txt = RemindController.to.txtController.text;
                return Container(
                  padding: EdgeInsets.only(left: 27.0, right: 27.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    sprintf('미리보기: [콘텐츠 이름] %s', [
                      if (_txt.isEmpty) '꼭 확인해!',
                      if (!_txt.isEmpty) _txt,
                    ]),
                    style: baseStyle.copyWith(
                      color: Color(0XFF707070),
                    ),
                  ),
                );
              },
            ),
            heightSpace(12.0),
            Obx(
              () => WideButton(
                isSubmit: !RemindController.to.isTxtEditble.value,
                title: '확인',
                onTap: () => _actionSubmit(context),
                width: MySize.safeWidth - 27.0 * 2,
              ),
            ),
            heightSpace(22.0),
          ],
        ),
      ),
    );
  }

  Future<void> _actionSubmit(BuildContext context) async {
    final _isEditble = RemindController.to.isTxtEditble.value;
    //리마인 문구 업데이터.
    if (!_isEditble) {
      final _txt = RemindController.to.txtController.text;
      HanUserInfoController.to.userInfo =
          HanUserInfoController.to.userInfo!.copyWith(remindTxt: _txt);
      await HanUserInfoController.to.actionRemindTxt(_txt);
      AppHelper.showMessage('리마인드 문구가 저장 되었습니다');
      // RemindController.to.txtController.clear();
      // RemindController.to.isTxtEditble.value = true;
      Get.back();
    }

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
    }
    return;
  }
}
