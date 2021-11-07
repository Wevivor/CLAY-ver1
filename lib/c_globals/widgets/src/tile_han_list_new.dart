// Update : 2021.8.8

import 'package:flutter/material.dart';

////커스텀 리스트 타일
/// 2021.8.7 Edit by SH : Tile Color 추가
class HanListTileNew extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  final EdgeInsets? padding;
  final Function? onTap;
  final alignment;
  final crossAxisAlignment;
  final mainAxisAlignment;

  const HanListTileNew({
    this.leading,
    this.padding,
    this.title,
    this.trailing,
    this.onTap,
    this.alignment = Alignment.topCenter,
    this.crossAxisAlignment: CrossAxisAlignment.center,
    this.mainAxisAlignment: MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Container(
        alignment: alignment,
        padding: padding ?? EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: crossAxisAlignment,
          children: [
            leading ?? Container(),
            //widthSpace(16.0),
            title ?? Container(),
            Expanded(
              child: Container(),
            ),
            trailing ?? Container(),
          ],
        ),
      ),
    );
  }
}
