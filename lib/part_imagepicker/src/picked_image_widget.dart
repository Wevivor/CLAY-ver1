import 'dart:io';

import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'picked_image_controller.dart';

class PickedImageWidget extends StatelessWidget {
  final double height;
  final double width;
  final String imgHolder;

  PickedImageWidget(this.height, this.width,
      {this.imgHolder = 'assets/images/profile_holder.png'});
  @override
  Widget build(BuildContext context) {
    // double pageWidth = MediaQuery.of(context).size.width;
    // double pageHeight = MediaQuery.of(context).size.height;

    return GetBuilder<PickedImageController>(builder: (_) {
      var imageProvider;
      if (_.file != null) {
        imageProvider = FileImage(File(_.file?.path ?? ''));
      } else if (_.imageUrl.isNotEmpty) {
        imageProvider = NetworkImage(_.imageUrl);
      } else {
        imageProvider = AssetImage(imgHolder);
      }

      //파일에서 가져옴
      return Container(
        decoration: DecoHelper.roundDeco.copyWith(
          color: Color.fromRGBO(199, 199, 199, 0.7),
        ),

        // ),

        width: width,
        height: height,
        child: Image(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      );
      // return Container(
      //   decoration: DecoHelper.roundDeco.copyWith(
      //     color: Color.fromRGBO(199, 199, 199, 0.7),
      //   ),
      //   width: width,
      //   height: height,
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.circular(10.0),
      //     image: imageProvider,
      //     fit: BoxFit.fill,
      //   ),
      // );
    });
  }
}
