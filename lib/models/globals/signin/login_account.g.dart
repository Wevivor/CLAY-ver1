// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginAccount _$_$_LoginAccountFromJson(Map<String, dynamic> json) {
  return _$_LoginAccount(
    email: json['email'] as String,
    pswd: json['pswd'] as String,
    isSave: json['isSave'] as bool,
  );
}

Map<String, dynamic> _$_$_LoginAccountToJson(_$_LoginAccount instance) =>
    <String, dynamic>{
      'email': instance.email,
      'pswd': instance.pswd,
      'isSave': instance.isSave,
    };
