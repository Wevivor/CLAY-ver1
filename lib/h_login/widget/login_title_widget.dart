import 'package:flutter/material.dart';
import 'package:clay/c_config/config.dart';

class LoginTitleWidget extends StatelessWidget {
  final ThemeData themeData;
  LoginTitleWidget(
    this.themeData,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/img/logo.png', width: 142, height: 48.0),
        // Container(
        //   alignment: Alignment.center,
        //   child: Text(
        //     "Caly",
        //     style: baseStyle.copyWith(
        //         fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600),
        //   ),
        // ),
        // heightSpace(10.0),
        // Container(
        //   child: Center(
        //     child: Text(
        //       "오신 것을 환영 합니다!",
        //       style: baseStyle.copyWith(
        //           fontSize: 20,
        //           color: Colors.black,
        //           fontWeight: FontWeight.w600),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
