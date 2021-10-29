import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:clay/c_config/config.dart';

class WideButton extends StatelessWidget {
  final width;
  final height;
  final isSubmit;

  String title;
  Function onTap;
  WideButton(
      {required this.title,
      required this.onTap,
      this.isSubmit = true,
      this.width = 310.0,
      this.height = 35.0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: DecoHelper.roundDeco.copyWith(
          color: isSubmit ? Color(0xFF017BFE) : Color(0xFFF6F6f6),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(
          title,
          style: baseStyle.copyWith(
            color: isSubmit ? Colors.white : Color(0xFF707070),
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
