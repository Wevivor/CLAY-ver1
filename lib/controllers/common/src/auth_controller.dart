import 'package:clay/c_config/config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'fb_auth_module.dart';

class AuthController extends GetxController with FbAuthModule {
  RxBool isLoading = false.obs;
  final RxBool admin = false.obs;

  AuthController() {}

  static AuthController get to => Get.find();

  User? get getUser => FirebaseAuth.instance.currentUser;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
