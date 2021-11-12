import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AlarmController extends GetxController {
  AlarmController();

  bool _isAlert = true;
  static AlarmController get to => Get.find();

  bool get isAlert => _isAlert;

  set isAlert(bool value) => _isAlert =value;

  // Future<bool> readAlert() async {
  //   final _uid = FirebaseAuth.instance.currentUser?.uid;
  //   CollectionReference _collectionRef =
  //       FirebaseFirestore.instance.collection('$path');
  //   var docSnapshot = await _collectionRef.doc(_uid).get();
  //
  //   if (docSnapshot.exists) {
  //     final item = docSnapshot.data() as Map<String, dynamic>;
  //     if (item != null) {
  //       _isAlert = item['isPush'];
  //       update();
  //       return _isAlert;
  //     }
  //   }
  //   update();
  //   return false;
  // }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
