// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginAccount _$LoginAccountFromJson(Map<String, dynamic> json) {
  return _LoginAccount.fromJson(json);
}

/// @nodoc
class _$LoginAccountTearOff {
  const _$LoginAccountTearOff();

  _LoginAccount call(
      {required String email, required String pswd, required bool isSave}) {
    return _LoginAccount(
      email: email,
      pswd: pswd,
      isSave: isSave,
    );
  }

  LoginAccount fromJson(Map<String, Object> json) {
    return LoginAccount.fromJson(json);
  }
}

/// @nodoc
const $LoginAccount = _$LoginAccountTearOff();

/// @nodoc
mixin _$LoginAccount {
  String get email => throw _privateConstructorUsedError;
  String get pswd => throw _privateConstructorUsedError;
  bool get isSave => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginAccountCopyWith<LoginAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginAccountCopyWith<$Res> {
  factory $LoginAccountCopyWith(
          LoginAccount value, $Res Function(LoginAccount) then) =
      _$LoginAccountCopyWithImpl<$Res>;
  $Res call({String email, String pswd, bool isSave});
}

/// @nodoc
class _$LoginAccountCopyWithImpl<$Res> implements $LoginAccountCopyWith<$Res> {
  _$LoginAccountCopyWithImpl(this._value, this._then);

  final LoginAccount _value;
  // ignore: unused_field
  final $Res Function(LoginAccount) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? pswd = freezed,
    Object? isSave = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      pswd: pswd == freezed
          ? _value.pswd
          : pswd // ignore: cast_nullable_to_non_nullable
              as String,
      isSave: isSave == freezed
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginAccountCopyWith<$Res>
    implements $LoginAccountCopyWith<$Res> {
  factory _$LoginAccountCopyWith(
          _LoginAccount value, $Res Function(_LoginAccount) then) =
      __$LoginAccountCopyWithImpl<$Res>;
  @override
  $Res call({String email, String pswd, bool isSave});
}

/// @nodoc
class __$LoginAccountCopyWithImpl<$Res> extends _$LoginAccountCopyWithImpl<$Res>
    implements _$LoginAccountCopyWith<$Res> {
  __$LoginAccountCopyWithImpl(
      _LoginAccount _value, $Res Function(_LoginAccount) _then)
      : super(_value, (v) => _then(v as _LoginAccount));

  @override
  _LoginAccount get _value => super._value as _LoginAccount;

  @override
  $Res call({
    Object? email = freezed,
    Object? pswd = freezed,
    Object? isSave = freezed,
  }) {
    return _then(_LoginAccount(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      pswd: pswd == freezed
          ? _value.pswd
          : pswd // ignore: cast_nullable_to_non_nullable
              as String,
      isSave: isSave == freezed
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginAccount extends _LoginAccount {
  _$_LoginAccount(
      {required this.email, required this.pswd, required this.isSave})
      : super._();

  factory _$_LoginAccount.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginAccountFromJson(json);

  @override
  final String email;
  @override
  final String pswd;
  @override
  final bool isSave;

  @override
  String toString() {
    return 'LoginAccount(email: $email, pswd: $pswd, isSave: $isSave)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginAccount &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.pswd, pswd) ||
                const DeepCollectionEquality().equals(other.pswd, pswd)) &&
            (identical(other.isSave, isSave) ||
                const DeepCollectionEquality().equals(other.isSave, isSave)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(pswd) ^
      const DeepCollectionEquality().hash(isSave);

  @JsonKey(ignore: true)
  @override
  _$LoginAccountCopyWith<_LoginAccount> get copyWith =>
      __$LoginAccountCopyWithImpl<_LoginAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginAccountToJson(this);
  }
}

abstract class _LoginAccount extends LoginAccount {
  factory _LoginAccount(
      {required String email,
      required String pswd,
      required bool isSave}) = _$_LoginAccount;
  _LoginAccount._() : super._();

  factory _LoginAccount.fromJson(Map<String, dynamic> json) =
      _$_LoginAccount.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get pswd => throw _privateConstructorUsedError;
  @override
  bool get isSave => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginAccountCopyWith<_LoginAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
