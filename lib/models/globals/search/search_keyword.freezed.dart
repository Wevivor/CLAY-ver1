// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_keyword.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchKeyword _$SearchKeywordFromJson(Map<String, dynamic> json) {
  return _SearchKeyword.fromJson(json);
}

/// @nodoc
class _$SearchKeywordTearOff {
  const _$SearchKeywordTearOff();

  _SearchKeyword call(
      {String? word,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) {
    return _SearchKeyword(
      word: word,
      dtCreated: dtCreated,
    );
  }

  SearchKeyword fromJson(Map<String, Object> json) {
    return SearchKeyword.fromJson(json);
  }
}

/// @nodoc
const $SearchKeyword = _$SearchKeywordTearOff();

/// @nodoc
mixin _$SearchKeyword {
  String? get word => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchKeywordCopyWith<SearchKeyword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchKeywordCopyWith<$Res> {
  factory $SearchKeywordCopyWith(
          SearchKeyword value, $Res Function(SearchKeyword) then) =
      _$SearchKeywordCopyWithImpl<$Res>;
  $Res call(
      {String? word,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});
}

/// @nodoc
class _$SearchKeywordCopyWithImpl<$Res>
    implements $SearchKeywordCopyWith<$Res> {
  _$SearchKeywordCopyWithImpl(this._value, this._then);

  final SearchKeyword _value;
  // ignore: unused_field
  final $Res Function(SearchKeyword) _then;

  @override
  $Res call({
    Object? word = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$SearchKeywordCopyWith<$Res>
    implements $SearchKeywordCopyWith<$Res> {
  factory _$SearchKeywordCopyWith(
          _SearchKeyword value, $Res Function(_SearchKeyword) then) =
      __$SearchKeywordCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? word,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});
}

/// @nodoc
class __$SearchKeywordCopyWithImpl<$Res>
    extends _$SearchKeywordCopyWithImpl<$Res>
    implements _$SearchKeywordCopyWith<$Res> {
  __$SearchKeywordCopyWithImpl(
      _SearchKeyword _value, $Res Function(_SearchKeyword) _then)
      : super(_value, (v) => _then(v as _SearchKeyword));

  @override
  _SearchKeyword get _value => super._value as _SearchKeyword;

  @override
  $Res call({
    Object? word = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_SearchKeyword(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SearchKeyword extends _SearchKeyword {
  _$_SearchKeyword(
      {this.word,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated})
      : super._();

  factory _$_SearchKeyword.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchKeywordFromJson(json);

  @override
  final String? word;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;

  @override
  String toString() {
    return 'SearchKeyword(word: $word, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchKeyword &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(word) ^
      const DeepCollectionEquality().hash(dtCreated);

  @JsonKey(ignore: true)
  @override
  _$SearchKeywordCopyWith<_SearchKeyword> get copyWith =>
      __$SearchKeywordCopyWithImpl<_SearchKeyword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchKeywordToJson(this);
  }
}

abstract class _SearchKeyword extends SearchKeyword {
  factory _SearchKeyword(
      {String? word,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) = _$_SearchKeyword;
  _SearchKeyword._() : super._();

  factory _SearchKeyword.fromJson(Map<String, dynamic> json) =
      _$_SearchKeyword.fromJson;

  @override
  String? get word => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchKeywordCopyWith<_SearchKeyword> get copyWith =>
      throw _privateConstructorUsedError;
}
