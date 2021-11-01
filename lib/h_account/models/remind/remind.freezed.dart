// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remind.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RemindTearOff {
  const _$RemindTearOff();

  _Remind call(
      {String? remindId,
      String? title,
      String? description,
      Profile? from,
      required ContentsInfo contentsInfo,
      required DateTime rAlarmTime}) {
    return _Remind(
      remindId: remindId,
      title: title,
      description: description,
      from: from,
      contentsInfo: contentsInfo,
      rAlarmTime: rAlarmTime,
    );
  }
}

/// @nodoc
const $Remind = _$RemindTearOff();

/// @nodoc
mixin _$Remind {
  String? get remindId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Profile? get from => throw _privateConstructorUsedError;
  ContentsInfo get contentsInfo => throw _privateConstructorUsedError;
  DateTime get rAlarmTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemindCopyWith<Remind> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemindCopyWith<$Res> {
  factory $RemindCopyWith(Remind value, $Res Function(Remind) then) =
      _$RemindCopyWithImpl<$Res>;
  $Res call(
      {String? remindId,
      String? title,
      String? description,
      Profile? from,
      ContentsInfo contentsInfo,
      DateTime rAlarmTime});

  $ProfileCopyWith<$Res>? get from;
  $ContentsInfoCopyWith<$Res> get contentsInfo;
}

/// @nodoc
class _$RemindCopyWithImpl<$Res> implements $RemindCopyWith<$Res> {
  _$RemindCopyWithImpl(this._value, this._then);

  final Remind _value;
  // ignore: unused_field
  final $Res Function(Remind) _then;

  @override
  $Res call({
    Object? remindId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? from = freezed,
    Object? contentsInfo = freezed,
    Object? rAlarmTime = freezed,
  }) {
    return _then(_value.copyWith(
      remindId: remindId == freezed
          ? _value.remindId
          : remindId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Profile?,
      contentsInfo: contentsInfo == freezed
          ? _value.contentsInfo
          : contentsInfo // ignore: cast_nullable_to_non_nullable
              as ContentsInfo,
      rAlarmTime: rAlarmTime == freezed
          ? _value.rAlarmTime
          : rAlarmTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ProfileCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $ContentsInfoCopyWith<$Res> get contentsInfo {
    return $ContentsInfoCopyWith<$Res>(_value.contentsInfo, (value) {
      return _then(_value.copyWith(contentsInfo: value));
    });
  }
}

/// @nodoc
abstract class _$RemindCopyWith<$Res> implements $RemindCopyWith<$Res> {
  factory _$RemindCopyWith(_Remind value, $Res Function(_Remind) then) =
      __$RemindCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? remindId,
      String? title,
      String? description,
      Profile? from,
      ContentsInfo contentsInfo,
      DateTime rAlarmTime});

  @override
  $ProfileCopyWith<$Res>? get from;
  @override
  $ContentsInfoCopyWith<$Res> get contentsInfo;
}

/// @nodoc
class __$RemindCopyWithImpl<$Res> extends _$RemindCopyWithImpl<$Res>
    implements _$RemindCopyWith<$Res> {
  __$RemindCopyWithImpl(_Remind _value, $Res Function(_Remind) _then)
      : super(_value, (v) => _then(v as _Remind));

  @override
  _Remind get _value => super._value as _Remind;

  @override
  $Res call({
    Object? remindId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? from = freezed,
    Object? contentsInfo = freezed,
    Object? rAlarmTime = freezed,
  }) {
    return _then(_Remind(
      remindId: remindId == freezed
          ? _value.remindId
          : remindId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Profile?,
      contentsInfo: contentsInfo == freezed
          ? _value.contentsInfo
          : contentsInfo // ignore: cast_nullable_to_non_nullable
              as ContentsInfo,
      rAlarmTime: rAlarmTime == freezed
          ? _value.rAlarmTime
          : rAlarmTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Remind extends _Remind {
  _$_Remind(
      {this.remindId,
      this.title,
      this.description,
      this.from,
      required this.contentsInfo,
      required this.rAlarmTime})
      : super._();

  @override
  final String? remindId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final Profile? from;
  @override
  final ContentsInfo contentsInfo;
  @override
  final DateTime rAlarmTime;

  @override
  String toString() {
    return 'Remind(remindId: $remindId, title: $title, description: $description, from: $from, contentsInfo: $contentsInfo, rAlarmTime: $rAlarmTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Remind &&
            (identical(other.remindId, remindId) ||
                const DeepCollectionEquality()
                    .equals(other.remindId, remindId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.contentsInfo, contentsInfo) ||
                const DeepCollectionEquality()
                    .equals(other.contentsInfo, contentsInfo)) &&
            (identical(other.rAlarmTime, rAlarmTime) ||
                const DeepCollectionEquality()
                    .equals(other.rAlarmTime, rAlarmTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(remindId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(contentsInfo) ^
      const DeepCollectionEquality().hash(rAlarmTime);

  @JsonKey(ignore: true)
  @override
  _$RemindCopyWith<_Remind> get copyWith =>
      __$RemindCopyWithImpl<_Remind>(this, _$identity);
}

abstract class _Remind extends Remind {
  factory _Remind(
      {String? remindId,
      String? title,
      String? description,
      Profile? from,
      required ContentsInfo contentsInfo,
      required DateTime rAlarmTime}) = _$_Remind;
  _Remind._() : super._();

  @override
  String? get remindId => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  Profile? get from => throw _privateConstructorUsedError;
  @override
  ContentsInfo get contentsInfo => throw _privateConstructorUsedError;
  @override
  DateTime get rAlarmTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RemindCopyWith<_Remind> get copyWith => throw _privateConstructorUsedError;
}
