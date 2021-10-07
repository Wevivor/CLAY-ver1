import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/app/apps.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:math' as math;

import 'widget/card_post_item.dart';

class PostSUB extends StatelessWidget with AppbarHelper {
  final PostInfo? item;
  PostSUB({this.item});
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    // Get.put(BookmarkController());
    Get.put(FavorController());
    Get.lazyPut(() => FindController());

    double topPadding = MediaQuery.of(context).padding.top + 0.0;
    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
              floatHeaderSlivers: false,
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return <Widget>[
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    sliver: SliverAppBar(
                      automaticallyImplyLeading: true,
                      title: null,
                      centerTitle: true,
                      floating: true,
                      snap: true,
                      pinned: true,
                      leading: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      actions: [
                        IconButton(
                            onPressed: () {
                              AppHelper.showMessage('팡법 메뉴');
                            },
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ))
                      ],
                      elevation: 4.0,
                      expandedHeight: 360,
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.pin,
                        background: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 20),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Image.network(
                                            item?.imgUrl ?? Const.postHolder)
                                        .image,
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                      ),
                      bottom: PreferredSize(
                        preferredSize: Size.fromHeight(0),
                        child: Container(),
                      ),
                    ),
                  ),
                ];
              },
              body: Builder(
                builder: (BuildContext context) {
                  return CustomScrollView(
                      scrollDirection: Axis.vertical,
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverToBoxAdapter(
                          child:
                              GetBuilder<PostController>(builder: (controller) {
                            final profile = controller.item.profile;
                            final _info = controller.item.info;
                            ;
                            final summary = PostSummary(
                              id: _info.id,
                              imgUrl: _info.imgUrl,
                              uid: _info.uid,
                              title: _info.title,
                              content: _info.content,
                              contentKind: _info.contentKind,
                              cntView: _info.cntView,
                              thumbnails: _info.thumbnails,
                              dtCreated: _info.dtCreated,
                              dtUpdated: _info.dtUpdated,
                            );

                            return Container(
                              /// 프로파일 정보
                              child: PreferredSize(
                                preferredSize: Size.fromHeight(MySize.size32),
                                child: Container(
                                  padding: EdgeInsets.only(left: 14, right: 14),
                                ),
                              ),
                            );
                          }),
                        ),
                        SliverToBoxAdapter(
                          child: heightSpace(14),
                        ),
                        SliverToBoxAdapter(
                          child: GetBuilder<PostController>(
                            builder: (controller) => Container(
                              height: 40.0,
                              padding: EdgeInsets.only(left: 14, right: 14),
                              constraints:
                                  BoxConstraints(maxHeight: 40, minHeight: 20),
                              child: Text(
                                controller.item.info.content,
                                style: detailStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // // /// TODO 착용제품
                        SliverToBoxAdapter(
                          child: vwProductGrid(context),
                        ),
                        SliverToBoxAdapter(
                          child: heightSpace(50),
                        ),

                        ///TODO 제품 리스트.
                        SliverToBoxAdapter(
                          child: Container(
                            padding: EdgeInsets.only(left: 14, right: 14),
                            child: Row(
                              children: [
                                GetBuilder<PostController>(
                                  builder: (controller) => Text(
                                    '${controller.item.profile.displayName}의 다른 게시물',
                                    style: detailStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(child: Container()),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed('/profile_other');
                                  },
                                  child: Text(
                                    '더보기',
                                    style: detailStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // trailing: Text('더보기'),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: heightSpace(20),
                        ),
                      ]);
                },
              )),
          // vwProductDetail(context),
        ],
      ),
    );
  }

  vwProductGrid(BuildContext context) {
    return Container(
      height: 55 * 2 + 10,
      child: GridView.builder(
        itemCount: PostController.to.item.product.length,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 24.0,
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          childAspectRatio: 50 / 298,
        ),
        itemBuilder: (BuildContext context, int idx) {
          final controller = PostController.to;
          final cache = controller.item.product;
          return Container(
            // height: (MySize.safeWidth - 14 * 5) / 5.5,
            // color: Colors.red,
            height: 55,
            width: 298,
            child: ListTile(
              onTap: () async {
                final _controller = Get.put(ProductController());
                await _controller.fetchItem(id: cache[idx].id);

                // _showProudcyBS(context, cache[idx]);
                // _showProductBS(context);
                // Get.toNamed('/product');
              },
              dense: true,
              leading: Container(
                child: ImageRoundWidget(
                  width: 48,
                  height: 48,
                  round: 5.0,
                  imgUrl: cache[idx].imgUrl,
                  // holder: 'assets/images/product_g_05.png',
                ),
              ),
              title: Text(
                // 'Yeezy Boost 500',
                cache[idx].title,
                style: detailStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              subtitle: Text(
                // 'ADIDAS',
                cache[idx].detail,
                style: detailStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              trailing: Text(
                // '289,000 원',
                '${cache[idx].price} 원',
                style: detailStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // void _showProudcyBS(context, final item) {
  //   showModalBottomSheet(
  //     isDismissible: true,
  //     backgroundColor: Colors.transparent,
  //     shape: ContinuousRectangleBorder(
  //         side: BorderSide(color: Colors.black),
  //         borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(24), topRight: Radius.circular(24))),
  //     isScrollControlled: true,
  //     context: context,
  //     enableDrag: false,
  //     builder: (BuildContext buildContext) {
  //       return Container(
  //           child: DraggableScrollableSheet(
  //         initialChildSize: 0.2,

  //         // initialChildSize: 1,
  //         minChildSize: 0.2,
  //         maxChildSize: 0.9,
  //         builder: (BuildContext context, controller) {
  //           return ProductDetailSUB(scrollcontroller: controller, item: item);
  //         },
  //       ));
  //     },
  //   );
  // }

/*
  Widget vwProductDetail(context, final item) {
    return DraggableScrollableSheet(
      initialChildSize: 0.2,

      // initialChildSize: 1,
      minChildSize: 0.2,
      maxChildSize: 0.9,
      builder: (BuildContext context, controller) {
        return ProductDetailSUB(scrollcontroller: controller, item: item);
      },
    );
  }
*/
  SliverPersistentHeader makeHeader(Widget widget) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: kToolbarHeight,
        maxHeight: kToolbarHeight,
        child: Container(color: Colors.white, child: widget),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
