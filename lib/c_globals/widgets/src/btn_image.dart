import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  static String image_holder = 'assets/icon/mask_holder.png';
  final double height;
  final double width;
  Function? onTap;
  final String? holder;

  ImageButton({
    this.height = 32,
    this.width = 32,
    this.onTap,
    this.holder,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Container(
          height: height,
          width: width,
          child: Image.asset(
            holder ?? image_holder,
            width: width,
            height: height,
            // fit: BoxFit.contain,
          )),
    );
  }
}
