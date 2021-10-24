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

class BottomSheetBoardInfo extends StatelessWidget
    with AppbarHelper, BSValidator {
  final onMenu;
  final _formKey = GlobalKey<FormState>();
  BottomSheetBoardInfo({
    this.onMenu,
  });

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
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
          title: '보드 접보 수정',
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
                    AppHelper.showMessage('배치를 선택해 주세요');
                    return;
                  }

                  final _color = [
                    'FFfc5e20',
                    'FFffc700',
                    'FF159b4d',
                    'FF1b9dfc',
                    'FF9a71bb',
                    'FF9a71bb',
                    'FFff78d9',
                    'FFcaf2ff',
                    'FF9dffd0',
                    'FFc1a27c',
                    'FFfff1a7',
                    'FFfff1a7'
                  ].firstWhere(
                      (element) =>
                          element == _controller.boardItem?.info.boardColor,
                      orElse: () {
                    return '';
                  });
                  if (_color == '') {
                    AppHelper.showMessage('색상을 선택해 주세요');
                    return;
                  }

                  await _controller.actionUpdate();
                  await BoardListController.to
                      .actionUpdateItem(BoardController.to.boardItem);
                  Get.back();
                },
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
        heightSpace(20.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: vwTitle('보드 이름'),
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
                  hintText: '홈베이킹 레시피|',
                  hintStyle: baseStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(
                        0xFFCACACA,
                      )),
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
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: vwTitle('배치 선택'),
        ),
        heightSpace(10.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: BoardClassSelectPART(onTap: () {}),
        ),

        heightSpace(16.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: vwTitle('색상 변경'),
        ),
        heightSpace(10.0),
        //SUBJECT : 색상변경
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Divider(height: 1),
              GetBuilder<BoardController>(builder: (controller) {
                final _selectColor = Color(int.parse(
                    controller.boardItem!.info.boardColor,
                    radix: 16));
                return Container(
                  padding:
                      EdgeInsets.only(left: 0, right: 0, top: 19, bottom: 15),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FFfc5e20');
                            },
                            boardColor: Color(0xFFfc5e20),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FFffc700');
                            },
                            boardColor: Color(0xFFffc700),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FF159b4d');
                            },
                            boardColor: Color(0xFF159b4d),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FF1b9dfc');
                            },
                            boardColor: Color(0xFF1b9dfc),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FF9a71bb');
                            },
                            boardColor: Color(0xFF9a71bb),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FF9a71bb');
                            },
                            boardColor: Color(0xFF9a71bb),
                            selectColor: _selectColor,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FFff78d9');
                            },
                            boardColor: Color(0xFFff78d9),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FFcaf2ff');
                            },
                            boardColor: Color(0xFFcaf2ff),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FF9dffd0');
                            },
                            boardColor: Color(0xFF9dffd0),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FFc1a27c');
                            },
                            boardColor: Color(0xFFc1a27c),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FFfff1a7');
                            },
                            boardColor: Color(0xFFfff1a7),
                            selectColor: _selectColor,
                          ),
                          BSChoiceColorWidget(
                            onTap: () async {
                              controller.actionChangeColor('FFfff1a7');
                            },
                            boardColor: Color(0xFFfff1a7),
                            selectColor: _selectColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),

        heightSpace(16.0),
        //SUBJECT: 스위치 버턴.
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
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
              leading: vwTitle('공유하기'),
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
