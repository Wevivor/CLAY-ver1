import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileMiddleWidget extends StatelessWidget {
  final String? imgUrl;
  final double width;
  final double height;
  final String? displayName;
  final Function? onTap;
  ProfileMiddleWidget(
      {this.width = 60,
      this.height = 60,
      this.imgUrl,
      this.onTap,
      this.displayName});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageCircleWidget(
              onTap: () {
                if (onTap != null) onTap!();
              },
              isAll: true,
              height: height,
              width: width,
              imgUrl: null,
              holder: Const.assets + 'images/avatar-4.png',
            ),
            Container(
              margin: Spacing.left(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      // displayName ?? '',
                      '김수민',
                      style: baseStyle.copyWith(
                        fontSize: 18,
                        color: Color(0xFF353535),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  heightSpace(5.0),
                  Container(
                    child: Text(
                      'wevivors@gmail.com',
                      style: baseStyle.copyWith(
                        color: Color(0xff707070),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
