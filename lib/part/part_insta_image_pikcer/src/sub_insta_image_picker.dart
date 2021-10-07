import 'dart:math';
import 'dart:typed_data';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/part/part_insta_image_pikcer/part_insta_image_picker.dart';
import 'package:clay/part/part_write/src/sub_post_write.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';
import 'package:photo_manager/photo_manager.dart';

import 'selectable.dart';
import 'wgt_photo_manager_item.dart';

// ignore: must_be_immutable
class InstaImagePickerSUB extends StatefulWidget {
  InstaImagePickerSUB();

  @override
  _InstaImagePickerSUBState createState() => _InstaImagePickerSUBState();
}

class _InstaImagePickerSUBState extends State<InstaImagePickerSUB>
    with AppbarHelper, SingleTickerProviderStateMixin {
  late AnimationController _animatedController;

  late Uint8List itemData;
  int _index = 0;
  late String _preview;
  @override
  void initState() {
    super.initState();
    // _animatedController = AnimationController(
    //     vsync: this, duration: const Duration(microseconds: 300));
    _index = 0;
    setState(() {
      _preview = 'assets/images/post01.png';
    });
    Get.put(PhotoSelectionController());
    // initFetch();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    final aToolbarHeight = 56.0;

    final profileHeight = aToolbarHeight + 208;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              PhotoSelectionController.to.selectedMedias = [];
              // PhotoSelectionController.to.update();
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFF333333),
            )),
        elevation: 0.0,
        title: Container(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {
              if (PhotoSelectionController.to.selectedMedias.length > 0) {
                Get.to(() => PostWriteSUB(itemData: itemData));

                // Get.to(() => PostSUB(item: postInfo));
                // Get.toNamed('/post_ins');
              }
            },
            child: GetBuilder<PhotoSelectionController>(
              builder: (controller) => Container(
                width: 49,
                height: 30,
                alignment: Alignment.center,

                // padding: EdgeInsets.symmetric(vertical: 5),

                decoration:
                    PhotoSelectionController.to.selectedMedias.length == 0
                        ? DecoHelper.roundDeco.copyWith(
                            color: Color(0xFFE0E0E0),
                            border: Border(),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          )
                        : DecoHelper.roundGrDeco.copyWith(
                            gradient: gradientReverse,
                            // color: Color(0xFFE0E0E0),
                            border: Border(),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                // alignment: Alignment.center,
                child: Text(
                  '다음',
                  style: baseStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
          ),
        ),
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(206),
        //   child: Container(
        //     alignment: Alignment.bottomCenter,
        //     width: double.infinity,
        //     height: 206,
        //     child: Image.asset(
        //       'assets/images/post01.png',
        //       width: double.infinity,
        //       height: 206,
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        // ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          GetBuilder<PhotoSelectionController>(
              builder: (controller) => Container(
                    height: 206,
                    child: controller.getSelected() == null
                        ? Image.asset(
                            _preview,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          )
                        : FutureBuilder(
                            future: controller.getSelected()!.originBytes,
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                final Uint8List data =
                                    snapshot.data as Uint8List;
                                itemData = data;

                                return Image.memory(
                                  data,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                );
                              }
                              return Container(
                                height: 206,
                                width: double.infinity,
                              );
                            }),
                  )),
          GetBuilder<PhotoManagerController>(
            builder: (_) => Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 114 / (114),
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 0.0,
                ),
                itemCount: PhotoManagerController.to.photos.length,
                itemBuilder: (BuildContext context, int idx) {
                  final controller = PhotoManagerController.to;

                  final hasMore = controller.hasMore;
                  final cache = controller.photos;
                  // final loading = controller.loading;
                  if (idx < cache.length) {
                    final width = ((MySize.safeWidth) / 3 - 1).round();

                    return FutureBuilder(
                        future: cache[idx].thumbDataWithSize(width, width),
                        builder: (BuildContext context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            final Uint8List data = snapshot.data as Uint8List;

                            return PhotoManagerItemWidget(
                                item: cache[idx],
                                data: data,
                                width: width,
                                height: width);
                          }
                          return SizedBox.shrink();
                        });
                  }
                  if (hasMore) {
                    Future.microtask(() {
                      controller.fetchItems(nextId: (idx / 60).round());
                    });
                    return SizedBox.shrink();
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );

    ///Tab 바
  }

  Widget vwItem({
    required AssetEntity item,
    required int width,
    required int height,
  }) {
    final animation = Tween(begin: 0, end: 2 * pi).animate(_animatedController);
    return FutureBuilder(
      future: item.thumbDataWithSize(width, height),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final Uint8List data = snapshot.data as Uint8List;
          return AnimatedBuilder(
            animation: animation,
            builder: (context, _) => Transform.rotate(
              angle: (animation.value).toDouble(),
              child: InkWell(
                onTap: () {
                  PhotoSelectionController.to.toggle(item);

                  AppHelper.showMessage('픽업 이미지');
                },
                child: Selectable(
                  isSelected: PhotoSelectionController.to.contains(item),
                  child: Positioned.fill(
                    child: Image.memory(
                      data,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
