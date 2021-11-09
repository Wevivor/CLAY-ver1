import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_content/models/content_dtos.dart';
import 'package:clay/h_content/models/contents.dart';

import 'package:get/instance_manager.dart';

class ContentListController extends AbsListController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'contents';
  late dynamic _instance;
  late dynamic _storage;
  late String _boardId;
  ContentListController({
    int pageSize = 30,
  }) : super(pageSize = 30) {
    _instance = FirebaseFirestore.instance;
    _storage = FirebaseStorage.instance;
    _boardId = '';
    // fetchItems();
  }
  String get boardId => _boardId;
  set boardId(String value) => _boardId = value;

  static ContentListController get to => Get.find();

  Future<void> actionRefresh() async {
    this.cache.clear();

    loading = false;
    hasMore = true;
    update();
    await fetchItems(nextId: 0);
  }

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
      'from': offset,
      'size': pageSize,
      "query": {
        "bool": {
          "must": queryList,
        },
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

  void actionUpdateItem(Contents contents) {
    // try {
    var existIndex = cache.indexWhere(
      (element) => element.contentsId == contents.contentsId,
    );

    if (existIndex >= 0) {
      cache[existIndex] = contents;
    }

    update();
  }
}
