// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'store_auth_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreAuthUserData _$StoreAuthUserDataFromJson(Map<String, dynamic> json) {
  return _StoreAuthUserData.fromJson(json);
}

/// @nodoc
class _$StoreAuthUserDataTearOff {
  const _$StoreAuthUserDataTearOff();

  _StoreAuthUserData call({AuthUserData? authUserData}) {
    return _StoreAuthUserData(
      authUserData: authUserData,
    );
  }

  StoreAuthUserData fromJson(Map<String, Object> json) {
    return StoreAuthUserData.fromJson(json);
  }
}

/// @nodoc
const $StoreAuthUserData = _$StoreAuthUserDataTearOff();

/// @nodoc
mixin _$StoreAuthUserData {
  AuthUserData? get authUserData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreAuthUserDataCopyWith<StoreAuthUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreAuthUserDataCopyWith<$Res> {
  factory $StoreAuthUserDataCopyWith(
          StoreAuthUserData value, $Res Function(StoreAuthUserData) then) =
      _$StoreAuthUserDataCopyWithImpl<$Res>;
  $Res call({AuthUserData? authUserData});

  $AuthUserDataCopyWith<$Res>? get authUserData;
}

/// @nodoc
class _$StoreAuthUserDataCopyWithImpl<$Res>
    implements $StoreAuthUserDataCopyWith<$Res> {
  _$StoreAuthUserDataCopyWithImpl(this._value, this._then);

  final StoreAuthUserData _value;
  // ignore: unused_field
  final $Res Function(StoreAuthUserData) _then;

  @override
  $Res call({
    Object? authUserData = freezed,
  }) {
    return _then(_value.copyWith(
      authUserData: authUserData == freezed
          ? _value.authUserData
          : authUserData as AuthUserData?,
    ));
  }

  @override
  $AuthUserDataCopyWith<$Res>? get authUserData {
    if (_value.authUserData == null) {
      return null;
    }

    return $AuthUserDataCopyWith<$Res>(_value.authUserData!, (value) {
      return _then(_value.copyWith(authUserData: value));
    });
  }
}

/// @nodoc
abstract class _$StoreAuthUserDataCopyWith<$Res>
    implements $StoreAuthUserDataCopyWith<$Res> {
  factory _$StoreAuthUserDataCopyWith(
          _StoreAuthUserData value, $Res Function(_StoreAuthUserData) then) =
      __$StoreAuthUserDataCopyWithImpl<$Res>;
  @override
  $Res call({AuthUserData? authUserData});

  @override
  $AuthUserDataCopyWith<$Res>? get authUserData;
}

/// @nodoc
class __$StoreAuthUserDataCopyWithImpl<$Res>
    extends _$StoreAuthUserDataCopyWithImpl<$Res>
    implements _$StoreAuthUserDataCopyWith<$Res> {
  __$StoreAuthUserDataCopyWithImpl(
      _StoreAuthUserData _value, $Res Function(_StoreAuthUserData) _then)
      : super(_value, (v) => _then(v as _StoreAuthUserData));

  @override
  _StoreAuthUserData get _value => super._value as _StoreAuthUserData;

  @override
  $Res call({
    Object? authUserData = freezed,
  }) {
    return _then(_StoreAuthUserData(
      authUserData: authUserData == freezed
          ? _value.authUserData
          : authUserData as AuthUserData?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StoreAuthUserData implements _StoreAuthUserData {
  _$_StoreAuthUserData({this.authUserData});

  factory _$_StoreAuthUserData.fromJson(Map<String, dynamic> json) =>
      _$_$_StoreAuthUserDataFromJson(json);

  @override
  final AuthUserData? authUserData;

  @override
  String toString() {
    return 'StoreAuthUserData(authUserData: $authUserData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreAuthUserData &&
            (identical(other.authUserData, authUserData) ||
                const DeepCollectionEquality()
                    .equals(other.authUserData, authUserData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(authUserData);

  @JsonKey(ignore: true)
  @override
  _$StoreAuthUserDataCopyWith<_StoreAuthUserData> get copyWith =>
      __$StoreAuthUserDataCopyWithImpl<_StoreAuthUserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StoreAuthUserDataToJson(this);
  }
}

abstract class _StoreAuthUserData implements StoreAuthUserData {
  factory _StoreAuthUserData({AuthUserData? authUserData}) =
      _$_StoreAuthUserData;

  factory _StoreAuthUserData.fromJson(Map<String, dynamic> json) =
      _$_StoreAuthUserData.fromJson;

  @override
  AuthUserData? get authUserData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreAuthUserDataCopyWith<_StoreAuthUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
