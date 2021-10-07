import 'package:clay/c_config/config.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

class BoardListController extends AbsListController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'home/datas/posts';
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
    final bodyJSON = {
      "query": {"match_all": {}},
      "sort": [
        {"cntView": "desc"}
      ]
    };

    final lists = await listFilter('/afada_posts/_search', bodyJSON);
    return lists.map((jsonList) {
      return PostInfoDto.fromJson(jsonList['_source']).toDomain();
    }).toList();

    /*    

    final lists = await listFb(instance: _instance, path: MENU_POS);
    return lists.map((jsonObject) {
      return PostInfoDto.fromJson(jsonObject['info']).toDomain();
    }).toList();

    String url =
        '${Const.baseUrl}$path?offset=$offset&limit=$limit${_buildSearchTermQuery(searchTerm)}';

    return client.get(Uri.parse(url.trim())).mapResponse(
        (List<dynamic> jsonArray) => jsonArray
            .map((jsonObject) => PostListItem.fromJson(jsonObject))
            .toList());
     */
  }

  //---------------------------------
  //------------------기본 CRUD 프로토콜
  //---------------------------------

  Future<PostInfo> read(String id) async {
    // try {
    final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

    if (_item == null) {
      throw Exception('error');
    }
    final _post = PostDto.fromJson(_item).toDomain();

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
  }
}
