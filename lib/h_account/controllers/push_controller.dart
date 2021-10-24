import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_account/models/push/push_dto.dart';
import 'package:get/instance_manager.dart';

class PushController extends AbsListController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'history/push/push_send';
  late dynamic _instance;
  PushController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
  }

  static PushController get to => Get.find();
  Future<List<dynamic>> getList(
    int offset,
    int limit, {
    String? searchTerm,
  }) async {
    final bodyJSON = {
      "query": {
        "bool": {
          "must": [
            {
              "match": {"to.uid": AuthController.to.getUser?.uid}
            }
          ],
        }
      },
      "sort": [
        {"dtCreated": "desc"}
      ]
    };

    final lists = await listFilter('/afada_pushs/_search', bodyJSON);
    return lists.map((jsonList) {
      final elem = jsonList['_source']['message'];

      return PushMessageDto.fromJson(elem).toDomain();
    }).toList();
  }

  ///=============================================
  /// 액션 파트
  ///=============================================
  // Future<void> actionInsert({required Bookmark item}) async {
  //   final bookmark = item.toDto();
  //   await insertFb(instance: _instance, path: MENU_POS, item: bookmark);
  // }

  Future<void> actionDelete(
      {required String postId, required String uid}) async {
    final _collectionRef = _instance.collection(MENU_POS);

    final querySnap = await _collectionRef
        .where('postId', isEqualTo: postId)
        .where('owner.uid', isEqualTo: uid)
        .get();
    List<dynamic> _tmp = [];
    querySnap.docs.forEach((doc) {
      final data = doc.data();
      _tmp.add(data);
    });
    _tmp.forEach((element) async {
      await deleteFb(instance: _instance, path: MENU_POS, id: element['id']);
    });
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
