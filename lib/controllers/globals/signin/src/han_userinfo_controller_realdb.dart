// import 'dart:io';

// import 'package:clay/c_config/config.dart';
// import 'package:clay/controllers/globals/globals.dart';
// import 'package:clay/models/models.dart';
// import 'package:get/get.dart';
// import 'fb_user_info_module.dart';

// class HanUserInfoController extends GetxController with FbStrage {
//   static String MENU_POS = '/userinfos';
//   late DatabaseReference _reference;
//   late FirebaseStorage _storage;
//   late HanUserInfo? userInfo;
//   static HanUserInfoController get to => Get.find();
//   late StreamSubscription<Event> _userSubscription;

//   HanUserInfoController() {
//     _reference = FirebaseFirestore.instance.reference().child(MENU_POS);

//     _reference.keepSynced(true);
//     _storage = FirebaseStorage.instance;
//     userInfo = null;

//     _userSubscription = _reference.onValue.listen((event) {});
//   }
//   Future<bool> actionExistByEmail(String userEmail) async {
//     try {
//       final _result = await isExistQuery(
//           instance: _reference, target: 'email', source: userEmail);

//       return _result;
//     } catch (e) {
//       print(e);
//       throw e;
//     }
//   }

//   Future<bool> isExistQuery({
//     required DatabaseReference instance,
//     required String target,
//     required String source,
//   }) async {
//     try {
//       // final _collRef = instance.reference().child(path);
//       // final result =
//       //     await _collRef.orderByChild(target).equalTo(source).limitToFirst(1);
//       // final tmp = await result.get();
//       print('isExistQuery ============>');
//       // final query = instance.orderByChild(target).equalTo(source);
//       final _result = await instance.get();
//       print('isExistQuery ============>' + _result.toString());

//       return false;
//     } catch (e) {
//       print(e);
//       throw e;
//     }
//   }
// }
