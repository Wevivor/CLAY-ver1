import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';

class HanNaiviBarWidget extends StatelessWidget {
  final double height;
  final double width;
  final String? label;
  final bool isLabel;
  final bool isOn;
  final Color? bgColor;
  Function? onTap;
  final String? holder;
  final MainAxisAlignment align;
  HanNaiviBarWidget(
      {this.height = 26,
      this.width = 26,
      this.onTap,
      this.isLabel = true,
      this.holder,
      this.label,
      this.align = MainAxisAlignment.center,
      this.bgColor = Colors.white,
      this.isOn = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Column(
        mainAxisAlignment: align,
        children: [
          Container(
              alignment: Alignment.topCenter,
              color: bgColor,
              height: height,
              width: width,
              child: Image.asset(
                holder ?? '',
                width: width,
                height: height,
                fit: BoxFit.cover,
              )),
          isLabel ? heightSpace(4.0) : heightSpace(0.0),
          isLabel
              ? Text(
                  label ?? '',
                  style: isOn
                      ? baseStyle.copyWith(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          // color: Color(0xFFE9894E))
                          color: Colors.black)
                      : baseStyle.copyWith(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC1C1C1)),
                )
              : Container(),
        ],
      ),
    );
  }
}
