// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'utils.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListCntTearOff {
  const _$ListCntTearOff();

  _ListCnt call({required int cnt, required List<String?> lists}) {
    return _ListCnt(
      cnt: cnt,
      lists: lists,
    );
  }
}

/// @nodoc
const $ListCnt = _$ListCntTearOff();

/// @nodoc
mixin _$ListCnt {
  int get cnt => throw _privateConstructorUsedError;
  List<String?> get lists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListCntCopyWith<ListCnt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCntCopyWith<$Res> {
  factory $ListCntCopyWith(ListCnt value, $Res Function(ListCnt) then) =
      _$ListCntCopyWithImpl<$Res>;
  $Res call({int cnt, List<String?> lists});
}

/// @nodoc
class _$ListCntCopyWithImpl<$Res> implements $ListCntCopyWith<$Res> {
  _$ListCntCopyWithImpl(this._value, this._then);

  final ListCnt _value;
  // ignore: unused_field
  final $Res Function(ListCnt) _then;

  @override
  $Res call({
    Object? cnt = freezed,
    Object? lists = freezed,
  }) {
    return _then(_value.copyWith(
      cnt: cnt == freezed
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      lists: lists == freezed
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc
abstract class _$ListCntCopyWith<$Res> implements $ListCntCopyWith<$Res> {
  factory _$ListCntCopyWith(_ListCnt value, $Res Function(_ListCnt) then) =
      __$ListCntCopyWithImpl<$Res>;
  @override
  $Res call({int cnt, List<String?> lists});
}

/// @nodoc
class __$ListCntCopyWithImpl<$Res> extends _$ListCntCopyWithImpl<$Res>
    implements _$ListCntCopyWith<$Res> {
  __$ListCntCopyWithImpl(_ListCnt _value, $Res Function(_ListCnt) _then)
      : super(_value, (v) => _then(v as _ListCnt));

  @override
  _ListCnt get _value => super._value as _ListCnt;

  @override
  $Res call({
    Object? cnt = freezed,
    Object? lists = freezed,
  }) {
    return _then(_ListCnt(
      cnt: cnt == freezed
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      lists: lists == freezed
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc

class _$_ListCnt extends _ListCnt {
  _$_ListCnt({required this.cnt, required this.lists}) : super._();

  @override
  final int cnt;
  @override
  final List<String?> lists;

  @override
  String toString() {
    return 'ListCnt(cnt: $cnt, lists: $lists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListCnt &&
            (identical(other.cnt, cnt) ||
                const DeepCollectionEquality().equals(other.cnt, cnt)) &&
            (identical(other.lists, lists) ||
                const DeepCollectionEquality().equals(other.lists, lists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cnt) ^
      const DeepCollectionEquality().hash(lists);

  @JsonKey(ignore: true)
  @override
  _$ListCntCopyWith<_ListCnt> get copyWith =>
      __$ListCntCopyWithImpl<_ListCnt>(this, _$identity);
}

abstract class _ListCnt extends ListCnt {
  factory _ListCnt({required int cnt, required List<String?> lists}) =
      _$_ListCnt;
  _ListCnt._() : super._();

  @override
  int get cnt => throw _privateConstructorUsedError;
  @override
  List<String?> get lists => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListCntCopyWith<_ListCnt> get copyWith =>
      throw _privateConstructorUsedError;
}
