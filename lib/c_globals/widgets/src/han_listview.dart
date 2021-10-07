import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';

typedef MyEventCallback = Widget Function(BuildContext context, int index);

class HanListView extends StatelessWidget {
  bool shrinkWrap;
  Widget? noItem;
  Widget? progress;
  final controller;
  bool isSliver;
  MyEventCallback itemBuilder;
  final direction;
  HanListView({
    this.noItem,
    this.progress,
    required this.itemBuilder,
    this.direction = Axis.horizontal,
    required this.controller,
    this.isSliver = true,
    this.shrinkWrap = false,
  }) {
    if (progress == null) progress = defalutProgressIndicator();
    if (noItem == null) noItem = noItemWaring();
  }

  Widget defalutProgressIndicator() {
    if (isSliver)
      return SliverToBoxAdapter(
        child: Container(
          height: MySize.safeHeight -
              kToolbarHeight * 2 -
              kBottomNavigationBarHeight * 2,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    else
      return Container(
        height: MySize.safeHeight -
            kToolbarHeight * 2 -
            kBottomNavigationBarHeight * 2,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
  }

  Widget noItemWaring() {
    if (isSliver)
      return SliverToBoxAdapter(
          child: Container(
        height: (MySize.safeHeight -
                kToolbarHeight * 2 -
                kBottomNavigationBarHeight * 2) /
            2,
        child: Center(
          child: Text('아이템이 없습니다'),
        ),
      ));
    else
      return Container(
        height: (MySize.safeHeight -
                kToolbarHeight * 2 -
                kBottomNavigationBarHeight * 2) /
            2,
        child: Center(
          child: Text('아이템이 없습니다'),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final cache = controller.cache;
    final loading = controller.loading;
    if (loading && cache.length == 0) {
      return progress as Widget;
    }

    if (!loading && cache.length == 0) {
      return noItem as Widget;
    }
    if (isSliver)
      return SliverList(
        delegate: SliverChildBuilderDelegate((context, idx) {
          final cache = controller.cache;
          final hasMore = controller.hasMore;
          final loading = controller.loading;
          if (idx < cache.length) {
            final widget = itemBuilder(context, idx);
            return widget;
          }
          if (!loading && hasMore) {
            Future.microtask(() {
              controller.fetchItems(nextId: idx);
            });
          }
          if (hasMore) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SizedBox.shrink();
          }
        },
            childCount: controller.hasMore
                ? controller.cache.length + 1
                : controller.cache.length),
      );
    // return Container();
    else
      return Container(
        // color: Colors.yellow,
        padding: EdgeInsets.all(0),
        child: ListView.builder(
            scrollDirection: direction,
            shrinkWrap: shrinkWrap,
            physics: BouncingScrollPhysics(),
            itemCount: controller.hasMore ? cache.length + 1 : cache.length,
            itemBuilder: (context, idx) {
              final cache = controller.cache;
              final hasMore = controller.hasMore;
              final loading = controller.loading;
              if (idx < cache.length) {
                final widget = itemBuilder(context, idx);
                return widget;
              }
              if (!loading && hasMore) {
                Future.microtask(() {
                  controller.fetchItems(nextId: idx);
                });
              }
              if (hasMore) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return SizedBox.shrink();
              }
            }),
      );
  }
}
