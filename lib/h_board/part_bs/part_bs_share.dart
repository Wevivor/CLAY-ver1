// ignore: must_be_immutable
// BS2 : 공유 방식 선택
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
            Container(
                alignment: Alignment.bottomCenter,
                height: 15,
                child: Image.asset(Const.assets + 'images/rect_40.png')),
            vwBSAppBar(
              onBack: () {
                Get.back();

                if (onMenu != null) onMenu();
              },
              title:
                  'board.sub.bs.title.share'.tr, // 공유 방식 선택 (Share anyone to)
              actions: [
                Container(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () async {
                      if (_shareCheck! <= 0) {
                        AppHelper.showMessage(
                            '공유방식을 선택해 주세요'); //  [SH] 현재 번역하지 않음.
                        return;
                      }
                      Get.back();
                      final _boardUrl =
                          sprintf('%s/%s', [Const.clayBaseUrl, board?.boardId]);

                      BoardController.to.actionUpdate();

                      // await share.Share.sha re('https://www.naver.com');
                      await share.Share.share(_boardUrl);
                    },
                    child: Text(
                      'board.sub.bs.menu.done'.tr, // 완료 (share)
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
                            : 1.37, // 16.41px, 19.12px
                      ),
                    ),
                  ),
                ),
                widthSpace(20.0),
              ],
            ),
            heightSpace(10.0),
            HanListTile(
              padding: EdgeInsets.only(left: 32.0),
              onTap: () async {
                controller.actionChangeShare(1);

                await BoardListController.to
                    .actionUpdateItem(controller.boardItem);
              },
              leading: _shareCheck == 1
                  ? Image.asset(Const.assets + 'icon/radio_on.png',
                      width: 24, height: 24)
                  : Image.asset(Const.assets + 'icon/radio_off.png',
                      width: 24, height: 24),

              title: Text(
                'board.sub.bs.menu.read'.tr, // 읽기 허용 (View)
                style: baseStyle.copyWith(
                  fontFamily:
                      Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                  fontSize: 14,
                  color: Color(0xFF000000),
                  fontWeight: Get.locale?.languageCode == 'ko'
                      ? FontWeight.w400
                      : FontWeight.w500,
                  height: Get.locale?.languageCode == 'ko'
                      ? 1.17
                      : 1.37, // 21.09px, 24.59px
                ),
              ), // 읽기 허용
            ),
            heightSpace(20.0),
            HanListTile(
              padding: EdgeInsets.only(left: 32.0),
              onTap: () async {
                //SUBJECT : 공유 방법
                // 공유....
                controller.actionChangeShare(2);

                await BoardListController.to
                    .actionUpdateItem(controller.boardItem);
              },
              leading: _shareCheck == 2
                  ? Image.asset(Const.assets + 'icon/radio_on.png')
                  : Image.asset(Const.assets + 'icon/radio_off.png'),
              title: Text(
                'board.sub.bs.menu.edit'.tr,
                style: baseStyle.copyWith(
                  fontFamily:
                      Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                  fontSize: 14,
                  color: Color(0xFF000000),
                  fontWeight: Get.locale?.languageCode == 'ko'
                      ? FontWeight.w400
                      : FontWeight.w500,
                  height: Get.locale?.languageCode == 'ko'
                      ? 1.17
                      : 1.37, // 21.09px, 24.59px
                ),
              ), // 편집 허용 (Edit)
            ),
            heightSpace(24.0),
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
