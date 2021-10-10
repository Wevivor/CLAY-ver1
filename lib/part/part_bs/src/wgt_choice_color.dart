// 13-1 Bottom Sheet : Board Color 선택하기
//

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class BSChoiceColor extends StatelessWidget {
  BSChoiceColor();
  final bottomSheetTitle = TextStyle(
    fontSize: 18,
    color: Color(0xFF000000),
    fontWeight: FontWeight.bold,
  );
  final doneBtnStyle = TextStyle(
    fontSize: 14,
    color: Color(0xFF017bfe),
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Divider(height: 1),
          Container(
            padding: EdgeInsets.only(left: 0, right: 0, top: 19, bottom: 15),
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BSChoiceColorWidget(
                      boardColor: Color(0xFFfc5e20),
                    ),
                    BSChoiceColorWidget(
                      boardColor: Color(0xFFffc700),
                    ),
                    BSChoiceColorWidget(
                      boardColor: Color(0xFF159b4d),
                    ),
                    BSChoiceColorWidget(
                      boardColor: Color(0xFF1b9dfc),
                    ),
                    BSChoiceColorWidget(
                      boardColor: Color(0xFF9a71bb),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BSChoiceColorWidget(
                      boardColor: Color(0xFFff78d9),
                    ),
                    BSChoiceColorWidget(
                      boardColor: Color(0xFFcaf2ff),
                    ),
                    BSChoiceColorWidget(
                      boardColor: Color(0xFF9dffd0),
                    ),
                    BSChoiceColorWidget(
                      boardColor: Color(0xFFc1a27c),
                    ),
                    BSChoiceColorWidget(
                      boardColor: Color(0xFFfff1a7),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// // Bottom Sheet 상단 타이틀
// Widget bsTitle() {
//   return Container(
//     padding: EdgeInsets.only(left: 0, right: 0, top: 14, bottom: 13.5),
//     child: Row(
//       children: <Widget>[
//         Expanded(
//           child: Stack(
//             children: [
//               Container(
//                 alignment: Alignment.topCenter,
//                 child: Text(
//                   '색상 선택',
//                   style: bottomSheetTitle,
//                 ),
//               ),
//               Positioned(
//                 right: 0,
//                 top: -13,
//                 // TODO : [SH] 완료 버튼 작업
//                 child: TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     '완료',
//                     style: doneBtnStyle,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Color

class BSChoiceColorWidget extends StatelessWidget {
  final Color? boardColor;
  final onTap;
  BSChoiceColorWidget({
    this.onTap,
    this.boardColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 0, right: 15, top: 0, bottom: 10),
      child: InkWell(
        onTap: () {
          if (this.onTap != null) onTap();
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: boardColor,
          ),
        ),
      ),
    );
  }
}
