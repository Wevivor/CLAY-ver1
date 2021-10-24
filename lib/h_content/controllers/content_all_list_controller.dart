import 'dart:convert';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_content/models/content_dtos.dart';
import 'package:clay/h_content/models/contents.dart';

import 'package:get/instance_manager.dart';

class ContentAllListController extends AbsListController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'contents';
  late dynamic _instance;
  ContentAllListController({
    int pageSize = 2,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
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
        {"info.contents_fixed": "desc"}
      ]
    };

    print(jsonEncode(bodyJSON));
    final lists = await listFilter('/clay_contents/_search', bodyJSON);
    return lists.map((jsonList) {
      return ContentsDto.fromJson(jsonList['_source']).toDomain();
    }).toList();
  }

  //---------------------------------
  //------------------기본 CRUD 프로토콜
  //---------------------------------

  Future<ContentsInfo> read(String id) async {
    // try {
    final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

    if (_item == null) {
      throw Exception('error');
    }
    final _post = ContentsDto.fromJson(_item).toDomain();

    // final info = PostInfo.fromJson((_info.info));
    this.item = _post.info;
    update();
    return _post.info;
  }

  Future<void> actionfresh(String id) async {
    // try {
    final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

    if (_item == null) {
      throw Exception('error');
    }
    final _post = ContentsDto.fromJson(_item).toDomain();
    var existIndex = cache.indexWhere(
      (element) => element.id == id,
    );

    if (existIndex >= 0) {
      cache[existIndex] = _post.info;
    }

    // final info = PostInfo.fromJson((_info.info));
    this.item = _post;
    update();
  }

  Future<void> actionDelete(id) async {
    try {
      LoadingController.to.isLoading = true;
      await deleteFb(instance: _instance, path: MENU_POS, id: id);
    } catch (e) {
      throw Exception('error');
    } finally {
      update();
      LoadingController.to.isLoading = false;
    }
  }

  Future<void> actionDelteItem(String id) async {
    // try {
    var existIndex = cache.indexWhere(
      (element) => element.contentsId == id,
    );

    if (existIndex >= 0) {
      cache.removeAt(existIndex);
    }

    update();
  }

  Future<void> actionUpdateItem(Contents? item) async {
    if (item != null) {
      var existIndex = cache.indexWhere(
        (element) => element.contentsId == item.contentsId,
      );

      if (existIndex >= 0) {
        cache[existIndex] = item;
      }
    }
  }
}
