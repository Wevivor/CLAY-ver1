// import 'package:clay/c_config/config.dart';
// import 'package:clay/c_globals/helper/helpers.dart';
// import 'package:clay/controllers/app/apps.dart';
// import 'package:clay/controllers/controllers.dart';
// import 'package:clay/part/part_write/part_write.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// import 'package:get/get.dart';

// import 'tile_han_multi_search.dart';

// // ignore: must_be_immutable
// class PostSearchPART extends StatefulWidget {
//   final onTap;
//   PostSearchPART({this.onTap});
//   @override
//   _PostSearchPARTState createState() => _PostSearchPARTState();
// }

// class _PostSearchPARTState extends State<PostSearchPART>
//     with AppbarHelper, SingleTickerProviderStateMixin {
//   @override
//   void initState() {
//     super.initState();
//     // final _profileController = Get.put(
//     //   ProfileListController(),
//     // );
//     // _profileController.fetchItems();
//     // Get.put(
//     //   PostProductListController(),
//     // );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final controller = SearchDlgController.to;

//     return Material(
//       child: Center(
//         child: Container(
//           height: 300 + 114,
//           width: MySize.safeWidth - 25 * 2,
//           margin: const EdgeInsets.only(
//             left: 25.0,
//             right: 25.0,
//           ),
//           padding: const EdgeInsets.only(
//             top: 30,
//             bottom: 20,
//             left: 25.0,
//             right: 25.0,
//           ),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.all(
//               Radius.circular(24),
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Color.fromRGBO(97, 97, 97, 0.14),
//                 blurRadius: 8,
//                 offset: Offset(0, 4), // changes position of shadow
//               ),
//             ],
//           ),
//           child: Stack(
//             children: <Widget>[
//               Positioned(
//                 top: (40 + 29) * 2 + 40 + 9 + 30,
//                 right: 0,
//                 child: vwButton(),
//               ),
//               HanMultiSearchWidget(
//                 y: (40 + 29) * 2,
//                 controller: controller.directController,
//                 kind: 3,
//                 title: '직접 입력',
//                 isSearch: false,
//               ),
//               Positioned(
//                 top: (40 + 29) * 2 + 40 + 9,
//                 child: Text('ex) 브랜드/상품명/가격',
//                     style: baseStyle.copyWith(
//                         fontSize: 12,
//                         color: Color(0xFF828282),
//                         fontWeight: FontWeight.normal)),
//               ),

//               HanMultiSearchWidget(
//                 y: (40 + 29) * 1,
//                 kind: 2,
//                 controller: controller.productController,
//                 title: '상품명',
//                 onTap: (value) {
//                   SearchDlgController.to.product = value;
//                 },
//                 onSubmit: (value) async {
//                   // PostProductListController.to.cache = [];
//                   // await PostProductListController.to
//                   //     .fetchItems(nextId: 0, term: value);
//                 },
//               ),

//               HanMultiSearchWidget(
//                 y: 0,
//                 kind: 1,
//                 controller: controller.blandController,
//                 title: '브랜드',
//                 onTap: (value) {
//                   SearchDlgController.to.supplyer = value;
//                 },
//                 onSubmit: (value) async {
//                   // ProfileListController.to.cache = [];
//                   // await ProfileListController.to
//                   //     .fetchBlands(nextId: 0, term: value);
//                 },
//               ),
//               // vwResult(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget vwButton() {
//     return Container(
//       alignment: Alignment.centerRight,
//       child: Container(
//         width: 50,
//         alignment: Alignment.center,

//         // padding: EdgeInsets.symmetric(vertical: 5),

//         decoration: DecoHelper.roundGrDeco.copyWith(
//           gradient: gradientReverse,
//           // color: Color(0xFFE0E0E0),
//           border: Border(),
//           borderRadius: BorderRadius.all(Radius.circular(12)),
//         ),
//         // alignment: Alignment.center,
//         child: Container(
//           height: 30,
//           child: TextButton(
//             style: ButtonStyle(
//               backgroundColor:
//                   MaterialStateProperty.resolveWith(getButtonColor),
//             ),
//             onPressed: () async {
//               if (widget.onTap != null) widget.onTap();
//             },
//             child: Text(
//               '완료',
//               style: baseStyle.copyWith(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w700,
//                   color: Color(0xFFFFFFFF)),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
