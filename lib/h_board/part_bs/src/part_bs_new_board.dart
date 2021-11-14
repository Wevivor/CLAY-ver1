// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:get/get.dart';

import 'part_board_class_select.dart';

class BottomSheetNewBoard extends StatelessWidget
    with AppbarHelper, BSValidator {
  final onMenu;
  final onDone;
  BottomSheetNewBoard({
    this.onMenu,
    required this.onDone,
  });
  final _formKey = GlobalKey<FormState>();

  final sheetTitle = baseStyle.copyWith(
    fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
    fontSize: 14,
    color: Color(0xFF353535),
    fontWeight:
        Get.locale?.languageCode == 'ko' ? FontWeight.w700 : FontWeight.w800,
    height: Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 16.41px, 19.12px
  );

  final msgStyle = baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.17, // line height : 16.41px
    letterSpacing: -0.7, // letter spacing : -5%
    color: Color(0xFF707070), // TODO : [SH] 피그마에 color 정보가 없음.
  );

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return GetBuilder<BoardController>(builder: (controller) {
      return Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                height: 15,
                child: Image.asset(Const.assets + 'images/rect_40.png'),
              ),
              vwBSAppBar(
                onBack: () {
                  Get.back();
                  if (onMenu != null) onMenu();
                },
                title: 'com.bs.title.newBoard'.tr, // 보드 만들기
                actions: [
                  Container(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () => _actionSubmit(context),
                      child: Text(
                        'com.btn.create'.tr, // 완료
                        style: baseStyle.copyWith(
                          fontFamily: Get.locale?.languageCode == 'ko'
                              ? 'Roboto'
                              : 'Avenir',
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
                  widthSpace(20),
                ],
              ),
              heightSpace(10.0),
              Padding(
                padding: EdgeInsets.only(left: 18.0, right: 19.0),
                child: vwTitle('com.bs.subtitle.boardName'.tr), // 보드 이름
              ),
              heightSpace(10.0),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.0,
                  right: 19.0,
                ),
                child: Form(
                  key: _formKey,
                  child: Container(
                    height: 38,
                    decoration: DecoHelper.roundDeco.copyWith(
                      color: Color(0xFFF6F6F6),
                    ),
                    padding: const EdgeInsets.only(left: 12.0, right: 16.0),
                    child: TextFormField(
                      maxLines: 1,
                      onTap: () {},

                      // style: accountEditTextStyle,
                      decoration: kInputDecoration.copyWith(
                        fillColor: Color(0xFFF6F6F6),
                        hintText: 'com.bs.pholder.inputTitle'.tr,
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
                child: vwTitle('board.bs.sub.subtitle.badge'.tr), // 보드에 배지 달기
              ),
              heightSpace(10.0),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.0,
                  right: 19.0,
                  // bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: BoardClassSelectPART(onTap: () {}),
              ),
              heightSpace(16.0),
            ],
            // ),
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
    LoadingController.to.isLoading = true;
    LoadingController.to.update();
    FocusScope.of(context).unfocus();
    if (_formKey.currentState == null ||
        _formKey.currentState?.validate() == false) {
      AppHelper.showMessage(messages['board_name'] ?? '');
      return;
    }

    final _name = BoardController.to.boardNameController.text;
    if (boardName(_name) != null || _name.isEmpty) {
      LoadingController.to.isLoading = false;
      LoadingController.to.update();
      AppHelper.showMessage(messages['board_name'] ?? '');

      return;
    }
    final _category = BoardController.to.boardItem?.info.boardBadge;
    if (category(_category) != null || _category == null || _category.isEmpty) {
      LoadingController.to.isLoading = false;
      LoadingController.to.update();
      AppHelper.showMessage(messages['category'] ?? '');

      return;
    }

    final _controller = BoardController.to;
    //SUBJECT: 보드 타입 , 한글화 하면 안됨
    //TODO :
    final exist = ['자기계발', '선택안함', 'LIKE', '일/공부']
        .firstWhere((element) => element == _category, orElse: () {
      return '';
    });

    // SUBJECT : [SH] showMessage 같은 것은 영문으로 번역하지 않아도 될까요?
    if (exist == '') {
      LoadingController.to.isLoading = false;
      LoadingController.to.update();
      AppHelper.showMessage(messages['category'] ?? '');

      return;
    }
    // await _controller.actionIns(_controller.boardItem!.toDto());
    final _profile = HanUserInfoController.to.toProfile();
    final _boardDto = await _controller.createBoardInit(_profile,
        name: _controller.boardNameController.text,
        type: _controller.boardItem?.info.boardBadge);
    // _controller.boardItem = _boardDto?.toDomain();
    LoadingController.to.isLoading = false;
    LoadingController.to.update();
    Get.back();
    if (onDone != null) onDone();
  }

  Widget vwTitle(final title) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: sheetTitle,
      ),
    );
  }
}
