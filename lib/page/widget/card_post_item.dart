import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PostItemCard extends StatelessWidget {
  String? imgUrl;
  int contentKind;
  String? title;
  String? holder;
  bool isFavor;
  int cntFavor;
  Function? onTap;
  static String stand_stock_image = '';

  PostItemCard({
    this.imgUrl,
    this.holder,
    this.contentKind = 0,
    this.title,
    required this.isFavor,
    this.cntFavor = 0,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    var _imgKind = null;

    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: DecoHelper.roundDeco.copyWith(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(width: 1, color: Color(0xFFC1C1C1)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.network(
                      imgUrl ?? '$stand_stock_image',
                    ).image,
                  ),
                ),
              ),
            ),
            Text(title ?? '',
                style: baseStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                )),
          ],
        ),
      ),

      // Column(
      //   children: [
      //     Stack(
      //       // fit: StackFit.expand,
      //       children: [
      //         Container(
      //           constraints: BoxConstraints.expand(),
      //           child: ClipRRect(
      //             borderRadius: BorderRadius.circular(15.0),
      //             child: imgUrl != null
      //                 ? Image.network(
      //                     imgUrl ?? '$stand_stock_image',
      //                     fit: BoxFit.fill,
      //                   )
      //                 : Image.asset(
      //                     holder ?? '',
      //                     fit: BoxFit.fill,
      //                   ),
      //           ),
      //         ),
      //         Positioned(
      //           bottom: -10.5,
      //           left: 10.5,
      //           child: Container(
      //             child: Row(
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: [
      //                 widthSpace(4.83),
      //                 Text(Const.numFormat.format(cntFavor),
      //                     style: baseStyle.copyWith(
      //                       fontSize: 12,
      //                       fontWeight: FontWeight.normal,
      //                       color: Color(0xFFF6F5FF),
      //                     )),

      //                 /// 비디오 일때
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //     Text(title ?? '',
      //         style: baseStyle.copyWith(
      //           fontSize: 12,
      //           fontWeight: FontWeight.normal,
      //           color: Color(0xFFF6F5FF),
      //         )),
      //   ],
      // ),
    );
  }
}
