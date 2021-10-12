import 'package:clay/controllers/common/commons.dart';

class FbProfileModule extends FbCommonModule {
  Future<List<dynamic>> listProductInfoFb({
    required final instance,
    required String path,
    required String uid,
  }) async {
    final _collectionRef = instance.collection('$path');

    final querySnap = await _collectionRef
        .where('profile.uid', isEqualTo: uid)
        .orderBy('dtCreated', descending: true)
        .get();

    List<dynamic> _tmp = [];
    querySnap.docs.forEach((doc) {
      final data = doc.data();

      _tmp.add(data['info']);
    });
    return _tmp;
  }
}
