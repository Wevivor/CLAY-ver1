// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:get/get.dart';

import 'wgt_bs_board_item.dart';

class BoardSelectPART extends StatelessWidget with AppbarHelper {
  final onTap;
  BoardSelectPART({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BoardListMySelectController>(
      builder: (controller) {
        return Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(left: 19),
          child: Row(
            children: [
              BSBoardItemWidget(
                onTap: () {
                  if (onTap != null) onTap();
                },
                index: 0,
                title: 'com.bs.item.newBoard'.tr,
                category: '새보드', // TODO : [SH] 현재 번역하지 않음.
              ),
              widthSpace(10.0),
              Expanded(
                child: HanListView(
                  isSliver: false,
                  direction: Axis.horizontal,
                  controller: BoardListMySelectController.to,
                  itemBuilder: (context, idx) {
                    final cache = controller.cache;
                    Board _item = cache[idx];

                    return Row(
                      children: [
                        widthSpace(8.0),
                        Container(
                          child: BSBoardItemWidget(
                            onTap: () {
                              BoardListMySelectController.to.boardInfo =
                                  _item.info;
                              BoardListMySelectController.to.selected = idx + 1;
                              BoardListMySelectController.to.update();
                            },
                            selected: BoardListMySelectController.to.selected,
                            index: idx + 1,
                            title: _item.info.boardName,
                            category: _item.info.boardBadge,
                          ),
                        ),
                        widthSpace(10.0),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
