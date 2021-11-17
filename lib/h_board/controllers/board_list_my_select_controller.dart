import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_board/models/board_dtos.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class BoardListMySelectController extends AbsListController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'board';
  late FirebaseFirestore _instance;
  RxInt _selected = 0.obs;
  BoardInfo? boardInfo;
  BoardListMySelectController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
    _selected.value = -1;
    boardInfo = null;
  }
  int get selected => _selected.value;
  set selected(int value) => _selected.value = value;

  static BoardListMySelectController get to => Get.find();
  Future<List<dynamic>> getList(
    int offset,
    int limit, {
    String? searchTerm,
  }) async {
    final bodyJSON = {
      "from": offset,
      "size": limit,
      "query": {
        "bool": {
          "must": [
            {
              "match": {"board_creator.user_id": AuthController.to.getUser?.uid}
            }
          ],
          if (searchTerm != null && searchTerm.isNotEmpty)
            "must_not": [
              {
                "match": {"info.board_id": searchTerm}
              }
            ],
        },
      },
      "sort": [
        {
          "list_date": {
            "order": "desc",
            "format": "strict_date_optional_time_nanos"
          }
        }
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
/*
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
  */
}
