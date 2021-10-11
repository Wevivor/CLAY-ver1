import 'package:clay/c_config/config.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;
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
                  "prefix": {"title": searchTerm}
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

    final lists = await listFilter('/afada_posts/_search', bodyJSON);
    return lists.map((jsonList) {
      return PostInfoDto.fromJson(jsonList['_source']).toDomain();
    }).toList();
  }

  // void addFbStore(String query) {
  //   if (query.isNotEmpty) {
  //     // final word = FindWord('1', query, DateTime.now());
  //     final word = FindWord('1', query, '');
  //     history.add(word);
  //     update();
  //   }
  // }
  ///--------------------------------------
  /// 액션 부분
  ///--------------------------------------
  ///Post에서 읽어오는 것 임.
  Future<void> actionfresh(String id) async {
    // try {

    final _item =
        await readFb(id: id, instance: _instance, path: 'home/datas/posts');

    if (_item == null) {
      throw Exception('error');
    }
    final _post = PostDto.fromJson(_item).toDomain();
    var existIndex = cache.indexWhere(
      (element) => element.id == id,
    );

    if (existIndex >= 0) {
      cache[existIndex] = _post.info;
    }

    // final info = PostInfo.fromJson((_info.info));
    this.item = _post;
    update();
    return;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
