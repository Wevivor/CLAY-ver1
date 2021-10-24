import 'package:clay/c_config/config.dart';
import 'package:clay/h_search/part_search/models/search_keyword_list.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class FbSearchHistoryModule {
  ///도큐먼트 안의 리스트에 아이템을 입력하기 위함.

  Future<void> insertFbByList(
      {required FirebaseFirestore instance,
      required String path,
      required dynamic item}) async {
    try {
      var docRef;
      var newItem;
      // if (Const.isTest) {
      //   docRef = instance.collection('$path').doc(item.strUid);
      //   newItem = item;
      // } else {
      docRef = instance.collection('$path').doc(item.strUid);
      newItem = item.copyWith();
      // }
      await docRef.set(newItem, SetOptions(merge: true));

      // newItem = item;

    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }
}
