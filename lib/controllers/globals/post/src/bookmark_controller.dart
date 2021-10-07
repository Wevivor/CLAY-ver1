import 'package:clay/c_config/config.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;

class BookmarkController extends AbsListController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'history/bookmark/bookmark_info';
  late dynamic _instance;
  BookmarkController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
    super.fetchItems();
  }

  static BookmarkController get to => Get.find();
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
              "match": {"owner.uid": AuthController.to.getUser?.uid}
            }
          ],
        }
      },
      "sort": [
        {"dtCreated": "desc"}
      ]
    };

    final lists = await listFilter('/afada_bookmarks/_search', bodyJSON);
    return lists.map((jsonList) {
      return BookmarkDto.fromJson(jsonList['_source']).toDomain();
    }).toList();
  }

  Future<void> insert({required Bookmark item}) async {
    final bookmark = item.toDto();
    await insertFb(instance: _instance, path: MENU_POS, item: bookmark);
  }

  Future<void> delete({required String postId, required String uid}) async {
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

  Future<Bookmark?> read({required String id}) async {
    final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

    if (_item == null) {
      throw Exception('error');
    }
    final info = BookmarkDto.fromJson(_item).toDomain();
    return info;
  }
}
