import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/app/home/homes.dart';
import 'package:clay/controllers/controllers.dart';

import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';
import 'package:clay/page/sub_post.dart';
import 'package:clay/page/ui_borad_content.dart';
import 'package:clay/page/widget/card_post_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:get/get.dart';
import 'package:sprintf/sprintf.dart';

import '../../part_home.dart';

// ignore: must_be_immutable
class ContentHeaderPART extends StatelessWidget with AppbarHelper {
  final listController = Get.put(
    BoardListController(),
  );
  ContentHeaderPART();
  Future<void> initFetch() async {
    listController.cache = [];
    await listController.fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    initFetch();
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          vwTitle('홈베이킹 레시피'),
          heightSpace(2.0),
          //TODO: 날짜, 및 개수 sprinf
          Container(
            // padding: EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            child: Text(
              sprintf('%s, %d items', ['2021년 8월 7일, ', 13]),
              style: baseStyle.copyWith(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
          heightSpace(32.0),
        ],
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
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.w900),
      ),
    );
  }
}
