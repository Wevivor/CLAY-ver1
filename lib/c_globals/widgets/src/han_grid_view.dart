import 'package:clay/c_config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';

class HanGridView extends StatelessWidget {
  bool shrinkWrap;
  final controller;
  final direction;
  final delegate;
  final itemBuilder;
  Widget? noItem;
  Widget? progress;
  bool isSliver;

  HanGridView(
      {this.noItem,
      this.progress,
      required this.itemBuilder,
      required this.delegate,
      this.direction = Axis.horizontal,
      this.shrinkWrap = false,
      required this.isSliver,
      required this.controller}) {
    this.isSliver = isSliver;
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
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
  }

  Widget noItemWaring() {
    if (isSliver)
      return SliverToBoxAdapter(
          child: Container(
        height: MySize.safeHeight -
            kToolbarHeight * 2 -
            kBottomNavigationBarHeight * 2,
        child: Center(
          child: Text('아이템이 없습니다'),
        ),
      ));
    else
      return Container(
        child: Center(
          child: Text('아이템이 없습니다'),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    final cache = controller.cache;
    final loading = controller.loading;

    if (loading && cache.length == 0) {
      return progress as Widget;
    }

    if (!loading && cache.length == 0) {
      return noItem as Widget;
    }
    if (isSliver)
      return SliverGrid(
        gridDelegate: delegate,
        delegate: itemBuilder,
      );
    return GridView.builder(
      scrollDirection: direction,
      shrinkWrap: shrinkWrap,
      physics: BouncingScrollPhysics(),
      itemCount: controller.hasMore ? cache.length + 1 : cache.length,
      gridDelegate: delegate,
      itemBuilder: itemBuilder,
    );
  }
}
