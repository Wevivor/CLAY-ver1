import 'dart:convert';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_content/models/content_dtos.dart';
import 'package:clay/h_content/models/contents.dart';

import 'package:get/instance_manager.dart';

class ContentAllListController extends AbsListController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'contents';
  late String filter;
  late dynamic _instance;
  ContentAllListController({
    int pageSize = 2,
  }) : super(pageSize = 30) {
    _instance = FirebaseFirestore.instance;
    filter = '';
  }

  static ContentAllListController get to => Get.find();
  Future<List<dynamic>> getList(
    int offset,
    int limit, {
    String? searchTerm,
  }) async {
    var queryList = [
      {
        "match": {"user_info.user_id": AuthController.to.getUser?.uid ?? ''}
      }
    ];
    if (searchTerm != null && searchTerm.isNotEmpty) {
      queryList.add({
        "match": {"board_info.board_id": searchTerm}
      });
    }

    final bodyJSON = {
      "from": offset,
      "size": limit,
      "query": {
        "bool": {
          "must": queryList,
        }
      },
      "sort": [
        {"info.contents_fixed": "desc"},
        {
          "contents_create_date": {
            "order": "desc",
            "format": "strict_date_optional_time_nanos"
          }
        }
      ]
    };

    final lists = await listFilter('/clay_contents/_search', bodyJSON);
    final _tmp = lists.map((jsonList) {
      return ContentsDto.fromJson(jsonList['_source']).toDomain();
    }).toList();
    return _tmp;
  }

  void actionDelteItem(String id) {
    // try {
    var existIndex = cache.indexWhere(
      (element) => element.contentsId == id,
    );

    if (existIndex >= 0) {
      cache.removeAt(existIndex);
    }

    update();
  }

  void actionUpdateItem(Contents? item) {
    if (item != null) {
      var existIndex = cache.indexWhere(
        (element) => element.contentsId == item.contentsId,
      );

      if (existIndex >= 0) {
        cache[existIndex] = item;
      }
    }
  }

  Future<void> actionRefresh() async {
    this.cache.clear();

    loading = false;
    hasMore = true;
    update();
    await fetchItems(nextId: 0);
  }
}
