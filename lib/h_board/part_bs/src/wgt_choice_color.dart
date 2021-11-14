// 13-1 Bottom Sheet : Board Color 선택하기
//

import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// Color

class BSChoiceColorWidget extends StatelessWidget {
  final Color? boardColor;
  final onTap;
  final Color? selectColor;
  BSChoiceColorWidget({
    this.onTap,
    this.boardColor = Colors.grey,
    this.selectColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: InkWell(
        onTap: () {
          if (this.onTap != null) onTap();
        },
        child: boardColor == selectColor
            ? Container(
                height: 42,
                width: 42,
                decoration: DecoHelper.cicleDeco.copyWith(
                  shape: BoxShape.circle,
                  border: Border.all(width: 3, color: Color(0xFF666666)),
                ),
                child: Container(
                  height: 42 - 3,
                  width: 42 - 3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: boardColor,
                  ),
                ),
              )
            : Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: boardColor,
                ),
              ),
      ),
    );
  }
}
