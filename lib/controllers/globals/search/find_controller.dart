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
  final List<String> selected = [];
  final int maxItems = 3;
  final int minItems = 1;
  FindController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
    searchWord = '';
    history = [];
    searchWord = '';
    _state01 = true.obs;
    _state02 = true.obs;
    _state03 = true.obs;

    selected.add('video');
    selected.add('image');
    selected.add('store');
  }
  RxBool _state01 = false.obs;
  RxBool _state02 = false.obs;
  RxBool _state03 = false.obs;

  bool get state01 => _state01.value;
  bool get state02 => _state02.value;
  bool get state03 => _state03.value;

  bool toggle(String item) {
    if (contains(item)) {
      return remove(item);
    } else {
      return add(item);
    }
  }

  bool add(String item) {
    if (selected.length < maxItems) {
      selected.add(item);
      update();
      return true;
    }
    return false;
  }

  bool remove(String item) {
    if (selected.length > minItems) {
      selected.removeWhere((x) => x == item);
      update();
      return true;
    }
    return false;
  }

  bool contains(String media) {
    return selected.any((x) => x == media);
  }

  set state01(bool state) {
    if (toggle('store')) {
      _state01.value = state;
      update();
    }
  }

  set state02(bool state) {
    if (toggle('image')) _state02.value = state;
  }

  set state03(bool state) {
    if (toggle('video')) {
      _state03.value = state;
    }
  }

  var searchWord = '';

  static FindController get to => Get.find();

  Future<List<dynamic>> getList(
    int offset,
    int limit, {
    String? searchTerm,
  }) async {
    var _contentKind = [];
    if (state01) {}
    if (state02) {
      _contentKind = [..._contentKind, 1];
    }
    if (state03) {
      _contentKind = [..._contentKind, 2];
    }
    String? searchQuery = null;
    // if (searchTerm == null || searchTerm.isEmpty)
    //   searchQuery = '''''';
    // else
    //   searchQuery = '''''';
    final bodyJSON = {
      "query": {
        "bool": {
          "must": (searchTerm == null || searchTerm.isEmpty)
              ? {"match_all": {}}
              : {
                  "prefix": {"title": searchTerm}
                },
          "filter": {
            "terms": {"contentKind": _contentKind}
          },
        },
      },
      "sort": [
        {"cntView": "desc"}
      ]
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
