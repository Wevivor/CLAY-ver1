// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:get/get.dart';
import 'package:share/share.dart' as share;
import 'package:sprintf/sprintf.dart';

class BottomSheetShare extends StatelessWidget with AppbarHelper {
  final onMenu;
  BottomSheetShare({
    this.onMenu,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BoardController>(builder: (controller) {
      Board? board = controller.boardItem;
      final _shareCheck = board?.shareCheck;
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

                //SUBJECT: 바텀시트 색상...

                if (onMenu != null) onMenu();
              },
              title: '공유방식 선택',
              actions: [
                Container(
                  alignment: Alignment.center,
                  // color: Colors.red,
                  child: InkWell(
                    onTap: () async {
                      if (_shareCheck! <= 0) {
                        AppHelper.showMessage('공유방식을 선택해 주세요');
                        return;
                      }
                      Get.back();
                      final _boardUrl =
                          sprintf('%s/%s', [Const.clayBaseUrl, board?.boardId]);

                      BoardController.to.actionUpdate();

                      // await share.Share.share('https://www.naver.com');
                      await share.Share.share(_boardUrl);
                    },
                    child: Text(
                      '공유하기',
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
            HanListTile(
              padding: EdgeInsets.only(left: 47.0),
              onTap: () async {
                //SUBJECT : 공유 설정
                //TODO: 데이터베이스고정.
                // final _newBoard = board?.copyWith(
                //     shareCheck: 1, info: board!.info.copyWith(shareCheck: 1));
                // controller.boardItem = _newBoard;
                // controller.update();
                controller.actionChangeShare(1);

                await BoardListController.to
                    .actionUpdateItem(controller.boardItem);
              },
              leading: _shareCheck == 1
                  ? Image.asset(Const.assets + 'icon/radio_on.png')
                  : Image.asset(Const.assets + 'icon/radio_off.png'),
              title: Text('읽기 허용'),
            ),
            heightSpace(34.0),
            HanListTile(
              padding: EdgeInsets.only(left: 47.0),
              onTap: () async {
                //SUBJECT : 공유 방법
                //TODO: 공유....

                // final _newBoard = board?.copyWith(
                //     shareCheck: 2, info: board!.info.copyWith(shareCheck: 2));
                // controller.boardItem = _newBoard;
                // controller.update();
                controller.actionChangeShare(2);

                await BoardListController.to
                    .actionUpdateItem(controller.boardItem);
              },
              leading: _shareCheck == 2
                  ? Image.asset(Const.assets + 'icon/radio_on.png')
                  : Image.asset(Const.assets + 'icon/radio_off.png'),
              title: Text('편집 허용'),
            ),
            heightSpace(37.0),
          ],
        ),
      );
    });
  }

  Widget vwTitle(final title) {
    return Container(
      padding: EdgeInsets.only(left: 18),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }
}
