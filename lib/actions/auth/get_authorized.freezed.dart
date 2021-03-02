// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_authorized.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAuthorized _$GetAuthorizedFromJson(Map<String, dynamic> json) {
  return _GetAuthorized.fromJson(json);
}

/// @nodoc
class _$GetAuthorizedTearOff {
  const _$GetAuthorizedTearOff();

  _GetAuthorized call({required ProviderName provider}) {
    return _GetAuthorized(
      provider: provider,
    );
  }

  GetAuthorized fromJson(Map<String, Object> json) {
    return GetAuthorized.fromJson(json);
  }
}

/// @nodoc
const $GetAuthorized = _$GetAuthorizedTearOff();

/// @nodoc
mixin _$GetAuthorized {
  ProviderName get provider => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAuthorizedCopyWith<GetAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAuthorizedCopyWith<$Res> {
  factory $GetAuthorizedCopyWith(
          GetAuthorized value, $Res Function(GetAuthorized) then) =
      _$GetAuthorizedCopyWithImpl<$Res>;
  $Res call({ProviderName provider});
}

/// @nodoc
class _$GetAuthorizedCopyWithImpl<$Res>
    implements $GetAuthorizedCopyWith<$Res> {
  _$GetAuthorizedCopyWithImpl(this._value, this._then);

  final GetAuthorized _value;
  // ignore: unused_field
  final $Res Function(GetAuthorized) _then;

  @override
  $Res call({
    Object? provider = freezed,
  }) {
    return _then(_value.copyWith(
      provider:
          provider == freezed ? _value.provider : provider as ProviderName,
    ));
  }
}

/// @nodoc
abstract class _$GetAuthorizedCopyWith<$Res>
    implements $GetAuthorizedCopyWith<$Res> {
  factory _$GetAuthorizedCopyWith(
          _GetAuthorized value, $Res Function(_GetAuthorized) then) =
      __$GetAuthorizedCopyWithImpl<$Res>;
  @override
  $Res call({ProviderName provider});
}

/// @nodoc
class __$GetAuthorizedCopyWithImpl<$Res>
    extends _$GetAuthorizedCopyWithImpl<$Res>
    implements _$GetAuthorizedCopyWith<$Res> {
  __$GetAuthorizedCopyWithImpl(
      _GetAuthorized _value, $Res Function(_GetAuthorized) _then)
      : super(_value, (v) => _then(v as _GetAuthorized));

  @override
  _GetAuthorized get _value => super._value as _GetAuthorized;

  @override
  $Res call({
    Object? provider = freezed,
  }) {
    return _then(_GetAuthorized(
      provider:
          provider == freezed ? _value.provider : provider as ProviderName,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GetAuthorized implements _GetAuthorized {
  _$_GetAuthorized({required this.provider});

  factory _$_GetAuthorized.fromJson(Map<String, dynamic> json) =>
      _$_$_GetAuthorizedFromJson(json);

  @override
  final ProviderName provider;

  @override
  String toString() {
    return 'GetAuthorized(provider: $provider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAuthorized &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(provider);

  @JsonKey(ignore: true)
  @override
  _$GetAuthorizedCopyWith<_GetAuthorized> get copyWith =>
      __$GetAuthorizedCopyWithImpl<_GetAuthorized>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetAuthorizedToJson(this);
  }
}

abstract class _GetAuthorized implements GetAuthorized {
  factory _GetAuthorized({required ProviderName provider}) = _$_GetAuthorized;

  factory _GetAuthorized.fromJson(Map<String, dynamic> json) =
      _$_GetAuthorized.fromJson;

  @override
  ProviderName get provider => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetAuthorizedCopyWith<_GetAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}
