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
import 'part_board_select.dart';
import 'wgt_bs_badge_item.dart';
import 'wgt_bs_board_item.dart';
import 'wgt_choice_color.dart';

class BottomSheetBoardChange extends StatelessWidget
    with AppbarHelper, BSValidator {
  final onMenu;
  final onDone;
  final current;
  final _formKey = GlobalKey<FormState>();
  BottomSheetBoardChange({
    this.onMenu,
    this.current,
    required this.onDone,
  });

  @override
  Widget build(BuildContext context) {
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
          // heightSpace(18),
          AppBar(
            leading: IconButton(
              onPressed: () {
                Get.back();
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
          BoardSelectPART(onTap: () {}),
        ],
      ),
    );
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
