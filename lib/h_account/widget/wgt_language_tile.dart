import 'dart:io';

import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageTileWidget extends StatefulWidget {
  final title;
  final selected;
  final icon;
  final padding;
  Function? onTap;
  LanguageTileWidget({
    this.icon,
    this.onTap,
    this.selected,
    this.title,
    this.padding,
  });
  @override
  _LanguageTileWidgetState createState() => _LanguageTileWidgetState();
}

class _LanguageTileWidgetState extends State<LanguageTileWidget> {
  bool _isDown = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    final listTytleStyle_ko = baseStyle.copyWith(
      fontFamily: 'Roboto',
      fontSize: 13,
      color: Color(0xFF353535),
      fontWeight: FontWeight.w500,
      height: 1.17, // 15.23px
    );
    final listTytleStyle_eng = baseStyle.copyWith(
      fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
      fontSize: 13,
      color: Color(0xFF353535),
      fontWeight: FontWeight.w500,
      height:
          Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 15.23px, 17.76px
    );
    return GestureDetector(
      onTapDown: (detail) {
        setState(() {
          _isDown = true;
        });
      },
      onTapCancel: () {
        setState(() {
          _isDown = false;
        });
      },
      onTapUp: (detail) {
        setState(() {
          _isDown = false;
        });

        if (widget.onTap != null) widget.onTap!();
      },
      child: Container(
        padding: widget.padding,
        decoration: _isDown ? BoxDecoration(color: Color(0xFFF6F6F6)) : null,
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            widget.title,
            style:
                widget.title == '한국어' ? listTytleStyle_ko : listTytleStyle_eng,
          ),
          trailing: widget.selected
              ? Icon(Icons.check, color: Color(0xff017BFE))
              // : SizedBox.shrink(),
              : null,
        ),
      ),
    );
  }
}
