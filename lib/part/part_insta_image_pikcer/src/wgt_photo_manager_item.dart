import 'dart:math';
import 'dart:typed_data';

import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/part/part_insta_image_pikcer/part_insta_image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_manager/photo_manager.dart';

import 'selectable.dart';

// ignore: must_be_immutable
class PhotoManagerItemWidget extends StatefulWidget {
  final Uint8List data;
  final AssetEntity item;
  final int width;
  final int height;
  final Function? onTap;
  PhotoManagerItemWidget(
      {required this.item,
      required this.data,
      required this.width,
      required this.height,
      this.onTap});

  @override
  _PhotoManagerItemWidgetState createState() => _PhotoManagerItemWidgetState();
}

class _PhotoManagerItemWidgetState extends State<PhotoManagerItemWidget>
    with AppbarHelper, SingleTickerProviderStateMixin {
  late AnimationController _animatedController;

  @override
  void initState() {
    super.initState();
    _animatedController = AnimationController(
        vsync: this, duration: const Duration(microseconds: 300));

    Get.put(PhotoSelectionController());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final animation = Tween(begin: 0, end: 2 * pi).animate(_animatedController);

    return Container(
      child: GetBuilder<PhotoSelectionController>(
        builder: (controller) => InkWell(
          onTap: () {
            PhotoSelectionController.to.toggle(widget.item);
            if (widget.onTap != null) widget.onTap!();

            AppHelper.showMessage('픽업 이미지');
          },
          child: Stack(
            children: [
              Selectable(
                isSelected: PhotoSelectionController.to.contains(widget.item),
                child: Image.memory(
                  widget.data,
                  fit: BoxFit.fill,
                ),
              ),
              if (widget.item.typeInt == 2)
                Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/icon/arrow_drop_right.png')),
            ],
          ),
        ),
      ),
    );

    ///Tab 바
  }
}
