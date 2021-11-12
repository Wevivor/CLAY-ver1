import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_board/models/board_dtos.dart';
import 'package:clay/h_content/models/content_dtos.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class FindController extends AbsListController with ElCommonModule {
  late dynamic _instance;
  List<dynamic> history = [];
  FindController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
    searchWord = '';
    history.clear();
  }

  var searchWord = '';

  static FindController get to => Get.find();

  Future<List<dynamic>> getList(
    int offset,
    int limit, {
    String? searchTerm,
  }) async {
    var _contentKind = [];
    String? searchQuery = null;

    ///----- BOARD 에서 검색 ------------------
    var brdQueryList = [
      {
        "match": {"board_creator.user_id": AuthController.to.getUser?.uid}
      }
    ];
    if (searchTerm != null && searchTerm.isNotEmpty) {
      brdQueryList.add({
        "match_phrase_prefix": {"info.board_name": searchTerm}
      });
    }

    final bodyJSON = {
      "from": offset,
      "size": limit,
      "query": {
        "bool": {
          "must": brdQueryList,
        },
      },
      "sort": [
        {
          "list_date": {
            "order": "desc",
          },
        }
      ]
    };

    final brdLists = await listFilter('/clay_boards/_search', bodyJSON);

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
    var _lists = brdLists.map((jsonList) {
      final item = BoardDto.fromJson(jsonList['_source']).toDomain();
      final keys = counts.where((e) {
        return e['key'] == item.boardId;
      });

      if (keys.isEmpty)
        return item.copyWith(contentsCount: 0);
      else
        return item.copyWith(contentsCount: keys.first['doc_count']);
    }).toList();

    ///----- Contens 에서 검색 ------------------

    var contQueryList = [];
    if (searchTerm != null && searchTerm.isNotEmpty) {
      contQueryList.add({
        "match_phrase_prefix": {"info.contents_comment": searchTerm},
      });
      contQueryList.add({
        "match_phrase_prefix": {"info.contents_description": searchTerm},
      });

      contQueryList.add({
        "match_phrase_prefix": {"info.contents_title": searchTerm},
      });
      contQueryList.add({
        "match_phrase_prefix": {"info.contents_memo": searchTerm},
      });
    }

    final contBodyJSON = {
      "from": offset,
      "size": limit,
      "query": {
        "bool": {
          "must": [
            {
              "match": {"user_info.user_id": AuthController.to.getUser?.uid}
            },
            {
              "bool": {"should": contQueryList}
            },
          ]
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

    final contsLists = await listFilter('/clay_contents/_search', contBodyJSON);

    var _contLists = contsLists.map((jsonList) {
      return ContentsDto.fromJson(jsonList['_source']).toDomain();
    }).toList();

    return [..._lists, ..._contLists];
  }

  @override
  void onInit() {
    super.onInit();
  }
}
