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
                  controller
                      .actionChangeBadge('자기계발'); // TODO : [SH] 현재 번역하지 않음.
                },
                iconUrl: 'icon/medal.png',
                classText: 'com.chip.badge.growth'.tr, //
                isSelected: controller.boardItem?.info.boardBadge ==
                    '자기계발', // TODO : [SH] 현재 번역하지 않음.
              ),
              BsBadgeItemWidget(
                onTap: () {
                  controller
                      .actionChangeBadge('일/공부'); // TODO : [SH] 현재 번역하지 않음.
                },
                iconUrl: 'icon/pencil.png',
                classText: 'com.chip.badge.work'.tr,
                isSelected: controller.boardItem?.info.boardBadge ==
                    '일/공부', // TODO : [SH] 현재 번역하지 않음.
              ),
              BsBadgeItemWidget(
                onTap: () {
                  controller
                      .actionChangeBadge('LIKE'); // TODO : [SH] 현재 번역하지 않음.
                },
                iconUrl: 'icon/hart.png',
                classText: 'com.chip.badge.like'.tr,
                isSelected: controller.boardItem?.info.boardBadge ==
                    'LIKE', // TODO : [SH] 현재 번역하지 않음.
              ),
              BsBadgeItemWidget(
                onTap: () {
                  controller
                      .actionChangeBadge('선택안함'); // TODO : [SH] 현재 번역하지 않음.
                },
                iconUrl: 'icon/no_entry.png',
                classText: 'com.chip.badge.none'.tr,
                isSelected: controller.boardItem?.info.boardBadge ==
                    '선택안함', // TODO : [SH] 현재 번역하지 않음.
              ),
            ],
          ),
        );
      },
    );
  }
}
