import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';

class ImageCircleWidget extends StatelessWidget {
  static String image_holder = 'assets/icon/mask_holder.png';
  final bool isAll;
  final double height;
  final double width;
  final Color? circleColor;
  String? imgUrl;
  Function? onTap;
  final String? holder;

  ImageCircleWidget({
    this.isAll = true,
    this.height = 60,
    this.width = 60,
    this.circleColor,
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
        decoration: DecoHelper.roundDeco.copyWith(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
            topRight: isAll ? Radius.circular(50) : Radius.circular(0),
          ),
          // border: Border.all(
          //   width: 1,
          //   color: circleColor ?? Colors.black54,
          // ),
          image: DecorationImage(
            image: imgUrl == null
                ? Image.asset(
                    holder ?? image_holder,
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                  ).image
                : Image.network(
                    imgUrl ?? '',
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                  ).image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
