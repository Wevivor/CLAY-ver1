import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_info.freezed.dart';

enum ACCOUNT_KIND { KAKAO, GOOGLE }

@freezed
class AccountInfo with _$AccountInfo {
  // @Assert('(phone?.length ?? 0) > 5', '이름은 5자 이하만 입력 가능합니다.')
  factory AccountInfo({
    required int accountKind,
    required String email,
    String? displayName,
    String? photoURL,
  }) = _AccountInfo;

  AccountInfo._();
}
