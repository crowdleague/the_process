// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'plumb_streams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlumbStreams _$PlumbStreamsFromJson(Map<String, dynamic> json) {
  return _PlumbStreams.fromJson(json);
}

/// @nodoc
class _$PlumbStreamsTearOff {
  const _$PlumbStreamsTearOff();

  _PlumbStreams call() {
    return _PlumbStreams();
  }

  PlumbStreams fromJson(Map<String, Object> json) {
    return PlumbStreams.fromJson(json);
  }
}

/// @nodoc
const $PlumbStreams = _$PlumbStreamsTearOff();

/// @nodoc
mixin _$PlumbStreams {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlumbStreamsCopyWith<$Res> {
  factory $PlumbStreamsCopyWith(
          PlumbStreams value, $Res Function(PlumbStreams) then) =
      _$PlumbStreamsCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlumbStreamsCopyWithImpl<$Res> implements $PlumbStreamsCopyWith<$Res> {
  _$PlumbStreamsCopyWithImpl(this._value, this._then);

  final PlumbStreams _value;
  // ignore: unused_field
  final $Res Function(PlumbStreams) _then;
}

/// @nodoc
abstract class _$PlumbStreamsCopyWith<$Res> {
  factory _$PlumbStreamsCopyWith(
          _PlumbStreams value, $Res Function(_PlumbStreams) then) =
      __$PlumbStreamsCopyWithImpl<$Res>;
}

/// @nodoc
class __$PlumbStreamsCopyWithImpl<$Res> extends _$PlumbStreamsCopyWithImpl<$Res>
    implements _$PlumbStreamsCopyWith<$Res> {
  __$PlumbStreamsCopyWithImpl(
      _PlumbStreams _value, $Res Function(_PlumbStreams) _then)
      : super(_value, (v) => _then(v as _PlumbStreams));

  @override
  _PlumbStreams get _value => super._value as _PlumbStreams;
}

@JsonSerializable()

/// @nodoc
class _$_PlumbStreams implements _PlumbStreams {
  _$_PlumbStreams();

  factory _$_PlumbStreams.fromJson(Map<String, dynamic> json) =>
      _$_$_PlumbStreamsFromJson(json);

  @override
  String toString() {
    return 'PlumbStreams()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PlumbStreams);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlumbStreamsToJson(this);
  }
}

abstract class _PlumbStreams implements PlumbStreams {
  factory _PlumbStreams() = _$_PlumbStreams;

  factory _PlumbStreams.fromJson(Map<String, dynamic> json) =
      _$_PlumbStreams.fromJson;
}
