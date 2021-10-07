import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PushAlarmController extends GetxController {
  String path = '';
  PushAlarmController(this.path);

  bool _isAlert = true;
  static PushAlarmController get to => Get.find();

  bool get isAlert => _isAlert;

  setAlert(bool value) async {
    _isAlert = value;
    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection('$path');

    final _uid = FirebaseAuth.instance.currentUser?.uid;
    await _collectionRef.doc(_uid).update({'isPush': _isAlert});

    update();
  }

  Future<bool> readAlert() async {
    final _uid = FirebaseAuth.instance.currentUser?.uid;
    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection('$path');
    var docSnapshot = await _collectionRef.doc(_uid).get();

    if (docSnapshot.exists) {
      final item = docSnapshot.data() as Map<String, dynamic>;
      if (item != null) {
        _isAlert = item['isPush'];
        update();
        return _isAlert;
      }
    }
    update();
    return false;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
