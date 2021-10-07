// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'account_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountInfoTearOff {
  const _$AccountInfoTearOff();

  _AccountInfo call(
      {required int accountKind,
      required String email,
      String? displayName,
      String? photoURL}) {
    return _AccountInfo(
      accountKind: accountKind,
      email: email,
      displayName: displayName,
      photoURL: photoURL,
    );
  }
}

/// @nodoc
const $AccountInfo = _$AccountInfoTearOff();

/// @nodoc
mixin _$AccountInfo {
  int get accountKind => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountInfoCopyWith<AccountInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountInfoCopyWith<$Res> {
  factory $AccountInfoCopyWith(
          AccountInfo value, $Res Function(AccountInfo) then) =
      _$AccountInfoCopyWithImpl<$Res>;
  $Res call(
      {int accountKind, String email, String? displayName, String? photoURL});
}

/// @nodoc
class _$AccountInfoCopyWithImpl<$Res> implements $AccountInfoCopyWith<$Res> {
  _$AccountInfoCopyWithImpl(this._value, this._then);

  final AccountInfo _value;
  // ignore: unused_field
  final $Res Function(AccountInfo) _then;

  @override
  $Res call({
    Object? accountKind = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_value.copyWith(
      accountKind: accountKind == freezed
          ? _value.accountKind
          : accountKind // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AccountInfoCopyWith<$Res>
    implements $AccountInfoCopyWith<$Res> {
  factory _$AccountInfoCopyWith(
          _AccountInfo value, $Res Function(_AccountInfo) then) =
      __$AccountInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int accountKind, String email, String? displayName, String? photoURL});
}

/// @nodoc
class __$AccountInfoCopyWithImpl<$Res> extends _$AccountInfoCopyWithImpl<$Res>
    implements _$AccountInfoCopyWith<$Res> {
  __$AccountInfoCopyWithImpl(
      _AccountInfo _value, $Res Function(_AccountInfo) _then)
      : super(_value, (v) => _then(v as _AccountInfo));

  @override
  _AccountInfo get _value => super._value as _AccountInfo;

  @override
  $Res call({
    Object? accountKind = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_AccountInfo(
      accountKind: accountKind == freezed
          ? _value.accountKind
          : accountKind // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AccountInfo extends _AccountInfo {
  _$_AccountInfo(
      {required this.accountKind,
      required this.email,
      this.displayName,
      this.photoURL})
      : super._();

  @override
  final int accountKind;
  @override
  final String email;
  @override
  final String? displayName;
  @override
  final String? photoURL;

  @override
  String toString() {
    return 'AccountInfo(accountKind: $accountKind, email: $email, displayName: $displayName, photoURL: $photoURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountInfo &&
            (identical(other.accountKind, accountKind) ||
                const DeepCollectionEquality()
                    .equals(other.accountKind, accountKind)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accountKind) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(photoURL);

  @JsonKey(ignore: true)
  @override
  _$AccountInfoCopyWith<_AccountInfo> get copyWith =>
      __$AccountInfoCopyWithImpl<_AccountInfo>(this, _$identity);
}

abstract class _AccountInfo extends AccountInfo {
  factory _AccountInfo(
      {required int accountKind,
      required String email,
      String? displayName,
      String? photoURL}) = _$_AccountInfo;
  _AccountInfo._() : super._();

  @override
  int get accountKind => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String? get displayName => throw _privateConstructorUsedError;
  @override
  String? get photoURL => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountInfoCopyWith<_AccountInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
