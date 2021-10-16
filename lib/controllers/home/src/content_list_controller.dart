import 'package:clay/c_config/config.dart';
import 'package:clay/controllers/common/commons.dart';

import 'package:clay/models/models.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;

class ContentListController extends AbsListController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'contents';
  late dynamic _instance;
  late dynamic _storage;
  late String _boardId;
  ContentListController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
    _storage = FirebaseStorage.instance;
    _boardId = '';
    // fetchItems();
  }
  String get boardId => _boardId;
  set boardId(String value) => _boardId = value;

  static ContentListController get to => Get.find();
  Future<List<dynamic>> getList(
    int offset,
    int limit, {
    String? searchTerm,
  }) async {
    var queryList = [
      {
        "match": {"board_info.board_id": _boardId}
      }
    ];
    if (searchTerm != null && searchTerm.isNotEmpty) {
      queryList.add({
        "match": {"info.board_badge": searchTerm}
      });
    }

    final bodyJSON = {
      "query": {
        "bool": {
          "must": queryList,
        },
      },
      "sort": [
        // {"cntView": "desc"}
      ]
    };
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
}
