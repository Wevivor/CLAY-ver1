import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';

class ImageRoundWidget extends StatelessWidget {
  static String image_holder = 'assets/icon/mask_holder.png';
  final double height;
  final double width;
  final Color? circleColor;
  String? imgUrl;
  Function? onTap;
  final double? round;
  final String? holder;

  ImageRoundWidget({
    this.height = 100,
    this.width = 100,
    this.circleColor,
    this.imgUrl,
    this.onTap,
    this.round = 10,
    this.holder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height - 1,
      width: width - 1,
      decoration: DecoHelper.roundDeco.copyWith(
        borderRadius: BorderRadius.all(
          Radius.circular(round ?? 4.0),
        ),
        image: DecorationImage(
          image: imgUrl == null
              ? Image.asset(
                  holder ?? image_holder,
                  width: width,
                  height: height,
                  fit: BoxFit.fill,
                ).image
              : Image.network(
                  imgUrl ?? '',
                  width: width,
                  height: height,
                  fit: BoxFit.fill,
                ).image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
