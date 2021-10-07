// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_keyword_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchKeywordList _$SearchKeywordListFromJson(Map<String, dynamic> json) {
  return _SearchKeywordList.fromJson(json);
}

/// @nodoc
class _$SearchKeywordListTearOff {
  const _$SearchKeywordListTearOff();

  _SearchKeywordList call({String? name, String? strUid, List<dynamic>? node}) {
    return _SearchKeywordList(
      name: name,
      strUid: strUid,
      node: node,
    );
  }

  SearchKeywordList fromJson(Map<String, Object> json) {
    return SearchKeywordList.fromJson(json);
  }
}

/// @nodoc
const $SearchKeywordList = _$SearchKeywordListTearOff();

/// @nodoc
mixin _$SearchKeywordList {
  String? get name => throw _privateConstructorUsedError;
  String? get strUid => throw _privateConstructorUsedError;
  List<dynamic>? get node => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchKeywordListCopyWith<SearchKeywordList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchKeywordListCopyWith<$Res> {
  factory $SearchKeywordListCopyWith(
          SearchKeywordList value, $Res Function(SearchKeywordList) then) =
      _$SearchKeywordListCopyWithImpl<$Res>;
  $Res call({String? name, String? strUid, List<dynamic>? node});
}

/// @nodoc
class _$SearchKeywordListCopyWithImpl<$Res>
    implements $SearchKeywordListCopyWith<$Res> {
  _$SearchKeywordListCopyWithImpl(this._value, this._then);

  final SearchKeywordList _value;
  // ignore: unused_field
  final $Res Function(SearchKeywordList) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? strUid = freezed,
    Object? node = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      strUid: strUid == freezed
          ? _value.strUid
          : strUid // ignore: cast_nullable_to_non_nullable
              as String?,
      node: node == freezed
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$SearchKeywordListCopyWith<$Res>
    implements $SearchKeywordListCopyWith<$Res> {
  factory _$SearchKeywordListCopyWith(
          _SearchKeywordList value, $Res Function(_SearchKeywordList) then) =
      __$SearchKeywordListCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? strUid, List<dynamic>? node});
}

/// @nodoc
class __$SearchKeywordListCopyWithImpl<$Res>
    extends _$SearchKeywordListCopyWithImpl<$Res>
    implements _$SearchKeywordListCopyWith<$Res> {
  __$SearchKeywordListCopyWithImpl(
      _SearchKeywordList _value, $Res Function(_SearchKeywordList) _then)
      : super(_value, (v) => _then(v as _SearchKeywordList));

  @override
  _SearchKeywordList get _value => super._value as _SearchKeywordList;

  @override
  $Res call({
    Object? name = freezed,
    Object? strUid = freezed,
    Object? node = freezed,
  }) {
    return _then(_SearchKeywordList(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      strUid: strUid == freezed
          ? _value.strUid
          : strUid // ignore: cast_nullable_to_non_nullable
              as String?,
      node: node == freezed
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SearchKeywordList extends _SearchKeywordList {
  _$_SearchKeywordList({this.name, this.strUid, this.node}) : super._();

  factory _$_SearchKeywordList.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchKeywordListFromJson(json);

  @override
  final String? name;
  @override
  final String? strUid;
  @override
  final List<dynamic>? node;

  @override
  String toString() {
    return 'SearchKeywordList(name: $name, strUid: $strUid, node: $node)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchKeywordList &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.strUid, strUid) ||
                const DeepCollectionEquality().equals(other.strUid, strUid)) &&
            (identical(other.node, node) ||
                const DeepCollectionEquality().equals(other.node, node)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(strUid) ^
      const DeepCollectionEquality().hash(node);

  @JsonKey(ignore: true)
  @override
  _$SearchKeywordListCopyWith<_SearchKeywordList> get copyWith =>
      __$SearchKeywordListCopyWithImpl<_SearchKeywordList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchKeywordListToJson(this);
  }
}

abstract class _SearchKeywordList extends SearchKeywordList {
  factory _SearchKeywordList(
      {String? name,
      String? strUid,
      List<dynamic>? node}) = _$_SearchKeywordList;
  _SearchKeywordList._() : super._();

  factory _SearchKeywordList.fromJson(Map<String, dynamic> json) =
      _$_SearchKeywordList.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get strUid => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get node => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchKeywordListCopyWith<_SearchKeywordList> get copyWith =>
      throw _privateConstructorUsedError;
}
