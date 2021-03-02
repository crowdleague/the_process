// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'store_auth_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreAuthStep _$StoreAuthStepFromJson(Map<String, dynamic> json) {
  return _StoreAuthStep.fromJson(json);
}

/// @nodoc
class _$StoreAuthStepTearOff {
  const _$StoreAuthStepTearOff();

  _StoreAuthStep call({required AuthStep step}) {
    return _StoreAuthStep(
      step: step,
    );
  }

  StoreAuthStep fromJson(Map<String, Object> json) {
    return StoreAuthStep.fromJson(json);
  }
}

/// @nodoc
const $StoreAuthStep = _$StoreAuthStepTearOff();

/// @nodoc
mixin _$StoreAuthStep {
  AuthStep get step => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreAuthStepCopyWith<StoreAuthStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreAuthStepCopyWith<$Res> {
  factory $StoreAuthStepCopyWith(
          StoreAuthStep value, $Res Function(StoreAuthStep) then) =
      _$StoreAuthStepCopyWithImpl<$Res>;
  $Res call({AuthStep step});
}

/// @nodoc
class _$StoreAuthStepCopyWithImpl<$Res>
    implements $StoreAuthStepCopyWith<$Res> {
  _$StoreAuthStepCopyWithImpl(this._value, this._then);

  final StoreAuthStep _value;
  // ignore: unused_field
  final $Res Function(StoreAuthStep) _then;

  @override
  $Res call({
    Object? step = freezed,
  }) {
    return _then(_value.copyWith(
      step: step == freezed ? _value.step : step as AuthStep,
    ));
  }
}

/// @nodoc
abstract class _$StoreAuthStepCopyWith<$Res>
    implements $StoreAuthStepCopyWith<$Res> {
  factory _$StoreAuthStepCopyWith(
          _StoreAuthStep value, $Res Function(_StoreAuthStep) then) =
      __$StoreAuthStepCopyWithImpl<$Res>;
  @override
  $Res call({AuthStep step});
}

/// @nodoc
class __$StoreAuthStepCopyWithImpl<$Res>
    extends _$StoreAuthStepCopyWithImpl<$Res>
    implements _$StoreAuthStepCopyWith<$Res> {
  __$StoreAuthStepCopyWithImpl(
      _StoreAuthStep _value, $Res Function(_StoreAuthStep) _then)
      : super(_value, (v) => _then(v as _StoreAuthStep));

  @override
  _StoreAuthStep get _value => super._value as _StoreAuthStep;

  @override
  $Res call({
    Object? step = freezed,
  }) {
    return _then(_StoreAuthStep(
      step: step == freezed ? _value.step : step as AuthStep,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StoreAuthStep implements _StoreAuthStep {
  _$_StoreAuthStep({required this.step});

  factory _$_StoreAuthStep.fromJson(Map<String, dynamic> json) =>
      _$_$_StoreAuthStepFromJson(json);

  @override
  final AuthStep step;

  @override
  String toString() {
    return 'StoreAuthStep(step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreAuthStep &&
            (identical(other.step, step) ||
                const DeepCollectionEquality().equals(other.step, step)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(step);

  @JsonKey(ignore: true)
  @override
  _$StoreAuthStepCopyWith<_StoreAuthStep> get copyWith =>
      __$StoreAuthStepCopyWithImpl<_StoreAuthStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StoreAuthStepToJson(this);
  }
}

abstract class _StoreAuthStep implements StoreAuthStep {
  factory _StoreAuthStep({required AuthStep step}) = _$_StoreAuthStep;

  factory _StoreAuthStep.fromJson(Map<String, dynamic> json) =
      _$_StoreAuthStep.fromJson;

  @override
  AuthStep get step => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreAuthStepCopyWith<_StoreAuthStep> get copyWith =>
      throw _privateConstructorUsedError;
}
