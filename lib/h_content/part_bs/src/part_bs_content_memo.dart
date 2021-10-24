// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/part_bs/src/part_board_select.dart';
import 'package:clay/h_board/part_bs/src/part_bs_new_board.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:get/get.dart';

import 'helper_content_init_dto.dart';

class BottomSheetContentMemo extends StatelessWidget
    with AppbarHelper, BSValidator, ContentInitDtoHelper {
  final onMenu;
  final parentContext;
  BottomSheetContentMemo({
    this.parentContext,
    this.onMenu,
  });

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
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
            title: '메모',
            actions: [
              Container(
                alignment: Alignment.center,
                // color: Colors.red,
                child: InkWell(
                  onTap: () async {
                    final _memo = ContentsController.to.memoController.text;

                    if (memo(_memo) != null || _memo.isEmpty) {
                      AppHelper.showMessage(messages['memo'] ?? '');
                      return;
                    }
                    final _title = ContentsController.to.titleController.text;

                    if (title(_title) != null || _title.isEmpty) {
                      AppHelper.showMessage(messages['title'] ?? '');
                      return;
                    }

                    if (BoardListMySelectController.to.selected < 0) {
                      AppHelper.showMessage(messages['board_select'] ?? '');
                      return;
                    }

                    //SUBJECT: 컨텐츠
                    //TODO: 링크로 추가하기
                    final _controller = Get.put(ContentsController());

                    // final _boardInfo = BoardListMySelectController.to.boardInfo;

                    // final _profile = HanUserInfoController.to.toProfile();
                    // final _info = ContentsInfoDto(
                    //   //  contentsId: contentsId,
                    //   contentsTitle: _title,
                    //   contentsUrl: '',
                    //   contentsImages: '',
                    //   contentsDescription: _memo,
                    //   contentsComment: '',
                    //   contentsType: 'memo',
                    //   thumbnails: null,
                    //   contentsUniqueLink: '',
                    //   ContentsCreateDate: DateTime.now(),
                    //   ContentsUpdateDate: DateTime.now(),
                    // );

                    // //SUBJECT comment 타입 변경 필요
                    // //TODO: comment 타입 변경
                    // final _item = ContentsDto(
                    //   boardInfo: _boardInfo?.toDto(),
                    //   userInfo: _profile.toDto(),
                    //   info: _info,
                    //   contentsAllviewCount: 0,
                    //   contentsMyviewCount: 0,
                    //   contentsAlarmCheck: 0,
                    //   shareInfo: null,
                    //   contentsComment: null,
                    //   ContentsCreateDate: DateTime.now(),
                    //   ContentsUpdateDate: DateTime.now(),
                    // );
                    final _item =
                        createInitDto(title: _title, memo: _memo, type: 'memo');
                    Get.back();
                    await _controller.actionIns(_item);
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
          Container(
            color: Color(0xffF9F9F9),
            height: 300,
            padding: EdgeInsets.only(left: 19.0, right: 19.0),
            child: TextFormField(
              maxLines: 15,
              onTap: () {},
              // style: accountEditTextStyle,
              decoration: kInputDecoration.copyWith(
                fillColor: Color(0xFFF6F6F6),
                hintText: '| 원하는 메모를 입력해 주세요.',
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
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              onEditingComplete: () => node.unfocus(),
              controller: ContentsController.to.memoController,
              validator: (value) {
                return memo(value);
              },
            ),
          ),
          heightSpace(16.0),
          vwTitle('제목'),
          heightSpace(10.0),
          Padding(
            padding: EdgeInsets.only(left: 19.0, right: 19.0),
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
                decoration: kInputDecoration.copyWith(
                  fillColor: Color(0xFFF6F6F6),
                  hintText: '| 콘텐츠의 제목을 입력해 주세요.',
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
                controller: ContentsController.to.titleController,
                validator: (value) {
                  return title(value);
                },
              ),
            ),
          ),
          heightSpace(16.0),
          vwTitle('저장할 보드 선택하기'),
          heightSpace(10.0),
          GetBuilder<BoardListMySelectController>(builder: (controller) {
            return BoardSelectPART(onTap: () {
              Get.lazyPut(() => BoardController());
              final _controller = BoardController.to;
              final initBoard = createInitBoard();
              _controller.boardItem = initBoard.toDomain();
              _controller.boardNameController.text = '';
              Get.back();

              _showBS(parentContext, BottomSheetNewBoard());
            });
          }),
          heightSpace(16.0),
        ],
      ),
    );
  }

  void _showBS(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              child: Wrap(
                children: [child],
              ),
            ),
          );
        }).then((value) {
      _showBSSecond(
          parentContext,
          BottomSheetContentMemo(
            parentContext: parentContext,
            onMenu: this.onMenu,
          ));
    });
  }

  void _showBSSecond(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              child: Wrap(
                children: [child],
              ),
            ),
          );
        });
  }

  // ContentsDto _createInitMemo(String title, String memo) {
  //   final _boardInfo = BoardListMySelectController.to.boardInfo;
  //   final _profile = HanUserInfoController.to.toProfile();
  //   final _info = ContentsInfoDto(
  //     //  contentsId: contentsId,
  //     contentsTitle: title,
  //     contentsUrl: '',
  //     contentsImages: '',
  //     contentsDescription: memo,
  //     contentsComment: '',
  //     contentsType: 'memo',
  //     thumbnails: null,
  //     contentsUniqueLink: '',
  //     ContentsCreateDate: DateTime.now(),
  //     ContentsUpdateDate: DateTime.now(),
  //   );

  //   //SUBJECT comment 타입 변경 필요
  //   //TODO: comment 타입 변경
  //   final _item = ContentsDto(
  //     boardInfo: _boardInfo?.toDto(),
  //     userInfo: _profile.toDto(),
  //     info: _info,
  //     contentsAllviewCount: 0,
  //     contentsMyviewCount: 0,
  //     contentsAlarmCheck: 0,
  //     shareInfo: null,
  //     contentsComment: null,
  //     ContentsCreateDate: DateTime.now(),
  //     ContentsUpdateDate: DateTime.now(),
  //   );
  //   return _item;
  // }

  // Widget vwTitle(final title) {
  //   return Container(
  //     padding: EdgeInsets.only(left: 19),
  //     alignment: Alignment.centerLeft,
  //     child: Text(
  //       title,
  //       style: baseStyle.copyWith(
  //           fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
  //     ),
  //   );
  // }
}
