// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'faq_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaqInfo _$FaqInfoFromJson(Map<String, dynamic> json) {
  return _FaqInfo.fromJson(json);
}

/// @nodoc
class _$FaqInfoTearOff {
  const _$FaqInfoTearOff();

  _FaqInfo call(
      {String? title,
      String? content,
      required int cntView,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated,
      List<String?>? thumbnails}) {
    return _FaqInfo(
      title: title,
      content: content,
      cntView: cntView,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
      thumbnails: thumbnails,
    );
  }

  FaqInfo fromJson(Map<String, Object> json) {
    return FaqInfo.fromJson(json);
  }
}

/// @nodoc
const $FaqInfo = _$FaqInfoTearOff();

/// @nodoc
mixin _$FaqInfo {
  ///제품 개요
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int get cntView => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqInfoCopyWith<FaqInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqInfoCopyWith<$Res> {
  factory $FaqInfoCopyWith(FaqInfo value, $Res Function(FaqInfo) then) =
      _$FaqInfoCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? content,
      int cntView,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated,
      List<String?>? thumbnails});
}

/// @nodoc
class _$FaqInfoCopyWithImpl<$Res> implements $FaqInfoCopyWith<$Res> {
  _$FaqInfoCopyWithImpl(this._value, this._then);

  final FaqInfo _value;
  // ignore: unused_field
  final $Res Function(FaqInfo) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? cntView = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
    Object? thumbnails = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
              as int,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
abstract class _$FaqInfoCopyWith<$Res> implements $FaqInfoCopyWith<$Res> {
  factory _$FaqInfoCopyWith(_FaqInfo value, $Res Function(_FaqInfo) then) =
      __$FaqInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? content,
      int cntView,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated,
      List<String?>? thumbnails});
}

/// @nodoc
class __$FaqInfoCopyWithImpl<$Res> extends _$FaqInfoCopyWithImpl<$Res>
    implements _$FaqInfoCopyWith<$Res> {
  __$FaqInfoCopyWithImpl(_FaqInfo _value, $Res Function(_FaqInfo) _then)
      : super(_value, (v) => _then(v as _FaqInfo));

  @override
  _FaqInfo get _value => super._value as _FaqInfo;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? cntView = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
    Object? thumbnails = freezed,
  }) {
    return _then(_FaqInfo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
              as int,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FaqInfo extends _FaqInfo {
  _$_FaqInfo(
      {this.title,
      this.content,
      required this.cntView,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated,
      this.thumbnails})
      : super._();

  factory _$_FaqInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_FaqInfoFromJson(json);

  @override

  ///제품 개요
  final String? title;
  @override
  final String? content;
  @override
  final int cntView;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;
  @override
  final List<String?>? thumbnails;

  @override
  String toString() {
    return 'FaqInfo(title: $title, content: $content, cntView: $cntView, dtCreated: $dtCreated, dtUpdated: $dtUpdated, thumbnails: $thumbnails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FaqInfo &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.cntView, cntView) ||
                const DeepCollectionEquality()
                    .equals(other.cntView, cntView)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)) &&
            (identical(other.dtUpdated, dtUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.dtUpdated, dtUpdated)) &&
            (identical(other.thumbnails, thumbnails) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnails, thumbnails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(cntView) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated) ^
      const DeepCollectionEquality().hash(thumbnails);

  @JsonKey(ignore: true)
  @override
  _$FaqInfoCopyWith<_FaqInfo> get copyWith =>
      __$FaqInfoCopyWithImpl<_FaqInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FaqInfoToJson(this);
  }
}

abstract class _FaqInfo extends FaqInfo {
  factory _FaqInfo(
      {String? title,
      String? content,
      required int cntView,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated,
      List<String?>? thumbnails}) = _$_FaqInfo;
  _FaqInfo._() : super._();

  factory _FaqInfo.fromJson(Map<String, dynamic> json) = _$_FaqInfo.fromJson;

  @override

  ///제품 개요
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  int get cntView => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FaqInfoCopyWith<_FaqInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
