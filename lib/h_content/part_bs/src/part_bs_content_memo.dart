// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/part_bs/src/part_board_select.dart';
import 'package:clay/h_board/part_bs/src/part_bs_new_board.dart';
import 'package:clay/h_content/controllers/content_all_list_controller.dart';
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
    color: Color(0xFF707070), // TODO : [SH] 피그마에 color 정보가 없음.
  );

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
              height: 10,
              child: Image.asset(Const.assets + 'images/rect_40.png')),
          vwBSAppBar(
            onBack: () {
              Get.back();
              if (onMenu != null) onMenu();
            },
            title: 'board.bs.sub.title.memo'.tr, // 메모
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

                    final _item =
                        createInitDto(title: _title, memo: _memo, type: 'memo');
                    Get.back();
                    await _controller.actionIns(_item);

                    Get.lazyPut(() => ContentAllListController());
                    ContentAllListController.to.cache.clear();
                    await ContentAllListController.to.fetchItems();
                  },
                  child: Text(
                    'com.btn.save'.tr,
                    style: baseStyle.copyWith(
                      fontSize: 14,
                      color: Color(0xff017BFE),
                      fontWeight: FontWeight.w400,
                      height: 1.17, //line height : 16.41px
                    ),
                  ),
                ),
              ),
              widthSpace(20.0),
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
                hintText: 'board.bs.sub.pholder.memo'.tr,
                hintStyle: msgStyle,
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
          vwTitle('board.bs.sub.subtitle.title'.tr),
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
                  hintText: 'board.bs.sub.pholder.contents'.tr,
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
                controller: ContentsController.to.titleController,
                validator: (value) {
                  return title(value);
                },
              ),
            ),
          ),
          heightSpace(16.0),
          vwTitle('com.bs.subtitle.boardChoice'.tr),
          GetBuilder<BoardListMySelectController>(builder: (controller) {
            return Container(
              height: 54 + 8 + 11 + 10,
              child: BoardSelectPART(onTap: () {
                Get.lazyPut(() => BoardController());
                final _controller = BoardController.to;
                final initBoard = createInitBoard();
                _controller.boardItem = initBoard.toDomain();
                _controller.boardNameController.text = '';
                Get.back();

                _showBS(parentContext, BottomSheetNewBoard());
              }),
            );
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
}
