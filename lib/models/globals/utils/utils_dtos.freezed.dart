// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'utils_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListCntDto _$ListCntDtoFromJson(Map<String, dynamic> json) {
  return _ListCntDto.fromJson(json);
}

/// @nodoc
class _$ListCntDtoTearOff {
  const _$ListCntDtoTearOff();

  _ListCntDto call({required int cnt, required List<String?> lists}) {
    return _ListCntDto(
      cnt: cnt,
      lists: lists,
    );
  }

  ListCntDto fromJson(Map<String, Object> json) {
    return ListCntDto.fromJson(json);
  }
}

/// @nodoc
const $ListCntDto = _$ListCntDtoTearOff();

/// @nodoc
mixin _$ListCntDto {
  int get cnt => throw _privateConstructorUsedError;
  List<String?> get lists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListCntDtoCopyWith<ListCntDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCntDtoCopyWith<$Res> {
  factory $ListCntDtoCopyWith(
          ListCntDto value, $Res Function(ListCntDto) then) =
      _$ListCntDtoCopyWithImpl<$Res>;
  $Res call({int cnt, List<String?> lists});
}

/// @nodoc
class _$ListCntDtoCopyWithImpl<$Res> implements $ListCntDtoCopyWith<$Res> {
  _$ListCntDtoCopyWithImpl(this._value, this._then);

  final ListCntDto _value;
  // ignore: unused_field
  final $Res Function(ListCntDto) _then;

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
abstract class _$ListCntDtoCopyWith<$Res> implements $ListCntDtoCopyWith<$Res> {
  factory _$ListCntDtoCopyWith(
          _ListCntDto value, $Res Function(_ListCntDto) then) =
      __$ListCntDtoCopyWithImpl<$Res>;
  @override
  $Res call({int cnt, List<String?> lists});
}

/// @nodoc
class __$ListCntDtoCopyWithImpl<$Res> extends _$ListCntDtoCopyWithImpl<$Res>
    implements _$ListCntDtoCopyWith<$Res> {
  __$ListCntDtoCopyWithImpl(
      _ListCntDto _value, $Res Function(_ListCntDto) _then)
      : super(_value, (v) => _then(v as _ListCntDto));

  @override
  _ListCntDto get _value => super._value as _ListCntDto;

  @override
  $Res call({
    Object? cnt = freezed,
    Object? lists = freezed,
  }) {
    return _then(_ListCntDto(
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

@JsonSerializable(explicitToJson: true)
class _$_ListCntDto extends _ListCntDto {
  _$_ListCntDto({required this.cnt, required this.lists}) : super._();

  factory _$_ListCntDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ListCntDtoFromJson(json);

  @override
  final int cnt;
  @override
  final List<String?> lists;

  @override
  String toString() {
    return 'ListCntDto(cnt: $cnt, lists: $lists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListCntDto &&
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
  _$ListCntDtoCopyWith<_ListCntDto> get copyWith =>
      __$ListCntDtoCopyWithImpl<_ListCntDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ListCntDtoToJson(this);
  }
}

abstract class _ListCntDto extends ListCntDto {
  factory _ListCntDto({required int cnt, required List<String?> lists}) =
      _$_ListCntDto;
  _ListCntDto._() : super._();

  factory _ListCntDto.fromJson(Map<String, dynamic> json) =
      _$_ListCntDto.fromJson;

  @override
  int get cnt => throw _privateConstructorUsedError;
  @override
  List<String?> get lists => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListCntDtoCopyWith<_ListCntDto> get copyWith =>
      throw _privateConstructorUsedError;
}
