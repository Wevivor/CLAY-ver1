import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    try {
      var login = RouteSettings(name: '/login');

      final _user = FirebaseAuth.instance.currentUser;
      debugPrint('[AuthMiddleWare]:[email]${_user?.email}');
      if (_user != null) _actionReadUserInfo(_user);

      return _user == null ? login : null;
    } catch (e) {}
  }

  _actionReadUserInfo(user) async {
    await HanUserInfoController.to.actionRead(AuthController.to.getUser);
  }

  @override
  void onPageDispose() {}

  @override
  Widget onPageBuilt(Widget page) {
    return page;
  }
}
