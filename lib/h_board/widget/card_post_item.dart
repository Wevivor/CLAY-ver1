// import 'package:clay/c_config/config.dart';
// import 'package:clay/c_globals/helper/helpers.dart';
// import 'package:clay/c_globals/widgets/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// class PostItemCard extends StatelessWidget {
//   String? imgUrl;
//   String? category;
//   String? title;
//   String? holder;
//   bool isFavor;
//   int cntFavor;
//   Function? onTap;
//   Function? onMore;
//   static String stand_stock_image = '';

//   PostItemCard({
//     this.imgUrl,
//     this.holder,
//     this.category,
//     this.title,
//     required this.isFavor,
//     this.cntFavor = 0,
//     this.onTap,
//     this.onMore,
//   });
//   final contentStyle = TextStyle(
//     fontSize: 13,
//     color: Color(0xFF676767),
//     fontWeight: FontWeight.normal,
//     height: 1.2,
//     letterSpacing: 0.05,
//   );
//   @override
//   Widget build(BuildContext context) {
//     var holder = '';
//     switch (category) {
//       case '업무':
//         holder = 'icon/pencil_small.png';
//         break;
//       case '계발':
//         holder = 'icon/medal_small.png';
//         break;
//       case '좋아':
//         holder = 'icon/hart_small.png';
//         break;
//     }

//     return InkWell(
//       onTap: () {
//         if (onTap != null) onTap!();
//       },
//       child: Container(
//         constraints: BoxConstraints.expand(),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Container(
//                 decoration: DecoHelper.roundDeco.copyWith(
//                   shape: BoxShape.rectangle,
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   border: Border.all(width: 1, color: Color(0xFFC1C1C1)),
//                   image: DecorationImage(
//                     fit: BoxFit.fill,
//                     image: Image.network(
//                       imgUrl ?? '$stand_stock_image',
//                     ).image,
//                   ),
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 if (category != null)
//                   Container(
//                     width: 13,
//                     height: 13,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(14),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Color.fromRGBO(0, 0, 0, 0.1),
//                           blurRadius: 10.0,
//                           offset: Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     child: Image.asset(Const.assets + holder),
//                   ),
//                 widthSpace(4.0),
//                 Text(
//                   title ?? '',
//                   style: contentStyle,
//                   overflow: TextOverflow.ellipsis,
//                   maxLines: 1,
//                 ),
//                 Expanded(
//                   child: Container(),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     if (onMore != null) onMore!();
//                   },
//                   child: Container(
//                     width: 22,
//                     alignment: Alignment.bottomRight,
//                     child: Image.asset(
//                       Const.assets + 'icon/dot_vertical_black.png',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
