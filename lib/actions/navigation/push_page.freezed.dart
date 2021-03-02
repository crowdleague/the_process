// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'push_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PushPage _$PushPageFromJson(Map<String, dynamic> json) {
  return _PushPage.fromJson(json);
}

/// @nodoc
class _$PushPageTearOff {
  const _$PushPageTearOff();

  _PushPage call({required PageData data}) {
    return _PushPage(
      data: data,
    );
  }

  PushPage fromJson(Map<String, Object> json) {
    return PushPage.fromJson(json);
  }
}

/// @nodoc
const $PushPage = _$PushPageTearOff();

/// @nodoc
mixin _$PushPage {
  PageData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushPageCopyWith<PushPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushPageCopyWith<$Res> {
  factory $PushPageCopyWith(PushPage value, $Res Function(PushPage) then) =
      _$PushPageCopyWithImpl<$Res>;
  $Res call({PageData data});

  $PageDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PushPageCopyWithImpl<$Res> implements $PushPageCopyWith<$Res> {
  _$PushPageCopyWithImpl(this._value, this._then);

  final PushPage _value;
  // ignore: unused_field
  final $Res Function(PushPage) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as PageData,
    ));
  }

  @override
  $PageDataCopyWith<$Res> get data {
    return $PageDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$PushPageCopyWith<$Res> implements $PushPageCopyWith<$Res> {
  factory _$PushPageCopyWith(_PushPage value, $Res Function(_PushPage) then) =
      __$PushPageCopyWithImpl<$Res>;
  @override
  $Res call({PageData data});

  @override
  $PageDataCopyWith<$Res> get data;
}

/// @nodoc
class __$PushPageCopyWithImpl<$Res> extends _$PushPageCopyWithImpl<$Res>
    implements _$PushPageCopyWith<$Res> {
  __$PushPageCopyWithImpl(_PushPage _value, $Res Function(_PushPage) _then)
      : super(_value, (v) => _then(v as _PushPage));

  @override
  _PushPage get _value => super._value as _PushPage;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_PushPage(
      data: data == freezed ? _value.data : data as PageData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PushPage implements _PushPage {
  _$_PushPage({required this.data});

  factory _$_PushPage.fromJson(Map<String, dynamic> json) =>
      _$_$_PushPageFromJson(json);

  @override
  final PageData data;

  @override
  String toString() {
    return 'PushPage(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushPage &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$PushPageCopyWith<_PushPage> get copyWith =>
      __$PushPageCopyWithImpl<_PushPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PushPageToJson(this);
  }
}

abstract class _PushPage implements PushPage {
  factory _PushPage({required PageData data}) = _$_PushPage;

  factory _PushPage.fromJson(Map<String, dynamic> json) = _$_PushPage.fromJson;

  @override
  PageData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PushPageCopyWith<_PushPage> get copyWith =>
      throw _privateConstructorUsedError;
}
