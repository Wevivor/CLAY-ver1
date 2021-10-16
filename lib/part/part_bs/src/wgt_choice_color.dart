// 13-1 Bottom Sheet : Board Color 선택하기
//

import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/controllers/controllers.dart';
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
      padding: EdgeInsets.only(left: 0, right: 15, top: 0, bottom: 10),
      child: InkWell(
        onTap: () {
          if (this.onTap != null) onTap();
        },
        child: boardColor == selectColor
            ? Container(
                height: 50,
                width: 50,
                decoration: DecoHelper.cicleDeco.copyWith(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.black54),
                  // color: boardColor,
                ),
                child: Container(
                  height: 50 - 2,
                  width: 50 - 2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: boardColor,
                  ),
                ),
              )
            : Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: boardColor,
                ),
              ),
      ),
    );
  }
}
