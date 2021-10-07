import 'package:clay/c_config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../c_globals/helper/src/helper_appbar.dart';

// ignore: must_be_immutable
class UnknownUI extends StatelessWidget with AppbarHelper {
  UnknownUI();

  Widget build(BuildContext context) {
    MySize().init(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('오류'),
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: Text('알수 없은 페이지 입니다.!'),
            ),
            // vwAppbarPosition(themeData, context),
          ],
        ),
      ),
    );
  }
}
