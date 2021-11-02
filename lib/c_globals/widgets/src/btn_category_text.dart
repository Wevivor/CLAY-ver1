import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryTextButton extends StatelessWidget {
  final int index;
  final int selected;

  final onTap;
  final title;
  final style;
  CategoryTextButton({
    this.index = 0,
    this.selected = 0,
    this.onTap,
    this.title,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap(index);
        }
      },
      child: Container(
        decoration: DecoHelper.roundDeco.copyWith(
          color: index == selected ? Colors.black : Colors.white,
          border: Border.all(width: 1, color: Color(0xFFC4C4C4)),
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        padding: EdgeInsets.only(left: 16, top: 7, right: 15, bottom: 10),
        child: Container(
          child: Text(
            title,
            style: btnTextStyle.copyWith(
              fontFamily:
                  Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
              fontSize: 14,
              fontWeight: Get.locale?.languageCode == 'ko'
                  ? FontWeight.w400
                  : FontWeight.w500,
              height: Get.locale?.languageCode == 'ko'
                  ? 1.17
                  : 1.37, // 16.41px, 19.12px
              color: index == selected ? Color(0xFFFAFAFA) : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
