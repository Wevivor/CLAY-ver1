import 'package:clay/c_config/config.dart';
import 'package:clay/models/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:clay/controllers/common/commons.dart';

class BoardListController extends AbsListController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'board';
  late FirebaseFirestore _instance;
  RxInt _selected = 0.obs;
  BoardListController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
    _selected.value = 0;
    // fetchItems();
  }
  int get selected => _selected.value;
  set selected(int value) => _selected.value = value;

  static BoardListController get to => Get.find();
  Future<List<dynamic>> getList(
    int offset,
    int limit, {
    String? searchTerm,
  }) async {
    var queryList = [
      {
        "match": {"board_creator.user_id": AuthController.to.getUser?.uid}
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

    final lists = await listFilter('/clay_boards/_search', bodyJSON);
    final tmp = lists.map((jsonList) {
      final item = BoardDto.fromJson(jsonList['_source']).toDomain();
      return item;
    }).toList();

    return tmp;
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

  Future<void> actionDeleteItem(String? id) async {
    if (id != null) {
      var existIndex = cache.indexWhere(
        (element) => element.boardId == id,
      );

      if (existIndex >= 0) {
        cache.removeAt(existIndex);
      }

      update();
    }
  }

  Future<void> actionUpdateItem(Board? item) async {
    if (item != null) {
      var existIndex = cache.indexWhere(
        (element) => element.boardId == item.boardId,
      );

      if (existIndex >= 0) {
        cache[existIndex] = item;
      }
    }
    update();
  }
}
