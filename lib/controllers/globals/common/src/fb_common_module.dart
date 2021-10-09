import 'package:clay/c_config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clay/models/models.dart';

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
      // if (Const.isTest) {
      //   docRef = instance.collection('$path').doc(item.id);
      //   newItem = item;
      // } else {
      docRef = instance.collection('$path').doc();
      // newItem = item.copyWith.info(id: docRef.id);
      //TODO 여러가지의 경우 info 인지 아닌지?
      newItem = item.copyWith(id: docRef.id);
      // }
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
      print('--------------readFb:---------------> ');
      var docSnapshot = await instance.collection(path).doc(id).get();

      print('--------------readFb:---------------> ${docSnapshot.toString()}');

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
}