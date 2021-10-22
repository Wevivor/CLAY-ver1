// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/models/models.dart';
import 'package:get/get.dart';

import 'part_board_class_select.dart';
import 'wgt_bs_board_item.dart';

class BottomSheetNewBoard extends StatelessWidget
    with AppbarHelper, BSValidator {
  final onMenu;
  BottomSheetNewBoard({
    this.onMenu,
  });
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return GetBuilder<BoardController>(builder: (controller) {
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
              if (onMenu != null) onMenu();
              Future.microtask(() => Get.back());
            },
            title: '보드 만들기',
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

                    await _controller.actionIns(_controller.boardItem!.toDto());
                    Future.delayed(Duration(milliseconds: 1200), () async {
                      BoardListMySelectController.to.cache.clear();
                      await BoardListMySelectController.to.fetchItems();
                      Get.back();
                    });
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
                    hintText: '|“DIY”, “레시피”와 같은 제목을 추가하세요.',
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
            child: vwTitle('보드에 배치 달기'),
          ),
          heightSpace(10.0),
          Padding(
            padding: EdgeInsets.only(left: 19.0, right: 19.0),
            child: BoardClassSelectPART(onTap: () {}),
          ),
          heightSpace(16.0),
        ],
        // ),
      );
    });
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
