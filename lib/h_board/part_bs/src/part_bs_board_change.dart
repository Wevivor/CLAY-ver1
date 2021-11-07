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
        Container(
            alignment: Alignment.bottomCenter,
            height: 15,
            child: Image.asset(Const.assets + 'images/rect_40.png')),
        AppBar(
          toolbarHeight: 45,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Get.back();
              if (onMenu != null) onMenu();
            },
            icon: Icon(Icons.chevron_left),
          ),
          centerTitle: true,
          title: Text(
            'contents.bs.body.menu.moveBoard'.tr, // 보드 변경
            style: TextStyle(
              fontFamily:
                  Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
              fontSize: 18,
              color: Color(0xFF000000),
              fontWeight: Get.locale?.languageCode == 'ko'
                  ? FontWeight.w700
                  : FontWeight.w900,
              height: Get.locale?.languageCode == 'ko'
                  ? 1.17
                  : 1.37, // 21.09px, 24.59px
            ),
          ),
          actions: [
            Container(
              alignment: Alignment.center,
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
                  'com.btn.save'.tr, // dhks
                  style: baseStyle.copyWith(
                    fontFamily:
                        Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                    fontSize: 14,
                    color: Color(0xFF017BFE),
                    fontWeight: Get.locale?.languageCode == 'ko'
                        ? FontWeight.w400
                        : FontWeight.w500,
                    height: Get.locale?.languageCode == 'ko' ? 1.17 : 1.37,
                  ), // 16.41px, 19.12px
                ),
              ),
            ),
            widthSpace(20),
          ],
        ),
        heightSpace(10.0),
        vwTitle('contests.bs.sub.subtitle.originalB'.tr),
        heightSpace(10.0),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 18.0),
          child: BSBoardItemWidget(
            selected: -2,
            index: -1,
            title: current.boardInfo.boardName,
            category: current.boardInfo.boardBadge,
          ),
        ),
        heightSpace(16.0),
        vwTitle('contents.bs.sub.subtitle.newB'.tr), // 변경할 보드
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
        heightSpace(16.0),
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
