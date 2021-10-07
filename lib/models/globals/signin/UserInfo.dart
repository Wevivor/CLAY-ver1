// /// Summarized information of a character.
// import 'package:intl/intl.dart';
// import 'package:youevent/app_lib.dart';

// class UserItemDTO {
//   String kind; //종류 비즈니스 회원
//   int level;
//   String introduction;

//   String busiName; // 브랜드 이름
//   String blandName; // 브랜드 이름
//   String busiURL; //비지니스 URL
//   String snsURL; //SNS URL
//   String channelIntroduction; //채널 소개.

//   //etc 관리
//   DateTime createdAt; //생성 일자

//   UserItemDTO({
//     this.uid,
//     this.kind,
//     this.level,
//     this.email,
//     this.photoURL,
//     this.introduction,
//     this.phoneNum,
//     this.displayName,
//     this.busiName,
//     this.blandName,
//     this.busiURL,
//     this.snsURL,
//     this.channelIntroduction,
//     this.createdAt,
//   })  : assert(uid != null),
//         assert(displayName != null),
//         assert(photoURL != null);

//   factory UserItemDTO.fromJson(Map<String, dynamic> json) {
//     dynamic tmp = json;
//     // dynamic tmp = json['_source'];

//     return UserItemDTO(
//       uid: tmp['uid'],
//       kind: tmp['kind'] == null ? '' : tmp['kind'],
//       level: tmp['level'],
//       email: tmp['email'] == null ? '' : tmp['email'],
//       photoURL: tmp['photoURL'] == null ? '' : tmp['photoURL'],
//       introduction: tmp['introduction'] == null ? '' : tmp['introduction'],
//       displayName: tmp['displayName'] == null ? '' : tmp['displayName'],
//       busiName: tmp['busiName'] == null ? '' : tmp['busiName'],
//       blandName: tmp['blandName'] == null ? '' : tmp['blandName'],
//       busiURL: tmp['busiURL'] == null ? '' : tmp['busiURL'],
//       snsURL: tmp['snsURL'] == null ? '' : tmp['snsURL'],
//       channelIntroduction:
//           tmp['channelIntroduction'] == null ? '' : tmp['channelIntroduction'],
//       createdAt:
//           DateTime.parse(tmp['createdAt'] == null ? '' : tmp['createdAt']),
//     );
//   }
//   factory UserItemDTO.fromList(Map<String, dynamic> json) {
//     dynamic tmp = json;
//     // dynamic tmp = json['_source'];

//     return UserItemDTO(
//       uid: tmp['uid'],
//       kind: tmp['kind'],
//       level: tmp['title'],
//       email: tmp['email'],
//       photoURL: tmp['photoURL'],
//       introduction: tmp['introduction'],
//       displayName: tmp['displayName'],
//       busiName: tmp['busiName'],
//       blandName: tmp['blandName'],
//       busiURL: tmp['busiURL'],
//       snsURL: tmp['snsURL'],
//       channelIntroduction: tmp['channelIntroduction'],
//       createdAt: DateTime.parse(tmp['createdAt']),
//     );
//   }
//   Map<String, dynamic> toJson() => {
//         'uid': uid,
//         'kind': kind,
//         'level': level,
//         'email': email,
//         'photoURL': photoURL,
//         'introduction': introduction,
//         'displayName': displayName,
//         'busiName': busiName,
//         'blandName': blandName,
//         'busiURL': busiURL,
//         'snsURL': snsURL == null ? '' : snsURL,
//         'channelIntroduction': channelIntroduction,
//       };
// }
