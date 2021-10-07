import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_account.freezed.dart';
part 'login_account.g.dart';

@freezed
class LoginAccount with _$LoginAccount {
  // @Assert('(phone?.length ?? 0) > 5', '이름은 5자 이하만 입력 가능합니다.')
  factory LoginAccount({
    required String email,
    required String pswd,
    required bool isSave,
  }) = _LoginAccount;

  factory LoginAccount.fromJson(Map<String, dynamic> json) =>
      _$LoginAccountFromJson(json);

  LoginAccount._();

  // Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
