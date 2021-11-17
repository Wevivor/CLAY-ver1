import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_account/models/users/users.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fb_auth_module.dart';

class LoginController extends GetxController with FbAuthModule, Validator {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pswdController = TextEditingController();
  RxBool pswdVisible = true.obs;
  RxBool isSave = false.obs;
  RxInt index = 0.obs;
  RxBool isLoginSuccess = true.obs;

  bool isLoading = false;
  Profile? _profile;
  static LoginController get to => Get.find();
  Profile? get profile => _profile;
  set profile(Profile? value) => _profile = value;

  LoginController() {}

  RxBool isEditComplete = false.obs;

  ///==================================
  ////이메일 검증
  ///==================================
  RxBool isEmailError = false.obs;
  String? strEmailError = null;
  void onEmailFocus(bool hasFocus) {
    if (!hasFocus) {
      final _valid = email(emailController.text);
      strEmailError = _valid;
      if (_valid != null) {
        isEmailError.value = true;
      } else
        isEmailError.value = false;
    } else {
      isEmailError.value = false;
    }
  }

  void onEmailChanged(value) {
    if (!isEditComplete.value) {
      strEmailError = null;
      isEmailError.value = false;
    } else {
      isEditComplete.value = false;
    }
  }

  void onEmailSubmitted(value) {
    // isEditComplete = true;
    strEmailError = email(value);
    strEmailError != null
        ? isEmailError.value = true
        : isEmailError.value = false;
  }

  ///==================================
  ///비밀번호 01
  ///==================================
  RxBool isPswdError = false.obs;
  String? strPswdError = null;
  void onPswd01Focus(bool hasFocus) {
    if (!hasFocus) {
      final _valid = password(pswdController.text);
      strPswdError = _valid;
      if (_valid != null) {
        isPswdError.value = true;
      } else
        isPswdError.value = false;
    } else {
      isPswdError.value = false;
    }
  }

  void onPswd01Changed(value) {
    if (!isEditComplete.value) {
      strPswdError = null;
      isPswdError.value = false;
    } else {
      isEditComplete.value = false;
    }
  }

  void onPswd01Submitted(value) {
    // isEditComplete = true;
    strPswdError = password(value);
    strPswdError != null ? isPswdError.value = true : isPswdError.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    // AuthController.to.stateChanged();
  }

  @override
  void onClose() {
    emailController.dispose();
    pswdController.dispose();

    super.onClose();
  }

  Future<dynamic?> actionCredntial() async {
    if (GetPlatform.isAndroid) {
      try {
        GoogleSignInAccount _googleAccount = await credntialWithGoogle();

        return _googleAccount;
      } on FirebaseAuthException catch (e) {
        if (['user-cancelled', 'user-not-found'].contains(e.code)) {
          AppHelper.showMessage(ExceptionMessages.messages(e.code));
        }
      }
    }
    return null;
  }
}
