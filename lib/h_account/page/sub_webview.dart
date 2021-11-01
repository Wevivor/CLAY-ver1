import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';

import 'part_webview.dart';

// ignore: must_be_immutable
class WebviewSUB extends StatelessWidget with AppbarHelper {
  final title;
  final url;
  WebviewSUB({this.title, this.url});
  @override
  Widget build(BuildContext context) {
    return title != null
        ? Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(title, style: appBarStyle),
            ),
            body:
                /*--------------- Build Tab body here -------------------*/
                WebviewPART(url),
          )
        : Scaffold(
            appBar: null,
            body:
                /*--------------- Build Tab body here -------------------*/
                Column(
              children: [
                heightSpace(MySize.paddingTop ?? 24.0),
                Flexible(child: WebviewPART(url)),
              ],
            ),
          );
  }
}
