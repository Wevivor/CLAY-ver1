import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    try {
      var login = RouteSettings(name: '/login');

      final _user = FirebaseAuth.instance.currentUser;
      print('===========${_user?.email}');
      return _user == null ? login : null;
    } catch (e) {}
  }

  @override
  void onPageDispose() {}

  @override
  Widget onPageBuilt(Widget page) {
    return page;
  }
}
