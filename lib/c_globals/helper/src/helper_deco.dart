import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';

class DecoHelper {
  DecoHelper._();

  static final BoxDecoration cicleDeco = BoxDecoration(
    // color: circleColor == null
    // ? Color(0xFFC1C1C1)
    //     : GlobalStyle.primary,
    shape: BoxShape.circle,
    border: Border.all(width: 1, color: Colors.black54),
  );
  static final BoxDecoration roundDeco = BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    // border: Border.all(width: 1, color: Color(0xFFC1C1C1)),
  );

  ///---------------------------------------------------
  /// profile >마이 모으다
  /// -------------------------------------------------

  static final BoxDecoration underlineDeco = BoxDecoration(
    shape: BoxShape.rectangle,
    border: Border(
      bottom: BorderSide(width: 1.0, color: Color(0xFFE3E3E3)),
    ),
  );

  ///---------------------------------------------------
  /// chat>Write
  /// -------------------------------------------------

  static final OutlineInputBorder inputDeco = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide(color: Color(0xFFB0B3C1)));

  // Radius 4 사각형,
  static final BoxDecoration squareRadius4 = BoxDecoration(
    color: Color(0xFFFFFFFF),
    borderRadius: BorderRadius.circular(4),
    border: Border.all(
      width: 1.0,
      color: Color(0xFFC6C6C6),
    ),
  );

  // Radius 4 사각형배경을 넣기 위한 투명 배경색, border 없음.
  static final BoxDecoration squareTrans = BoxDecoration(
    color: Color(0x00FFFFFF),
    borderRadius: BorderRadius.circular(20),
  );
}
