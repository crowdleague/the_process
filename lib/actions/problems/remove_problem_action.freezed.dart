// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'remove_problem_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoveProblemAction _$RemoveProblemActionFromJson(Map<String, dynamic> json) {
  return _RemoveProblemAction.fromJson(json);
}

/// @nodoc
class _$RemoveProblemActionTearOff {
  const _$RemoveProblemActionTearOff();

  _RemoveProblemAction call({required Problem problem}) {
    return _RemoveProblemAction(
      problem: problem,
    );
  }

  RemoveProblemAction fromJson(Map<String, Object> json) {
    return RemoveProblemAction.fromJson(json);
  }
}

/// @nodoc
const $RemoveProblemAction = _$RemoveProblemActionTearOff();

/// @nodoc
mixin _$RemoveProblemAction {
  Problem get problem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveProblemActionCopyWith<RemoveProblemAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveProblemActionCopyWith<$Res> {
  factory $RemoveProblemActionCopyWith(
          RemoveProblemAction value, $Res Function(RemoveProblemAction) then) =
      _$RemoveProblemActionCopyWithImpl<$Res>;
  $Res call({Problem problem});

  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class _$RemoveProblemActionCopyWithImpl<$Res>
    implements $RemoveProblemActionCopyWith<$Res> {
  _$RemoveProblemActionCopyWithImpl(this._value, this._then);

  final RemoveProblemAction _value;
  // ignore: unused_field
  final $Res Function(RemoveProblemAction) _then;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(_value.copyWith(
      problem: problem == freezed ? _value.problem : problem as Problem,
    ));
  }

  @override
  $ProblemCopyWith<$Res> get problem {
    return $ProblemCopyWith<$Res>(_value.problem, (value) {
      return _then(_value.copyWith(problem: value));
    });
  }
}

/// @nodoc
abstract class _$RemoveProblemActionCopyWith<$Res>
    implements $RemoveProblemActionCopyWith<$Res> {
  factory _$RemoveProblemActionCopyWith(_RemoveProblemAction value,
          $Res Function(_RemoveProblemAction) then) =
      __$RemoveProblemActionCopyWithImpl<$Res>;
  @override
  $Res call({Problem problem});

  @override
  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class __$RemoveProblemActionCopyWithImpl<$Res>
    extends _$RemoveProblemActionCopyWithImpl<$Res>
    implements _$RemoveProblemActionCopyWith<$Res> {
  __$RemoveProblemActionCopyWithImpl(
      _RemoveProblemAction _value, $Res Function(_RemoveProblemAction) _then)
      : super(_value, (v) => _then(v as _RemoveProblemAction));

  @override
  _RemoveProblemAction get _value => super._value as _RemoveProblemAction;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(_RemoveProblemAction(
      problem: problem == freezed ? _value.problem : problem as Problem,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RemoveProblemAction implements _RemoveProblemAction {
  _$_RemoveProblemAction({required this.problem});

  factory _$_RemoveProblemAction.fromJson(Map<String, dynamic> json) =>
      _$_$_RemoveProblemActionFromJson(json);

  @override
  final Problem problem;

  @override
  String toString() {
    return 'RemoveProblemAction(problem: $problem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveProblemAction &&
            (identical(other.problem, problem) ||
                const DeepCollectionEquality().equals(other.problem, problem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(problem);

  @JsonKey(ignore: true)
  @override
  _$RemoveProblemActionCopyWith<_RemoveProblemAction> get copyWith =>
      __$RemoveProblemActionCopyWithImpl<_RemoveProblemAction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RemoveProblemActionToJson(this);
  }
}

abstract class _RemoveProblemAction implements RemoveProblemAction {
  factory _RemoveProblemAction({required Problem problem}) =
      _$_RemoveProblemAction;

  factory _RemoveProblemAction.fromJson(Map<String, dynamic> json) =
      _$_RemoveProblemAction.fromJson;

  @override
  Problem get problem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RemoveProblemActionCopyWith<_RemoveProblemAction> get copyWith =>
      throw _privateConstructorUsedError;
}
