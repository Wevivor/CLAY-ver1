// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/models/models.dart';
import 'package:clay/part/part_bs/src/helper_init_dto.dart';
import 'package:get/get.dart';

import 'part_board_select.dart';
import 'part_bs_new_board.dart';
import 'wgt_bs_board_item.dart';

class BottomSheetContentLink extends StatelessWidget
    with AppbarHelper, BSValidator, InitDtoHelper {
  final onMenu;
  final parentContext;
  BottomSheetContentLink({
    this.parentContext,
    this.onMenu,
  });
  final _webLinkKey = new GlobalKey();

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
          title: '링크로 추가하기',
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
        vwTitle('웹 링크'),
        heightSpace(11.0),
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

              // style: accountEditTextStyle,
              decoration: kInputDecoration.copyWith(
                fillColor: Color(0xFFF6F6F6),
                hintText: '|웹 링크 주소를 입력해 주세요.',
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
              controller: ContentsController.to.linkController,
              validator: (value) {
                return web_url(value);
              },
            ),
          ),
        ),
        heightSpace(16.0),
        vwTitle('코멘트'),
        heightSpace(11.0),
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

              // style: accountEditTextStyle,
              decoration: kInputDecoration.copyWith(
                fillColor: Color(0xFFF6F6F6),
                hintText: '|콘텐츠에 남기고 싶은 말을 써주세요.',
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
              controller: ContentsController.to.commentController,
              validator: (value) {
                return comment(value);
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
