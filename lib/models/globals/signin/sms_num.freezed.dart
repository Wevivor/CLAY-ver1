// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sms_num.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SmsNum _$SmsNumFromJson(Map<String, dynamic> json) {
  return _SmsNum.fromJson(json);
}

/// @nodoc
class _$SmsNumTearOff {
  const _$SmsNumTearOff();

  _SmsNum call({required String phone, required String num}) {
    return _SmsNum(
      phone: phone,
      num: num,
    );
  }

  SmsNum fromJson(Map<String, Object> json) {
    return SmsNum.fromJson(json);
  }
}

/// @nodoc
const $SmsNum = _$SmsNumTearOff();

/// @nodoc
mixin _$SmsNum {
  String get phone => throw _privateConstructorUsedError;
  String get num => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmsNumCopyWith<SmsNum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsNumCopyWith<$Res> {
  factory $SmsNumCopyWith(SmsNum value, $Res Function(SmsNum) then) =
      _$SmsNumCopyWithImpl<$Res>;
  $Res call({String phone, String num});
}

/// @nodoc
class _$SmsNumCopyWithImpl<$Res> implements $SmsNumCopyWith<$Res> {
  _$SmsNumCopyWithImpl(this._value, this._then);

  final SmsNum _value;
  // ignore: unused_field
  final $Res Function(SmsNum) _then;

  @override
  $Res call({
    Object? phone = freezed,
    Object? num = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      num: num == freezed
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SmsNumCopyWith<$Res> implements $SmsNumCopyWith<$Res> {
  factory _$SmsNumCopyWith(_SmsNum value, $Res Function(_SmsNum) then) =
      __$SmsNumCopyWithImpl<$Res>;
  @override
  $Res call({String phone, String num});
}

/// @nodoc
class __$SmsNumCopyWithImpl<$Res> extends _$SmsNumCopyWithImpl<$Res>
    implements _$SmsNumCopyWith<$Res> {
  __$SmsNumCopyWithImpl(_SmsNum _value, $Res Function(_SmsNum) _then)
      : super(_value, (v) => _then(v as _SmsNum));

  @override
  _SmsNum get _value => super._value as _SmsNum;

  @override
  $Res call({
    Object? phone = freezed,
    Object? num = freezed,
  }) {
    return _then(_SmsNum(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      num: num == freezed
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SmsNum extends _SmsNum {
  _$_SmsNum({required this.phone, required this.num}) : super._();

  factory _$_SmsNum.fromJson(Map<String, dynamic> json) =>
      _$_$_SmsNumFromJson(json);

  @override
  final String phone;
  @override
  final String num;

  @override
  String toString() {
    return 'SmsNum(phone: $phone, num: $num)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SmsNum &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.num, num) ||
                const DeepCollectionEquality().equals(other.num, num)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(num);

  @JsonKey(ignore: true)
  @override
  _$SmsNumCopyWith<_SmsNum> get copyWith =>
      __$SmsNumCopyWithImpl<_SmsNum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SmsNumToJson(this);
  }
}

abstract class _SmsNum extends SmsNum {
  factory _SmsNum({required String phone, required String num}) = _$_SmsNum;
  _SmsNum._() : super._();

  factory _SmsNum.fromJson(Map<String, dynamic> json) = _$_SmsNum.fromJson;

  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get num => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SmsNumCopyWith<_SmsNum> get copyWith => throw _privateConstructorUsedError;
}
