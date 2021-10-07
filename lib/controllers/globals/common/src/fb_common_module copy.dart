// import 'package:firebase_database/firebase_database.dart';
// import 'package:clay/c_config/config.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class FbCommonModule {
//   Future<List<dynamic>> listFb({
//     required final FirebaseDatabase instance,
//     required String path,
//   }) async {
//     // final _collectionRef = instance.collection('$path');
//     final _collectionRef = instance.reference().child('$path');

//     // final querySnap = await _collectionRef.orderByChild('dtCreated').get();

//     List<dynamic> _tmp = [];
//     // querySnap.docs.forEach((doc) {
//     //   _tmp.add(doc.data());
//     // });
//     return _tmp;
//   }

//   Future<void> addFb(
//       {required FirebaseDatabase instance,
//       required String path,
//       dynamic item}) async {
//     try {
//       var docRef;
//       var newItem;
//       // if (Const.isTest) {
//       //   docRef = instance.reference().child('$path');
//       //   // docRef = instance.collection('$path');
//       // } else {
//       docRef = instance.reference().child('$path');
//       // final docRef = instance.collection('$path');
//       // }
//       newItem = item;
//       // await instance.collection('$path').add(newItem.toJson());
//       await instance.reference().child('$path').push().set(newItem.toJson());
//     } catch (e) {
//       print('===>' + e.toString());
//       throw e;
//     }
//   }

//   Future<void> insertFb(
//       {required FirebaseDatabase instance,
//       required String path,
//       dynamic item}) async {
//     try {
//       var docRef;
//       var newItem;
//       docRef = instance.reference().child('$path').push();
//       // newItem = item.copyWith.info(id: docRef.id);
//       //TODO 여러가지의 경우 info 인지 아닌지?
//       newItem = item.copyWith(id: docRef.id);
//       await docRef.set(newItem.toJson(), SetOptions(merge: true));
//     } catch (e) {
//       print('===>' + e.toString());
//       throw e;
//     }
//   }

//   Future<void> deleteFb({
//     required FirebaseDatabase instance,
//     required String path,
//     required String id,
//   }) async {
//     try {
//       var doc = await instance.reference().child('$path').remove();
//       // if (doc.exists) {
//       //   doc.reference.delete();
//       // }
//     } catch (e) {
//       print('===>' + e.toString());
//       throw e;
//     }
//   }

//   Future<dynamic> readFb({
//     required FirebaseDatabase instance,
//     required String path,
//     required String id,
//   }) async {
//     try {
//       print('--------------readFb:---------------> ');
//       var docSnapshot = await instance.reference().child(path).get();

//       print('--------------readFb:---------------> ${docSnapshot.toString()}');

//       // if (docSnapshot.exists) {
//       //   final item = docSnapshot.data();
//       //   if (item != null) return item;
//       // }
//       return null;
//     } catch (e) {
//       print('===>' + e.toString());
//       throw e;
//     }
//   }

//   Future<void> updateFb(
//       {required FirebaseDatabase instance,
//       required String path,
//       required String id,
//       dynamic dto}) async {
//     try {
//       await instance.reference().child('$path').update(dto.toJson());
//     } catch (e) {
//       print('===>' + e.toString());
//       throw e;
//     }
//   }

//   Future<void> updateListCntFb(
//       {required FirebaseDatabase instance,
//       required String path,
//       required String id,
//       dynamic dto}) async {
//     try {
//       await instance.reference().child('$path').update({'bookmark': dto});
//       // await instance.collection('$path').doc(id).update({'bookmark': dto});
//     } catch (e) {
//       print('===>' + e.toString());
//       throw e;
//     }
//   }

//   Future<bool> isExistQuery({
//     required FirebaseDatabase instance,
//     required String path,
//     required String target,
//     required String source,
//   }) async {
//     try {
//       // final _collRef = instance.reference().child(path);
//       // final result =
//       //     await _collRef.orderByChild(target).equalTo(source).limitToFirst(1);
//       // final tmp = await result.get();
//       final db = instance.reference();
//       final users = db.child(path);
//       final query = users.orderByChild(target).equalTo(source).limitToFirst(1);
//       final tmp = await query.get();

//       if (tmp.exists) return true;
//       return false;
//     } catch (e) {
//       throw e;
//     }
//   }
// }
