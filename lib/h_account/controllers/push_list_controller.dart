import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_account/models/push/push_dto.dart';
import 'package:get/instance_manager.dart';

class PushListController extends AbsListController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'etc/messages/push/';
  late dynamic _instance;
  PushListController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
  }

  static PushListController get to => Get.find();
  Future<List<dynamic>> getList(
    int offset,
    int limit, {
    String? searchTerm,
  }) async {
    var queryList = [
      {
        "match": {"to.user_id": AuthController.to.getUser?.uid}
      }
    ];
    // if (searchTerm != null && searchTerm.isNotEmpty) {
    //   queryList.add({
    //     "match": {"info.board_badge": searchTerm}
    //   });
    // }

    final bodyJSON = {
      "from": offset,
      "size": limit,
      "query": {
        "bool": {
          "must": queryList,
        },
      },
      "sort": [
        // {"cntView": "desc"}
      ]
    };

    final lists = await listFilter('/clay_pushs/_search', bodyJSON);
    return lists.map((jsonList) {
      final elem = jsonList['_source'];

      return PushDto.fromJson(elem).toDomain();
    }).toList();
  }

  Future<int> getCount({
    String? searchTerm,
  }) async {
    final _count = await count(
        index: '/clay_pushs',
        params: 'q=to.user_id:${AuthController.to.getUser?.uid}');
    return _count;
  }

  ///=============================================
  /// 액션 파트
  ///=============================================
  // Future<void> actionInsert({required Bookmark item}) async {
  //   final bookmark = item.toDto();
  //   await insertFb(instance: _instance, path: MENU_POS, item: bookmark);
  // }

  Future<void> actionDelete({
    required String id,
  }) async {
    await deleteFb(instance: _instance, path: MENU_POS, id: id);
    var existIndex = cache.indexWhere(
      (element) => element.id == id,
    );

    if (existIndex >= 0) {
      cache.removeAt(existIndex);
    }
    update();
  }

  // Future<Bookmark?> actionRead({required String id}) async {
  //   final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

  //   if (_item == null) {
  //     throw Exception('error');
  //   }
  //   final info = BookmarkDto.fromJson(_item).toDomain();
  //   return info;
  // }
}
