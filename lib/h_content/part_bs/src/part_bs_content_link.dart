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

class BottomSheetContentLink extends StatelessWidget
    with AppbarHelper, BSValidator, ContentInitDtoHelper {
  final onMenu;
  final parentContext;
  BottomSheetContentLink({
    this.parentContext,
    this.onMenu,
  });
  final _webLinkKey = new GlobalKey();

  final sheetTitle = baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.17, // line height : 16.41px
    color: Colors.black,
  );

  final msgStyle = baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.17, // line height : 16.41px
    letterSpacing: -0.7, // letter spacing : -5%
    color: Color(0xFF707070),
  );

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        heightSpace(2.0),
        Container(
            alignment: Alignment.bottomCenter,
            height: 15,
            child: Image.asset(Const.assets + 'images/rect_40.png')),
        vwBSAppBar(
          onBack: () {
            Get.back();
            if (onMenu != null) onMenu();
          },
          title: 'board.bs.sub.title.addLink'.tr, // 링크로 추가하기
          actions: [
            Container(
              alignment: Alignment.center,
              // color: Colors.red,
              child: InkWell(
                onTap: () async {
                  FocusScope.of(context).unfocus();
                  final _webLink = ContentsController.to.linkController.text;

                  if (web_url(_webLink) != null || _webLink.isEmpty) {
                    AppHelper.showMessage(messages['web_url'] ?? '');
                    return;
                  }
                  final _comment = ContentsController.to.commentController.text;

                  if (comment(_comment) != null || _comment.isEmpty) {
                    AppHelper.showMessage(messages['comment'] ?? '');
                    return;
                  }

                  if (BoardListMySelectController.to.selected < 0) {
                    AppHelper.showMessage(messages['board_select'] ?? '');
                    return;
                  }

                  //SUBJECT: 컨텐츠
                  //TODO: 링크로 추가하기
                  // final _boardInfo = BoardListMySelectController.to.boardInfo;

                  final _controller = Get.put(ContentsController());
                  final _item = createInitDto(
                      link: _webLink, comment: _comment, type: 'link');

                  await _controller.actionIns(_item);

                  Get.back();
                },
                child: Text(
                  'com.btn.save'.tr,
                  style: baseStyle.copyWith(
                    fontSize: 14,
                    color: Color(0xff017BFE),
                    fontWeight: FontWeight.w400,
                    height: 1.17,
                  ), // line height : 16.41px
                ),
              ),
            ),
            widthSpace(20.0),
          ],
        ),
        heightSpace(20.0),
        vwTitle('board.bs.sub.subtitle.webLink'.tr),
        heightSpace(10.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: Container(
            height: 38,
            decoration: DecoHelper.roundDeco.copyWith(
              color: Color(0xFFF6F6F6),
            ),
            padding: const EdgeInsets.only(left: 12.0, right: 16.0),
            child: TextFormField(
              maxLines: 1,

              // style: accountEditTextStyle,
              decoration: kInputDecoration.copyWith(
                fillColor: Color(0xFFF6F6F6),
                hintText: 'board.bs.sub.pholder.webLink'.tr,
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
              controller: ContentsController.to.linkController,
              validator: (value) {
                return web_url(value);
              },
            ),
          ),
        ),
        heightSpace(16.0),
        vwTitle('com.bs.subtitle.cmt'.tr),
        heightSpace(10.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
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
                hintText: 'com.bs.pholder.cmt'.tr,
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
              controller: ContentsController.to.commentController,
              validator: (value) {
                return comment(value);
              },
            ),
          ),
        ),
        heightSpace(16.0),
        Stack(
          children: [
            Container(
              height: 16 + 10 + 54 + 8 + 11 + 16,
              //color: Colors.yellow,
            ),
            Container(
              height: 16,
              child: vwTitle('com.bs.subtitle.boardChoice'.tr),
            ),
            Positioned(
              top: 10,
              height: 54 + 8 + 11 + 16,
              width: MediaQuery.of(context).size.width,
              child: Container(
                child: GetBuilder<BoardListMySelectController>(
                    builder: (controller) {
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
              ),
            ),
          ],
          // clipBehavior: Clip.hardEdge,
          // children: <Widget>[
          //   vwTitle('com.bs.subtitle.boardChoice'.tr),
          //   Positioned(
          //     child: GetBuilder<BoardListMySelectController>(
          //         builder: (controller) {
          //       return BoardSelectPART(onTap: () {
          //         Get.lazyPut(() => BoardController());
          //         final _controller = BoardController.to;
          //         final initBoard = createInitBoard();
          //         _controller.boardItem = initBoard.toDomain();
          //         _controller.boardNameController.text = '';
          //         Get.back();

          //         _showBS(parentContext, BottomSheetNewBoard());
          //       });
          //     }),
          //   ),
          // ],
        ),
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
          BottomSheetContentLink(
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
