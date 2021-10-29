// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:get/get.dart';

import 'helper_bs_board_init.dart';
import 'part_board_select.dart';
import 'part_bs_new_board.dart';
import 'wgt_bs_board_item.dart';

class BottomSheetBoardChange extends StatelessWidget
    with AppbarHelper, BSValidator, BSBoardInitDtoHelper {
  final onMenu;
  final onDone;
  final current;
  final parentContext;

  BottomSheetBoardChange({
    this.onMenu,
    this.current,
    this.parentContext,
    required this.onDone,
  });
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        heightSpace(2.0),
        Container(
            alignment: Alignment.bottomCenter,
            height: 11,
            child: Image.asset(Const.assets + 'images/rect_40.png')),
        // heightSpace(18),
        AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
              if (onMenu != null) onMenu();
            },
            icon: Icon(Icons.chevron_left),
          ),
          centerTitle: true,
          title: Text(
            '보드변경',
            style: baseStyle.copyWith(
                fontSize: 18,
                color: Color(0xFF2F2F2F),
                fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          actions: [
            Container(
              alignment: Alignment.center,
              // color: Colors.red,
              child: InkWell(
                onTap: () async {
                  if (BoardListMySelectController.to.selected < 0) {
                    AppHelper.showMessage(messages['board_select'] ?? '');
                    return;
                  }

                  //SUBJECT: 컨텐츠
                  //TODO: 링크로 추가하기
                  final _boardInfo = BoardListMySelectController.to.boardInfo;

                  final _controller = Get.put(ContentsController());
                  final _profile = HanUserInfoController.to.toProfile();

                  //SUBJECT comment 타입 변경 필요
                  //TODO: comment 타입 변경

                  final _item = current.copyWith(boardInfo: _boardInfo);

                  await _controller.actionContentsUpdate(_item.toDto());
                  if (onDone != null) onDone();

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
        vwTitle('기존보드'),
        heightSpace(10),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 19),
          child: BSBoardItemWidget(
            selected: -2,
            index: -1,
            title: current.boardInfo.boardName,
            category: current.boardInfo.boardBadge,
          ),
        ),

        heightSpace(16),

        vwTitle('변경할 보드'),
        heightSpace(10),
        GetBuilder<BoardListMySelectController>(builder: (controller) {
          return Container(
            height: 54 + 8 + 11 + 10,
            child: BoardSelectPART(onTap: () {
              Get.lazyPut(() => BoardController());
              Get.back();
              final _controller = BoardController.to;
              final initBoard = createInitBoard();
              _controller.boardItem = initBoard.toDomain();
              _controller.boardNameController.text = '';

              _showBS(context, BottomSheetNewBoard());
            }),
          );
        }),
        heightSpace(16),
      ],
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
            padding: MediaQuery.of(buildContext).viewInsets,
            child: Container(
              child: Wrap(
                children: [child],
              ),
            ),
          );
        }).then((value) {
      Get.put(BoardListMySelectController());
      _showBSSecond(
          parentContext,
          BottomSheetBoardChange(
            current: this.current,
            onDone: this.onDone,
            onMenu: this.onMenu,
            parentContext: parentContext,
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
}
