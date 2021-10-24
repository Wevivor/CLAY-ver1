import 'package:clay/c_config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileOvlayListWidget extends StatelessWidget {
  final size;
  final List<String> images;
  bool enabledOverlayBorder;
  Color overlayBorderColor;
  double overlayBorderThickness;
  double leftFraction = 0.7;
  double topFraction = 0;

  ProfileOvlayListWidget(
      {this.size = 50,
      required this.images,
      this.enabledOverlayBorder = false,
      this.overlayBorderColor = Colors.white,
      this.overlayBorderThickness = 1,
      this.leftFraction = 0.7,
      this.topFraction = 0});

  @override
  Widget build(BuildContext context) {
    double leftPlusSize = size * leftFraction;
    double topPlusSize = size * topFraction;
    double leftPosition = 0;
    double topPosition = 0;

    List<Widget> list = [];
    for (int i = 0; i < images.length; i++) {
      if (i == 0) {
        list.add(
          Container(
            height: size,
            width: size,
            decoration: enabledOverlayBorder
                ? BoxDecoration(
                    color: Color(0xffA259FF),
                    border: Border.all(
                        color: Colors.white, width: overlayBorderThickness),
                    shape: BoxShape.circle)
                : BoxDecoration(),
            child: Center(
              child: Text(
                images[i],
                style: baseStyle.copyWith(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.all(Radius.circular(size / 2)),
            //   child: Image(
            //     image: AssetImage(images[i]),
            //     height: size,
            //     width: size,
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
        );
      } else {
        leftPosition += leftPlusSize;
        topPosition += topPlusSize;
        list.add(Positioned(
          left: leftPosition,
          top: topPosition,
          child: Container(
            height: size,
            width: size,
            decoration: enabledOverlayBorder
                ? BoxDecoration(
                    color: Color(0xFFFF8577),
                    border: Border.all(
                        color: overlayBorderColor,
                        width: overlayBorderThickness),
                    shape: BoxShape.circle)
                : BoxDecoration(),
            child: Center(
              child: Text(
                images[i],
                style: baseStyle.copyWith(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.all(Radius.circular(size / 2)),
            //   child: Image(
            //     image: AssetImage(images[i]),
            //     height: size,
            //     width: size,
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
        ));
      }
    }
    double width =
        leftPosition + size + ((images.length) * overlayBorderThickness);
    double height =
        topPosition + size + ((images.length) * overlayBorderThickness);

    return Container(
      width: width,
      height: height,
      child: Stack(overflow: Overflow.visible, children: list),
    );
  }
}
