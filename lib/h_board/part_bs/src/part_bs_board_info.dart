// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';
import 'package:get/get.dart';

import 'part_board_class_select.dart';
import 'wgt_bs_badge_item.dart';
import 'wgt_choice_color.dart';

final msgStyle = baseStyle.copyWith(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  height: 1.17, // line height : 16.41px
  letterSpacing: -0.7, // letter spacing : -5%
  color: Color(0xFF707070), // TODO : [SH] 피그마에 color 정보가 없음.
);

class BottomSheetBoardInfo extends StatelessWidget
    with AppbarHelper, BSValidator {
  final onMenu;
  final _formKey = GlobalKey<FormState>();
  BottomSheetBoardInfo({
    this.onMenu,
  });

  final _color = [
    'FFfc5e20',
    'FFFFA178',
    'FFFFC700',
    'FFFFE999',
    'FF159B4D',
    'FFB0E6A3',
    'FF1B75FC',
    'FFCAF2FF',
    'FF9A71BB',
    'FFD6B8EE',
    'FFFE4A75',
    'FFFEB5C7'
  ];

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
            alignment: Alignment.bottomCenter,
            height: 15,
            child: Image.asset(Const.assets + 'images/rect_40.png')),
        vwBSAppBar(
          onBack: () {
            Get.back();
            if (onMenu != null) onMenu();
          },
          title: 'board.bs.body.menu.editBoard'.tr, // 보드 정보 수정
          actions: [
            Container(
              alignment: Alignment.center,
              // color: Colors.red,
              child: InkWell(
                onTap: () async {
                  FocusScope.of(context).unfocus();

                  if (_formKey.currentState == null ||
                      _formKey.currentState?.validate() == false) {
                    AppHelper.showMessage(messages['board_name'] ?? '');
                    return;
                  }

                  final _controller = BoardController.to;
                  _controller
                      .actionChangeName(_controller.boardNameController.text);
                  final exist = ['자기계발', '일/공부', 'LIKE', '선택안함'].firstWhere(
                      (element) =>
                          element == _controller.boardItem?.info.boardBadge,
                      orElse: () {
                    return '';
                  });
                  if (exist == '') {
                    AppHelper.showMessage('배지를 선택해 주세요');
                    return;
                  }
                  _color.firstWhere(
                      (element) =>
                          element == _controller.boardItem?.info.boardColor,
                      orElse: () {
                    return '';
                  });
                  if (_color == '') {
                    AppHelper.showMessage('색상을 선택해 주세요');
                    return;
                  }

                  await _controller.actionUpdate(
                      id: _controller.boardItem?.boardId,
                      info: _controller.boardItem);
                  await BoardListController.to
                      .actionUpdateItem(BoardController.to.boardItem);
                  Get.back();
                },
                child: Text(
                  'com.btn.done'.tr, // 완료
                  style: baseStyle.copyWith(
                    fontFamily:
                        Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                    fontSize: 14,
                    color: Color(0xff017BFE),
                    fontWeight: Get.locale?.languageCode == 'ko'
                        ? FontWeight.w400
                        : FontWeight.w500,
                    height: Get.locale?.languageCode == 'ko'
                        ? 1.17
                        : 1.37, // 16.41px , 19.12px
                  ),
                ),
              ),
            ),
            widthSpace(20.0),
          ],
        ),
        heightSpace(10.0),
        Padding(
          padding: EdgeInsets.only(left: 18.0, right: 19.0),
          child: vwTitle('com.bs.subtitle.boardName'.tr), // 보드 이름
        ),
        heightSpace(10.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: Form(
            key: _formKey,
            child: Container(
              height: 38,
              decoration: DecoHelper.roundDeco.copyWith(
                color: Color(0xFFF6F6F6),
              ),
              padding: const EdgeInsets.only(
                left: 12.0,
                right: 16.0,
              ),
              child: TextFormField(
                maxLines: 1,
                onTap: () {},

                // style: accountEditTextStyle,
                decoration: kInputDecoration.copyWith(
                  fillColor: Color(0xFFF6F6F6),
                  //  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  hintText: 'board.bs.sub.title.name'.tr, // 홈베이킹 레시피
                  hintStyle: msgStyle,
                  isDense: true,
                  errorText: null,
                  errorStyle: TextStyle(
                    color: Colors.transparent,
                    fontSize: 0,
                    height: 0,
                  ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onEditingComplete: () => node.unfocus(),
                controller: BoardController.to.boardNameController,
                validator: (value) {
                  return boardName(value);
                },
              ),
            ),
          ),
        ),
        heightSpace(16.0),
        Padding(
          padding: EdgeInsets.only(left: 18.0, right: 19.0),
          child: vwTitle('board.bs.sub.subtitle.badgeChoice'.tr), // 배지 선택
        ),
        heightSpace(10.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: BoardClassSelectPART(onTap: () {}),
        ),

        heightSpace(20.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: vwTitle('board.bs.sub.subtitle.replaceColor'.tr), // 색상변경
        ),
        heightSpace(10.0),
        //SUBJECT : 색상변경
        Container(
          color: Colors.white,
          child: Column(
            children: [
              GetBuilder<BoardController>(builder: (controller) {
                final _selectColor = Color(int.parse(
                    controller.boardItem!.info.boardColor,
                    radix: 16));
                return Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[0]);
                            },
                            boardColor: Color(int.parse(_color[0], radix: 16)),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[1]);
                            },
                            boardColor: Color(int.parse(_color[1], radix: 16)),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[2]);
                            },
                            boardColor: Color(int.parse(_color[2], radix: 16)),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[3]);
                            },
                            boardColor: Color(int.parse(_color[3], radix: 16)),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[4]);
                            },
                            boardColor: Color(int.parse(_color[4], radix: 16)),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[5]);
                            },
                            boardColor: Color(int.parse(_color[5], radix: 16)),
                            selectColor: _selectColor,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[6]);
                            },
                            boardColor: Color(int.parse(_color[6], radix: 16)),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[7]);
                            },
                            boardColor: Color(int.parse(_color[7], radix: 16)),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[8]);
                            },
                            boardColor: Color(int.parse(_color[8], radix: 16)),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[9]);
                            },
                            boardColor: Color(int.parse(_color[9], radix: 16)),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[10]);
                            },
                            boardColor: Color(int.parse(_color[10], radix: 16)),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor(_color[11]);
                            },
                            boardColor: Color(int.parse(_color[11], radix: 16)),
                            selectColor: _selectColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
              // Divider(height: 1),
            ],
          ),
        ),

        heightSpace(6.0),
        Divider(
          height: 0,
          thickness: 0.3,
          color: Color(0xFFDEDEDE),
        ),
        //SUBJECT: 스위치 버턴.
        Padding(
          padding: EdgeInsets.only(left: 18.0, right: 19.0),
          child: GetBuilder<BoardController>(builder: (controller) {
            var _value = false;
            if (controller.boardItem?.shareCheck == 1 ||
                controller.boardItem?.shareCheck == 2) _value = true;
            return HanListTile(
              onTap: () {
                if (controller.boardItem?.shareCheck == 1 ||
                    controller.boardItem?.shareCheck == 2)
                  controller.actionChangeShare(0);
                else
                  controller.actionChangeShare(1);
              },
              padding: EdgeInsets.zero,
              leading: vwTitle('board.bs.sub.subtitle.share'.tr), // 공유하기
              trailing: Switch(
                  value: _value,
                  onChanged: (value) {
                    if (value)
                      controller.actionChangeShare(1);
                    else
                      controller.actionChangeShare(0);
                  }),
            );
          }),
        ),
        heightSpace(16.0),
      ],
      // ),
    );
  }

  Widget vwTitle(final title) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }
}
