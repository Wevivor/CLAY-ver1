import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  static String image_holder = 'assets/icon/mask_holder.png';
  final double height;
  final double width;
  String? imgUrl;
  Function? onTap;
  final String? holder;

  ImageWidget({
    this.height = 100,
    this.width = 100,
    this.imgUrl,
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
        height: height - 1,
        width: width - 1,
        child: imgUrl == null
            ? Image.asset(
                holder ?? image_holder,
                width: width,
                height: height,
                fit: BoxFit.fill,
              )
            : Image.network(
                imgUrl ?? '',
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
