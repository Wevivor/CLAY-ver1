import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_content/models/content_dtos.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import 'fb_search_history_module.dart';

class FindController extends AbsListController
    with ElCommonModule, FbSearchHistoryModule, FbCommonModule {
  late dynamic _instance;
  List<dynamic> history = [];
  FindController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
    searchWord = '';
    history = [];
    searchWord = '';
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
    final bodyJSON = {
      "query": {
        "bool": {
          "must": (searchTerm == null || searchTerm.isEmpty)
              ? {"match_all": {}}
              : {
                  "prefix": {"info.contents_title": searchTerm}
                },
          // "filter": {
          //   "terms": {"contentKind": _contentKind}
          // },
        },
      },
      // "sort": [
      //   {"cntView": "desc"}
      // ]
    };

    final lists = await listFilter('/clay_contents/_search', bodyJSON);
    return lists.map((jsonList) {
      return ContentsDto.fromJson(jsonList['_source']).toDomain();
    }).toList();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
