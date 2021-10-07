import 'package:clay/c_config/config.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;

///파트너 브렌드 등의 사용자 정보 리스트 임.
/// User Info 와 통화 여부를 고민 , 파트너 브랜드 리스트 임.
//SUBJECT 시영지 정보.

class ProfileListController extends AbsListController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'userinfos';
  late dynamic _instance;
  ProfileListController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
  }

  static ProfileListController get to => Get.find();
  Future<List<dynamic>> getList(
    int offset,
    int limit, {
    String? searchTerm,
  }) async {
    final bodyJSON = {
      "query": {
        "bool": {
          "must": [
            if (searchTerm != null && searchTerm.isNotEmpty)
              {
                "match": {"blandName": searchTerm}
              }
          ],
        },
      },
      "sort": [
        {"dtCreated": "desc"}
      ]
    };

    final lists = await listFilter('/afada_userinfos/_search', bodyJSON);
    return lists.map((jsonList) {
      return Profile.fromJson(jsonList['_source']);
    }).toList();
  }

  Future<List<dynamic>> getBlands(
    int offset,
    int limit, {
    String? searchTerm,
  }) async {
    var searchQuery = null;

    // if (searchTerm != null && searchTerm.isNotEmpty) {
    searchQuery = {
      "prefix": {"blandName": searchTerm}
    };

    final bodyJSON = {
      "query": {
        "bool": {
          "must": [searchQuery],
          "filter": {
            "term": {"level": 1}
          }
        }
      },
      "sort": [
        {"dtCreated": "desc"}
      ]
    };

    final lists = await listFilter('/userinfos/_search', bodyJSON);
    return lists.map((jsonList) {
      return Profile.fromJson(jsonList['_source']);
    }).toList();
  }

  fetchBlands({int? nextId, String? term}) async {
    nextId ??= 0;
    loading = true;
    final newItems = await getBlands(nextId, pageSize, searchTerm: term);
    final isLastPage = newItems.length < pageSize;
    if (isLastPage) {
      this.cache = [
        ...this.cache,
        ...newItems,
      ];
    } else {
      nextId += newItems.length;
      this.cache = [
        ...this.cache,
        ...newItems,
      ];
    }

    if (isLastPage) hasMore = false;
    loading = false;
    update();
  }

  HanUserInfo? supplyer;

  Future<void> actionFollowing(HanUserInfo item, Profile profile) async {
    final exist = item.following.lists
        .firstWhere((element) => element == profile.uid, orElse: () {
      return null;
    });

    if (exist != null) {
      item.following.lists.removeWhere((element) => element == profile.uid);
    } else {
      item.following.lists.add(profile.uid);
    }
    final _following = item.following;
    final newItem = item.copyWith
        .following(cnt: _following.lists.length, lists: _following.lists);
    await updateFb(
        instance: _instance, path: MENU_POS, id: item.uid ?? '', dto: newItem);

    supplyer = newItem;
    update();
  }

  ///=============================================
  /// 액션 파트
  ///=============================================

  Future<List<dynamic>> listFilterFb({
    required final instance,
    required String path,
  }) async {
    final _collectionRef = instance.collection('$path');

    final querySnap = await _collectionRef
        .where('level', isGreaterThanOrEqualTo: 1)
        .where('level', isLessThanOrEqualTo: 2)
        .orderBy('level', descending: true)
        .orderBy('dtCreated', descending: true)
        .get();

    List<dynamic> _tmp = [];
    querySnap.docs.forEach((doc) {
      _tmp.add(doc.data());
    });
    return _tmp;
  }

  Future<HanUserInfo> actionRead(String id) async {
    // try {
    final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

    if (_item == null) {
      throw Exception('error');
    }
    final info = HanUserInfoDto.fromJson(_item);

    update();
    return info.toDomain();
  }
}
