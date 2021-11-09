import 'package:android_intent/android_intent.dart';
import 'package:android_intent/flag.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

class AppHelper {
  AppHelper._();
  static Future<PackageInfo?> getPackageInfo() async {
    PackageInfo info = await PackageInfo.fromPlatform();
    // String appName = info.appName;
    // String packageName = info.packageName;
    // String version = info.version;
    // String buildNumber = info.buildNumber;
    return info;
  }

  //toast 메시지 사용
  static void showMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor: Colors.black38,
        textColor: Colors.white,
        fontSize: 11.0);
  }

  //외부 앱 실행 시킬때 필요함
  static launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static launchEmail(String host) async {
    if (GetPlatform.isAndroid) {
      AndroidIntent intent = AndroidIntent(
        action: 'android.intent.action.MAIN',
        category: 'android.intent.category.APP_EMAIL',
        flags: [Flag.FLAG_ACTIVITY_NEW_TASK],
      );
      intent.launch().catchError((e) {
        print(e);
      });
    } else if (GetPlatform.isIOS) {
      launch("message://").catchError((e) {
        ;
      });
    }
  }

  static String dateDiff(DateTime? dateItem) {
    final diff = Jiffy(dateItem).fromNow();
    return diff;
  }

  static void goto(String route) {
    if (AuthController.to.getUser != null)
      Get.offNamed(route);
    else
      Get.offNamed('/login');
  }
}
