// // ignore: must_be_immutable
// import 'package:clay/c_config/config.dart';
// import 'package:clay/c_config/libarays.dart';
// import 'package:clay/c_globals/helper/helpers.dart';
// import 'package:clay/c_globals/widgets/widgets.dart';
// import 'package:get/get.dart';

// class BSMenuAdd extends StatelessWidget with AppbarHelper {
//   final onNew;
//   final onLink;
//   final onMemo;
//   final onPhoto;

//   BSMenuAdd({this.onNew, this.onLink, this.onPhoto, this.onMemo});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: new BoxDecoration(
//           color: Colors.white,
//           borderRadius: new BorderRadius.only(
//               topLeft: Radius.circular(16), topRight: Radius.circular(16))),
//       child: vwBoardMenu(context),
//     );
//   }

//   // Widget vwTmp(BuildContext context) {
//   //   return Column(
//   //     mainAxisSize: MainAxisSize.min,
//   //     children: <Widget>[
//   //       heightSpace(2.0),
//   //       Container(
//   //           alignment: Alignment.bottomCenter,
//   //           height: 11,
//   //           child: Image.asset(Const.assets + 'images/rect_40.png')),
//   //       vwBSAppBar(
//   //         onBack: () {
//   //           Get.back();
//   //           if (onNew != null) onNew();
//   //           // _showBS(context, vwBoardMenu(context));
//   //         },
//   //         title: '보드 만들기',
//   //         actions: [
//   //           Container(
//   //             alignment: Alignment.center,
//   //             // color: Colors.red,
//   //             child: InkWell(
//   //               onTap: () {
//   //                 // FindController.to.searchWord = '';
//   //                 // FindController.to.update();
//   //                 Get.back();
//   //               },
//   //               child: Text(
//   //                 '완료',
//   //                 style: baseStyle.copyWith(
//   //                     fontSize: 13,
//   //                     color: Color(0xff017BFE),
//   //                     fontWeight: FontWeight.w400),
//   //               ),
//   //             ),
//   //           ),
//   //           widthSpace(18.87),
//   //         ],
//   //       ),
//   //       vwTitle('보드 이름'),
//   //       vwTitle('보드에 배지 추가하기'),
//   //     ],
//   //   );
//   // }

//   Widget vwBoardMenu(BuildContext context) {
//     return Container(
//       decoration: new BoxDecoration(
//           color: Colors.white,
//           borderRadius: new BorderRadius.only(
//               topLeft: Radius.circular(16), topRight: Radius.circular(16))),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           heightSpace(2.0),
//           Container(
//               alignment: Alignment.bottomCenter,
//               height: 11,
//               child: Image.asset(Const.assets + 'images/rect_40.png')),
//           vwBSAppBar(
//             title: '추가하기',
//           ),
//           HanListTile(
//             onTap: () {
//               //SUBJECT : BS: 상단 고정
//               //TODO: 데이터베이스고정.
//               Get.back();
//               if (onNew != null) this.onNew();
//             },
//             leading: Image.asset(Const.assets + 'icon/icon_pin_fix.png'),
//             title: Text('새 보드'),
//           ),
//           HanListTile(
//             onTap: () {
//               //SUBJECT : BS: 공유 권한 변경
//               //TODO: 패딩조정.
//               Get.back();
//               if (onLink != null) this.onLink();
//             },
//             leading: Image.asset(Const.assets + 'icon/icon_share.png'),
//             title: Text('웹 링크'),
//           ),
//           HanListTile(
//             onTap: () {
//               //SUBJECT : BS: 보드 체인지
//               //TODO: 공유....
//               Get.back();
//               if (onPhoto != null) this.onPhoto();
//             },
//             leading: Image.asset(Const.assets + 'icon/icon_boardchange.png'),
//             title: Text('사진/비디오'),
//           ),
//           HanListTile(
//             onTap: () async {
//               //SUBJECT : BS: 보드 삭제
//               //TODO: 삭제....
//               Get.back();
//               if (onMemo != null) this.onMemo();
//               // AppHelper.show
//               // Get.toNamed('/yaggwan/2');
//               // var _responce = false;
//               // await DialogHelper.MessageDialog(
//               //   context,
//               //   (context) => DeleteDialog(
//               //     title: '보드를 삭제하시겠습니까?',
//               //     deleteTitle: '삭제',
//               //     okTitle: '취소',
//               //     okTap: () {
//               //       _responce = false;
//               //     },
//               //     deleteTap: () {
//               //       _responce = true;
//               //     },
//               //   ),
//               // );
//               // if (_responce) {
//               //   AppHelper.showMessage('보드를 삭제');
//               // }
//             },
//             leading: Image.asset(Const.assets + 'icon/icon_trashcan.png'),
//             title: Text('메모'),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget vwTitle(final title) {
//     return Container(
//       padding: EdgeInsets.only(left: 16),
//       alignment: Alignment.centerLeft,
//       child: Text(
//         title,
//         style: baseStyle.copyWith(
//             fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
//       ),
//     );
//   }
// }
