import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_board/models/board_dtos.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

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
      "from": offset,
      "size": limit,
      "query": {
        "bool": {
          "must": queryList,
        },
      },
      "sort": [
        {"info.is_fixed": "desc"},
        {
          "register_date": {
            "order": "desc",
            "format": "strict_date_optional_time_nanos"
          }
        }
      ]
    };
    final lists = await listFilter('/clay_boards/_search', bodyJSON);

    //보드 카운드 입력하기
    var countList = [
      {
        "match": {"user_info.user_id": AuthController.to.getUser?.uid}
      }
    ];
    final countJSON = {
      "size": 0,
      "query": {
        "bool": {
          "must": countList,
        },
      },
      "aggs": {
        "group_by_state": {
          "terms": {"field": "board_info.board_id.keyword"}
        }
      }
    };
    final counts = await countFilter('/clay_contents', countJSON);
    final tmp = lists.map((jsonList) {
      final item = BoardDto.fromJson(jsonList['_source']).toDomain();
      final keys = counts.where((e) {
        return e['key'] == item.boardId;
      });

      if (keys.isEmpty)
        return item.copyWith(contentsCount: 0);
      else
        return item.copyWith(contentsCount: keys.first['doc_count']);
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

 
  */

  Future<void> actionRefresh() async {
    this.cache.clear();

    loading = false;
    hasMore = true;
    update();
    await fetchItems(nextId: 0);
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
