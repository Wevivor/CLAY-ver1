import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';

class DecoInputHelper {
  DecoInputHelper._();

  static InputDecoration inputDecoration(
      {String? hint,
      dynamic? prefix,
      dynamic? suffix,
      String? label,
      OutlineInputBorder? border,
      TextStyle? hintStyle,
      Color? fillColor}) {
    return InputDecoration(
      hintText: hint,
      hintStyle: hintStyle,
      enabledBorder: border,
      focusedBorder: border,
      filled: false,
      counterText: '', //
      fillColor: fillColor,
      prefixIcon: prefix != null
          ? Image.asset(
              prefix,
              height: 24,
              width: 24,
            )
          : null,
      suffixIcon: suffix != null
          ? Image.asset(
              suffix,
              height: 24,
              width: 24,
            )
          : null,

      isDense: true,
      // contentPadding: EdgeInsets.all(5.0),
    );
  }

  static InputDecoration insNoHintDecoration(String hint, {bool dense = true}) {
    return InputDecoration(
      hintText: hint,
      labelText: '',
      hintStyle: baseStyle.copyWith(
          fontSize: 14, color: Color(0xFF9A9A9A), fontWeight: FontWeight.normal
          // backgroundColor: GlobalStyle.bg,
          ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          borderSide: BorderSide.none),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          borderSide: BorderSide.none),
      filled: false,
      isDense: dense,
      contentPadding: EdgeInsets.all(14.0),
      counterText: '',
    );
  }

  static InputDecoration noBorderDecoration(
      {String? hint,
      String? label,
      TextStyle? hintStyle,
      bool dense = false,
      Color? fillColor}) {
    return InputDecoration(
      hintText: hint,
      labelText: '',
      hintStyle: baseStyle.copyWith(
          fontSize: 14, color: Color(0xFF9A9A9A), fontWeight: FontWeight.normal
          // backgroundColor: GlobalStyle.bg,
          ),
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      filled: false,
      isDense: dense,
      contentPadding: EdgeInsets.all(14.0),
      counterText: '',
    );
  }

  // static InputDecoration underlineDecoration(
  //     {String? hint,
  //     String? label,
  //     TextStyle? hintStyle,
  //     bool dense = false,
  //     Color? fillColor}) {
  //   return InputDecoration(
  //     hintText: hint,
  //     labelText: '',
  //     hintStyle: baseStyle.copyWith(
  //         fontSize: 14, color: Color(0xFF9A9A9A), fontWeight: FontWeight.normal
  //         // backgroundColor: GlobalStyle.bg,
  //         ),
  //     border: InputBorder.none,
  //     focusedBorder: InputBorder.none,
  //     enabledBorder: InputBorder.none,
  //     errorBorder: InputBorder.none,
  //     disabledBorder: InputBorder.none,
  //     filled: false,
  //     isDense: dense,
  //     contentPadding: EdgeInsets.all(14.0),
  //     counterText: '',
  //   );
  // }
}

const kInputDecoration = InputDecoration(
  hintText: 'example@email.com',
  icon: null,
  labelText: null,
  labelStyle: TextStyle(color: Colors.green),
  border: InputBorder.none,
  focusedBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
);
const kRegisterDecoration = InputDecoration(
  hintText: 'example@email.com',
  hintStyle: TextStyle(
    fontFamily: 'NotoSans',
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Color(0xFFABABAB),
  ),
  icon: null,
  labelText: null,
  labelStyle: TextStyle(color: Colors.green),
  border: UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFEEEEEE)),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFEEEEEE)),
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFEEEEEE)),
  ),
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
  fillColor: Colors.black12,
  filled: false,
  isDense: false,
  counterText: "",
);
const kPswdDecoration = InputDecoration(
  hintText: 'example@email.com',
  hintStyle: TextStyle(
    fontFamily: 'NotoSans',
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Color(0xFFABABAB),
  ),
  icon: null,
  labelText: null,
  labelStyle: TextStyle(color: Colors.green),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFDDDDDD)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFDDDDDD)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFDDDDDD)),
  ),
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
  fillColor: Colors.black12,
  filled: false,
  isDense: false,
  counterText: "",
);
const kChatFindDecoration = InputDecoration(
  hintText: 'example@email.com',
  hintStyle: TextStyle(
    fontFamily: 'NotoSans',
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Color(0xFFABABAB),
  ),
  icon: null,
  labelText: null,
  labelStyle: TextStyle(color: Colors.green),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(25.0),
    ),
    borderSide: BorderSide(color: Color(0xFFDDDDDD)),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(25.0),
    ),
    borderSide: BorderSide(color: Color(0xFFDDDDDD)),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(25.0),
    ),
    borderSide: BorderSide(color: Color(0xFFDDDDDD)),
  ),
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
  fillColor: Colors.black12,
  filled: false,
  isDense: false,
  counterText: "",
);
