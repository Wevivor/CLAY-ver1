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
      {this.width = 76,
      this.height = 76,
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
              imgUrl: imgUrl,
              holder: 'assets/icon/baseline-account-circle.png',
            ),
            Container(
              margin: Spacing.left(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vwTitle('성이름'),
                  Container(
                    child: Text(
                      displayName ?? '',
                      style: baseStyle.copyWith(
                        fontSize: 18,
                        color: Color(0xFF515151),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: DecoHelper.roundDeco.copyWith(
                          color: Color(0xFFC4C4C4),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 7, right: 20, bottom: 7),
                          child: Text(
                            'Edit Profile',
                            style: baseStyle.copyWith(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      widthSpace(6),
                      Container(
                        decoration: DecoHelper.roundDeco.copyWith(
                          color: Color(0xFFC4C4C4),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 7, right: 20, bottom: 7),
                          child: Text(
                            'Logout',
                            style: baseStyle.copyWith(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget vwTitle(final title) {
    return Container(
      // padding: EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontSize: 22, color: Colors.black, fontWeight: FontWeight.w400),
      ),
    );
  }
}
