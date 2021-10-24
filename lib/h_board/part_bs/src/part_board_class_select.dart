// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:get/get.dart';

import 'wgt_bs_badge_item.dart';

class BoardClassSelectPART extends StatelessWidget with AppbarHelper {
  final onTap;
  BoardClassSelectPART({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BoardController>(
      builder: (controller) {
        return Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BsBadgeItemWidget(
                onTap: () {
                  controller.actionChangeBadge('자기계발');
                },
                iconUrl: 'icon/medal.png',
                classText: '자기계발',
                isSelected: controller.boardItem?.info.boardBadge == '자기계발',
              ),
              BsBadgeItemWidget(
                onTap: () {
                  controller.actionChangeBadge('일/공부');
                },
                iconUrl: 'icon/pencil.png',
                classText: '일/공부',
                isSelected: controller.boardItem?.info.boardBadge == '일/공부',
              ),
              BsBadgeItemWidget(
                onTap: () {
                  controller.actionChangeBadge('LIKE');
                },
                iconUrl: 'icon/hart.png',
                classText: 'LIKE',
                isSelected: controller.boardItem?.info.boardBadge == 'LIKE',
              ),
              BsBadgeItemWidget(
                  onTap: () {
                    controller.actionChangeBadge('선택안함');
                  },
                  iconUrl: 'icon/no_entry.png',
                  classText: '선택안함',
                  isSelected: controller.boardItem?.info.boardBadge == '선택안함'),
            ],
          ),
        );
      },
    );
  }
}
