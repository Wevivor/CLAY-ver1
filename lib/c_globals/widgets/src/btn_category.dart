import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryButton extends StatelessWidget {
  final int index;
  final int selected;

  final onTap;
  final title;
  final style;
  CategoryButton({
    this.index = 0,
    this.selected = 0,
    this.onTap,
    this.title,
    this.style,
  });
  List<dynamic> btns = [];

  @override
  Widget build(BuildContext context) {
    btns = [
      {'on': null, 'title': 'board.body.chip.all'.tr},
      {'on': 'assets/icon/pencil.png', 'title': 'com.chip.badge.work'.tr},
      {'on': 'assets/icon/medal.png', 'title': 'com.chip.badge.growth'.tr},
      {'on': 'assets/icon/hart.png', 'title': null}
    ];

    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap(index);
        }
      },
      child: Container(
        decoration: DecoHelper.roundDeco.copyWith(
          color: index == selected ? Colors.black : Colors.white,
          border: Border.all(
            width: 1,
            color: index == selected ? Color(0xFF707070) : Color(0xFFDEDEDE),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        padding: EdgeInsets.only(top: 8, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            btns[index]['title'] == null
                ? Container()
                : Container(
                    child: Text(
                      btns[index]['title'],
                      style: btnTextStyle.copyWith(
                        fontFamily: Get.locale?.languageCode == 'ko'
                            ? 'Roboto'
                            : 'Avenir',
                        fontSize: 14,
                        fontWeight: Get.locale?.languageCode == 'ko'
                            ? FontWeight.w400
                            : FontWeight.w500,
                        height: Get.locale?.languageCode == 'ko'
                            ? 1.17
                            : 1.37, // 16.41px, 19.12px

                        color: index == selected
                            ? Color(0xFFFAFAFA)
                            : Colors.black,
                      ),
                    ),
                  ),
            btns[index]['title'] == null ? SizedBox.shrink() : widthSpace(4),
            btns[index]['on'] == null
                ? Container()
                : Image.asset(
                    btns[index]['on'],
                    width: 14,
                    height: 14,
                  ),
          ],
        ),
      ),
    );
  }
}
