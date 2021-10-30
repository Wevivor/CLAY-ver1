import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';

////커스텀 리스트 타일
class HanListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  final EdgeInsets? padding;
  final Function? onTap;

  const HanListTile(
      {this.leading, this.padding, this.title, this.trailing, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Container(
        alignment: Alignment.center,
        padding: padding == null ? EdgeInsets.all(10.0) : padding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leading ?? Container(),
            widthSpace(10.0),
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
