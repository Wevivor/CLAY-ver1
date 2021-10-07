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

  List<dynamic> btns = [
    {'on': null, 'title': '전체'},
    {'on': 'assets/icon/pencil.png', 'title': '일/공부'},
    {'on': 'assets/icon/medal.png', 'title': '자기계발'},
    {'on': 'assets/icon/hart.png', 'title': null}
  ];

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
        child: Row(
          children: [
            btns[index]['title'] == null
                ? Container()
                : Container(
                    child: Text(
                      btns[index]['title'],
                      style: btnTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: index == selected ? Colors.white : Colors.black,
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
