// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'yaggwan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Yaggwan _$YaggwanFromJson(Map<String, dynamic> json) {
  return _Yaggwan.fromJson(json);
}

/// @nodoc
class _$YaggwanTearOff {
  const _$YaggwanTearOff();

  _Yaggwan call(
      {String? id, required String contents, List<String?>? thumbnails}) {
    return _Yaggwan(
      id: id,
      contents: contents,
      thumbnails: thumbnails,
    );
  }

  Yaggwan fromJson(Map<String, Object> json) {
    return Yaggwan.fromJson(json);
  }
}

/// @nodoc
const $Yaggwan = _$YaggwanTearOff();

/// @nodoc
mixin _$Yaggwan {
  String? get id =>
      throw _privateConstructorUsedError; // required UserProfile author,
// required int kind,
  String get contents => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YaggwanCopyWith<Yaggwan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YaggwanCopyWith<$Res> {
  factory $YaggwanCopyWith(Yaggwan value, $Res Function(Yaggwan) then) =
      _$YaggwanCopyWithImpl<$Res>;
  $Res call({String? id, String contents, List<String?>? thumbnails});
}

/// @nodoc
class _$YaggwanCopyWithImpl<$Res> implements $YaggwanCopyWith<$Res> {
  _$YaggwanCopyWithImpl(this._value, this._then);

  final Yaggwan _value;
  // ignore: unused_field
  final $Res Function(Yaggwan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? contents = freezed,
    Object? thumbnails = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
abstract class _$YaggwanCopyWith<$Res> implements $YaggwanCopyWith<$Res> {
  factory _$YaggwanCopyWith(_Yaggwan value, $Res Function(_Yaggwan) then) =
      __$YaggwanCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String contents, List<String?>? thumbnails});
}

/// @nodoc
class __$YaggwanCopyWithImpl<$Res> extends _$YaggwanCopyWithImpl<$Res>
    implements _$YaggwanCopyWith<$Res> {
  __$YaggwanCopyWithImpl(_Yaggwan _value, $Res Function(_Yaggwan) _then)
      : super(_value, (v) => _then(v as _Yaggwan));

  @override
  _Yaggwan get _value => super._value as _Yaggwan;

  @override
  $Res call({
    Object? id = freezed,
    Object? contents = freezed,
    Object? thumbnails = freezed,
  }) {
    return _then(_Yaggwan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Yaggwan extends _Yaggwan {
  _$_Yaggwan({this.id, required this.contents, this.thumbnails}) : super._();

  factory _$_Yaggwan.fromJson(Map<String, dynamic> json) =>
      _$_$_YaggwanFromJson(json);

  @override
  final String? id;
  @override // required UserProfile author,
// required int kind,
  final String contents;
  @override
  final List<String?>? thumbnails;

  @override
  String toString() {
    return 'Yaggwan(id: $id, contents: $contents, thumbnails: $thumbnails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Yaggwan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.contents, contents) ||
                const DeepCollectionEquality()
                    .equals(other.contents, contents)) &&
            (identical(other.thumbnails, thumbnails) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnails, thumbnails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(contents) ^
      const DeepCollectionEquality().hash(thumbnails);

  @JsonKey(ignore: true)
  @override
  _$YaggwanCopyWith<_Yaggwan> get copyWith =>
      __$YaggwanCopyWithImpl<_Yaggwan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_YaggwanToJson(this);
  }
}

abstract class _Yaggwan extends Yaggwan {
  factory _Yaggwan(
      {String? id,
      required String contents,
      List<String?>? thumbnails}) = _$_Yaggwan;
  _Yaggwan._() : super._();

  factory _Yaggwan.fromJson(Map<String, dynamic> json) = _$_Yaggwan.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override // required UserProfile author,
// required int kind,
  String get contents => throw _privateConstructorUsedError;
  @override
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$YaggwanCopyWith<_Yaggwan> get copyWith =>
      throw _privateConstructorUsedError;
}
