import 'package:clay/c_config/config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ShareController extends GetxController {
  bool isShare = false;

  ShareController() {}

  static ShareController get to => Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
