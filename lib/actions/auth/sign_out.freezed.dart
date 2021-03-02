// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_out.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignOut _$SignOutFromJson(Map<String, dynamic> json) {
  return _SignOut.fromJson(json);
}

/// @nodoc
class _$SignOutTearOff {
  const _$SignOutTearOff();

  _SignOut call() {
    return _SignOut();
  }

  SignOut fromJson(Map<String, Object> json) {
    return SignOut.fromJson(json);
  }
}

/// @nodoc
const $SignOut = _$SignOutTearOff();

/// @nodoc
mixin _$SignOut {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res> implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(this._value, this._then);

  final SignOut _value;
  // ignore: unused_field
  final $Res Function(SignOut) _then;
}

/// @nodoc
abstract class _$SignOutCopyWith<$Res> {
  factory _$SignOutCopyWith(_SignOut value, $Res Function(_SignOut) then) =
      __$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutCopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements _$SignOutCopyWith<$Res> {
  __$SignOutCopyWithImpl(_SignOut _value, $Res Function(_SignOut) _then)
      : super(_value, (v) => _then(v as _SignOut));

  @override
  _SignOut get _value => super._value as _SignOut;
}

@JsonSerializable()

/// @nodoc
class _$_SignOut implements _SignOut {
  _$_SignOut();

  factory _$_SignOut.fromJson(Map<String, dynamic> json) =>
      _$_$_SignOutFromJson(json);

  @override
  String toString() {
    return 'SignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignOutToJson(this);
  }
}

abstract class _SignOut implements SignOut {
  factory _SignOut() = _$_SignOut;

  factory _SignOut.fromJson(Map<String, dynamic> json) = _$_SignOut.fromJson;
}
