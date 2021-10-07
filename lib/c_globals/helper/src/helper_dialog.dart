import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DialogHelper {
  DialogHelper._();

  static Future<void> exitDialog(
      BuildContext context, String title, String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: title.isEmpty ? null : Text(title),
          // title: null,
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Center(child: Text(message)),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('아니오'),
              onPressed: () {
                Get.back();
              },
            ),
            TextButton(
              child: Text('종료'),
              onPressed: () {
                SystemNavigator.pop(); //종
              },
            ),
          ],
        );
      },
    );
  }

  static Future<void> okCancleDialog(
    BuildContext context,
    Widget Function(BuildContext) builder,
  ) async {
    await showDialog<void>(context: context, builder: builder);
    return;
  }

  static Future<void> MessageDialog(
    BuildContext context,
    Widget Function(BuildContext) builder,
  ) async {
    await showDialog<void>(context: context, builder: builder);
    return;
  }

  Widget vwTitle(final title, TextStyle style) {
    return Container(
      alignment: Alignment.center,
      child: Text(title, style: style),
    );
  }
}
