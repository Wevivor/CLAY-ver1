// import 'dart:io';
// import 'package:clay/c_config/config.dart';
// import 'package:clay/c_globals/helper/helpers.dart';
// import 'package:clay/c_globals/utils/utils.dart';
// import 'package:clay/c_globals/widgets/widgets.dart';
// import 'package:clay/controllers/app/apps.dart';
// import 'package:clay/controllers/globals/globals.dart';
// import 'package:clay/models/models.dart';

// import 'package:clay/part/part_insta_image_pikcer/part_insta_image_picker.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:clay/part/part_write/part_write.dart';

// import 'part_post_search.dart';

// // ignore: must_be_immutable
// class PostWriteSUB extends StatefulWidget {
//   final itemData;
//   PostWriteSUB({this.itemData});

//   @override
//   _PostWriteSUBState createState() => _PostWriteSUBState();
// }

// class _PostWriteSUBState extends State<PostWriteSUB>
//     with AppbarHelper, SingleTickerProviderStateMixin {
//   int _index = 0;
//   String _preview = 'assets/images/post01.png';
//   final _formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     super.initState();
//     _isSearch = false;
//     Get.put(PostWriteProductController());
//     Get.put(PostWriteController());
//     PostWriteController.to.textEditController.text = '12345';
//     PostWriteController.to.isSubmit = true;
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   Future<void> _actionWrite() async {
//     final node = FocusScope.of(context);
//     if (PostWriteController.to.isSubmit) {
//       node.unfocus();
//       final _result = _formKey.currentState?.validate();

//       if (_result == null || !_result) {
//         ;
//       } else {
//         LoadingController.to.isLoading = true;
//         LoadingController.to.update();
//         _formKey.currentState?.save();

//         try {
//           // //TODO 테스트용
//           // final profile = Profile(
//           //     uid: 'NE5YNZ2tkFbVUHSfTqY62eZIE0p1',
//           //     displayName: '작성자',
//           //     level: 1,
//           //     email: 'han@gmail.com');

//           ///파일 업로드 부분임

//           File? entity = await PhotoSelectionController.to.getSelected()?.file;
//           var fileURL = null;
//           var thumbnails = null;
//           if (entity != null) {
//             thumbnails = await PostWriteController.to.uploadImage(entity);
//             fileURL = thumbnails['original'];
//           }
//           // final bookmark = ListCntDto(cnt: 0, lists: []);
//           // final favorite = ListCntDto(cnt: 0, lists: []);

//           // final profile = HanUserInfoController.to.toProfile();
//           final profile = null;
//           final info = PostInfoDto(
//             cntView: 1,
//             imgUrl: fileURL,
//             uid: profile.uid,
//             contentKind: 1,
//             title: '',
//             bookmark: ListCntDto(cnt: 0, lists: []),
//             favorite: ListCntDto(cnt: 0, lists: []),
//             content: PostWriteController.to.textEditController.text,
//             dtCreated: DateTime.now(),
//             dtUpdated: DateTime.now(),
//           );
//           final products = PostWriteProductController.to.cache
//               .map((e) => e.toDto())
//               .toList();

//           final profileDto = ProfileDto(
//             email: profile.email,
//             uid: profile.uid,
//             displayName: profile.displayName,
//             photoURL: profile.photoURL,
//             homeURL: profile.homeURL,
//             snsURL: profile.snsURL,
//             level: profile.level,
//             dtCreated: DateTime.now(),
//             dtUpdated: DateTime.now(),
//           );

//           final postItem = PostDto(
//             info: info,
//             profile: profileDto,
//             product: products,
//             dtCreated: DateTime.now(),
//             dtUpdated: DateTime.now(),
//           );

//           final _writeResult =
//               await PostWriteController.to.actionWrite(postItem);
//           LoadingController.to.isLoading = false;
//           LoadingController.to.update();
//           if (_writeResult) {
//             AppHelper.showMessage('게시글이 저장되었습니다');
//           }
//         } catch (e) {
//           print(e.toString());
//         }

//         /// TODO 로딩 화면임 => 로딩하는 부분을 UI에서 추가해야함.

//         // LoadingController.to.update(['wrtie01']);
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     MySize().init(context);
//     final node = FocusScope.of(context);

//     final aToolbarHeight = 56.0;

//     final profileHeight = aToolbarHeight + 208;
//     final controller = Get.put(SearchDlgController());

//     return GestureDetector(
//       onTap: () {
//         FocusScope.of(context).requestFocus(new FocusNode());
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           automaticallyImplyLeading: true,
//           centerTitle: true,
//           leading: IconButton(
//               onPressed: () {
//                 Get.back();
//                 // AppHelper.showMessage('팡법 메뉴');
//               },
//               icon: Icon(
//                 Icons.arrow_back,
//                 color: Color(0xFF333333),
//               )),
//           elevation: 0.0,
//           title: Container(
//             alignment: Alignment.centerRight,
//             child: InkWell(
//               onTap: () async {
//                 AppHelper.showMessage('게시글을 저장합니다');
//                 await _actionWrite();
//               },
//               child: GetBuilder<PostWriteController>(
//                 builder: (controller) => Container(
//                   width: 49,
//                   height: 30,
//                   alignment: Alignment.center,

//                   // padding: EdgeInsets.symmetric(vertical: 5),

//                   decoration: !PostWriteController.to.isSubmit
//                       ? DecoHelper.roundDeco.copyWith(
//                           color: Color(0xFFE0E0E0),
//                           border: Border(),
//                           borderRadius: BorderRadius.all(Radius.circular(12)),
//                         )
//                       : DecoHelper.roundGrDeco.copyWith(
//                           gradient: gradientReverse,
//                           // color: Color(0xFFE0E0E0),
//                           border: Border(),
//                           borderRadius: BorderRadius.all(Radius.circular(12)),
//                         ),
//                   // alignment: Alignment.center,
//                   child: Text(
//                     '완료',
//                     style: baseStyle.copyWith(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w700,
//                         color: Color(0xFFFFFFFF)),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // bottom: PreferredSize(
//           //   preferredSize: Size.fromHeight(206),
//           //   child: Container(
//           //     alignment: Alignment.bottomCenter,
//           //     width: double.infinity,
//           //     height: 206,
//           //     child: Image.asset(
//           //       'assets/images/post01.png',
//           //       width: double.infinity,
//           //       height: 206,
//           //       fit: BoxFit.fill,
//           //     ),
//           //   ),
//           // ),
//         ),
//         backgroundColor: Colors.white,
//         body: GetBuilder<LoadingController>(
//           builder: (_) => StackWithButton(
//             child: WillPopScope(
//               onWillPop: () {
//                 if (_isSearch == true) {
//                   setState(() {
//                     _isSearch = false;
//                   });
//                   return Future.value(false);
//                 } else {
//                   return Future.value(true);
//                 }
//               },
//               child: Stack(
//                 children: [
//                   CustomScrollView(
//                     slivers: [
//                       /// 상단 이미지 부분임.
//                       SliverToBoxAdapter(
//                         child: Container(
//                           height: 206,
//                           child: Image.memory(
//                             widget.itemData,
//                             width: double.infinity,
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),

//                       // /// TODO 착용제품
//                       GetBuilder<PostWriteProductController>(
//                         builder: (controller) {
//                           if (controller.cache.length > 0)
//                             return SliverToBoxAdapter(
//                               child: Container(
//                                 height: 50,
//                               ),
//                             );
//                           return SliverToBoxAdapter(child: SizedBox.shrink());
//                         },
//                       ),
//                       GetBuilder<PostWriteProductController>(
//                         builder: (controller) => SliverList(
//                           delegate: SliverChildBuilderDelegate(
//                             (context, idx) {
//                               final cache = controller.cache;
//                               final item = cache[idx];

//                               return Container(
//                                 padding: EdgeInsets.only(left: 14, right: 14),
//                                 margin: EdgeInsets.only(bottom: 15),
//                                 child: HanListTile(
//                                   onTap: () {
//                                     // _showProductBS(context);
//                                     // Get.toNamed('/product');
//                                   },
//                                   // dense: true,
//                                   leading: Container(
//                                     child: ImageRoundWidget(
//                                       width: 48,
//                                       height: 48,
//                                       round: 5.0,
//                                       imgUrl: item.imgUrl,
//                                       holder: 'assets/images/product_g_05.png',
//                                     ),
//                                   ),
//                                   title: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         item.title,
//                                         style: detailStyle.copyWith(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.normal,
//                                         ),
//                                       ),
//                                       Text(
//                                         item.detail,
//                                         style: detailStyle.copyWith(
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.normal,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   trailing: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         item.price.toString(),
//                                         style: detailStyle.copyWith(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.normal,
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () {
//                                           controller.remove(item);
//                                           AppHelper.showMessage(
//                                               '상품이 성공적으로 제거되었습니다');
//                                         },
//                                         child: Container(
//                                           width: 26,
//                                           height: 20,
//                                           child: Text(
//                                             '제거',
//                                             style: detailStyle.copyWith(
//                                               fontSize: 12,
//                                               color: Color(0xFFFB3939),
//                                               fontWeight: FontWeight.normal,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             },
//                             childCount: controller.cache.length,
//                           ),
//                           // childCount: controller.cache.length,
//                         ),
//                       ),
//                       SliverToBoxAdapter(
//                         child: heightSpace(50),
//                       ),
//                       SliverToBoxAdapter(
//                           child: Padding(
//                         padding: EdgeInsets.only(left: 14, right: 14),
//                         child: InkWell(
//                           onTap: () {
//                             setState(() {
//                               _isSearch = true;
//                             });
//                             final _searchController =
//                                 Get.put(SearchDlgController());
//                             _searchController.init();
//                           },
//                           child: Container(
//                             height: 50,
//                             alignment: Alignment.center,
//                             decoration: DecoHelper.roundDeco.copyWith(
//                               color: Colors.white,
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(50)),
//                               border: Border.all(
//                                   width: 1, color: Color(0xFFFFFFFF)),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withAlpha(24),
//                                   blurRadius: 5,
//                                   offset: Offset(
//                                       0, 2), // changes position of shadow
//                                 ),
//                               ],
//                             ),
//                             margin: EdgeInsets.only(top: 14, bottom: 14.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Image.asset('assets/icon/add_box.png'),
//                                 widthSpace(13),
//                                 Text(
//                                   '상품추가',
//                                   style: baseStyle.copyWith(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.normal,
//                                       color: Color(0xFF828282)),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       )),
//                       SliverToBoxAdapter(
//                         child: Padding(
//                           padding: EdgeInsets.only(left: 14, right: 14),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Form(
//                                 key: _formKey,
//                                 child: TextFormField(
//                                   maxLines: 5,
//                                   autofocus: false,
//                                   controller:
//                                       PostWriteController.to.textEditController,
//                                   style: inTextStyle,
//                                   decoration: kRegisterDecoration.copyWith(
//                                     hintText: '상품의 정보나 여러분의 후기, 팁 등을 적어주세요.',
//                                     hintStyle: hintTextStyle,
//                                     border: InputBorder.none,
//                                     focusedBorder: InputBorder.none,
//                                     enabledBorder: InputBorder.none,
//                                     errorBorder: InputBorder.none,
//                                     disabledBorder: InputBorder.none,
//                                   ),
//                                   keyboardType: TextInputType.multiline,
//                                   textInputAction: TextInputAction.newline,
//                                   onEditingComplete: () => node.unfocus(),
//                                   validator: (value) {
//                                     if (value == null || value.isEmpty) {
//                                       final _error =
//                                           ErrorMessages.messages('empty');
//                                       return _error;
//                                     }
//                                     // final validator = Validator('kr');
//                                     // if (validator.email(value) != null) {
//                                     //   final _error =
//                                     //       ErrorMessages.messages('email-incorrect');
//                                     //   return _error;
//                                     // }
//                                     return null;
//                                   },
//                                   onSaved: (value) => PostWriteController
//                                       .to
//                                       .textEditController
//                                       .text = value?.trim() ?? '',
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       SliverToBoxAdapter(
//                         child: heightSpace(50),
//                       ),
//                     ],
//                   ),
//                   if (_isSearch)
//                     PostSearchPART(
//                       onTap: () {
//                         setState(() {
//                           _isSearch = !_isSearch;
//                         });
//                         final product = SearchDlgController.to.product;

//                         PostWriteProductController.to.add(product);
//                       },
//                     ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );

//     ///Tab
//     ///바
//   }

//   final inTextStyle = baseStyle.copyWith(
//       fontSize: 14, color: Color(0xFF828282), fontWeight: FontWeight.normal);
//   final hintTextStyle = baseStyle.copyWith(
//       fontSize: 14, color: Color(0xFF828282), fontWeight: FontWeight.normal);

//   bool _isSearch = false;
// }
