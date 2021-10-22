import 'package:clay/c_config/config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ShareController extends GetxController {
  RxBool isShare = false.obs;

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
