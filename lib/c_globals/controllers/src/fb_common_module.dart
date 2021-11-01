import 'package:clay/c_config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FbCommonModule {
  Future<List<dynamic>> listFb({
    required final instance,
    required String path,
  }) async {
    final _collectionRef = instance.collection('$path');

    final querySnap =
        await _collectionRef.orderBy('dtCreated', descending: true).get();

    List<dynamic> _tmp = [];
    querySnap.docs.forEach((doc) {
      _tmp.add(doc.data());
    });
    return _tmp;
  }

  Future<void> addFb(
      {required FirebaseFirestore instance,
      required String path,
      dynamic item}) async {
    try {
      // var docRef;
      var newItem;
      // if (Const.isTest) {
      //   docRef = instance.collection('$path');
      // } else {
      final docRef = instance.collection('$path');
      // newItem = item.copyWith(id: docRef.id);
      // }
      newItem = item;
      await instance.collection('$path').add(newItem.toJson());
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<void> insertFb(
      {required FirebaseFirestore instance,
      required String path,
      dynamic item}) async {
    try {
      var docRef;
      var newItem;
      docRef = instance.collection('$path').doc();
      //TODO 여러가지의 경우 info 인지 아닌지?
      newItem =
          item.copyWith(id: docRef.id, info: item.info.copyWith(id: docRef.id));
      await docRef.set(newItem.toJson(), SetOptions(merge: true));
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<void> deleteFb({
    required FirebaseFirestore instance,
    required String path,
    required String id,
  }) async {
    try {
      var doc = await instance.collection('$path').doc(id).get();
      if (doc.exists) {
        doc.reference.delete();
      }
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<dynamic> readFb({
    required FirebaseFirestore instance,
    required String path,
    required String id,
  }) async {
    try {
      debugPrint('--------------readFb:---------------> ');
      var docSnapshot = await instance.collection(path).doc(id).get();

      debugPrint(
          '--------------readFb:---------------> ${docSnapshot.toString()}');

      if (docSnapshot.exists) {
        final item = docSnapshot.data();
        if (item != null) return item;
      }
      return null;
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<void> updateFb(
      {required FirebaseFirestore instance,
      required String path,
      required String id,
      dynamic dto}) async {
    try {
      await instance.collection('$path').doc(id).update(dto.toJson());
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<void> setFb(
      {required FirebaseFirestore instance,
      required String path,
      required String id,
      dynamic dto}) async {
    try {
      await instance.collection('$path').doc(id).set(
            dto,
          );
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<void> updateInfoFb(
      {required FirebaseFirestore instance,
      required String path,
      required String id,
      dynamic info}) async {
    try {
      await instance.collection('$path').doc(id).update(info);
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<void> updateListCntFb(
      {required FirebaseFirestore instance,
      required String path,
      required String id,
      dynamic dto}) async {
    try {
      await instance.collection('$path').doc(id).update({'bookmark': dto});
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<bool> isExistQuery({
    required FirebaseFirestore instance,
    required String path,
    required String target,
    required String source,
  }) async {
    try {
      CollectionReference _collRef = instance.collection(path);
      QuerySnapshot result =
          await _collRef.where(target, isEqualTo: source).get();
      final tmp = result.docs.isNotEmpty;
      return tmp;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> existQuery({
    required FirebaseFirestore instance,
    required String path,
    required String target,
    required String source,
  }) async {
    try {
      CollectionReference _collRef = instance.collection(path);
      QuerySnapshot result =
          await _collRef.where(target, isEqualTo: source).get();

      var item;
      final tmp = result.docs.isNotEmpty;
      if (tmp) {
        result.docs.forEach((element) {
          item = element.data();
        });
        return item;
      }

      return null;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> existQueryByEmail({
    required FirebaseFirestore instance,
    required String path,
    required String email,
    required String source,
    String? snsLogin,
  }) async {
    try {
      CollectionReference _collRef = instance.collection(path);
      QuerySnapshot result = await _collRef
          .where(email, isEqualTo: source)
          .where('sns_loging', isNotEqualTo: snsLogin)
          .get();

      var item;
      final tmp = result.docs.isNotEmpty;
      if (tmp) {
        result.docs.forEach((element) {
          item = element.data();
        });
        return item;
      }

      return null;
    } catch (e) {
      throw e;
    }
  }
}
