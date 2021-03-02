// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Problem _$ProblemFromJson(Map<String, dynamic> json) {
  return _Problem.fromJson(json);
}

/// @nodoc
class _$ProblemTearOff {
  const _$ProblemTearOff();

  _Problem call(
      {required String errorString,
      String? traceString,
      Map<String, Object>? info}) {
    return _Problem(
      errorString: errorString,
      traceString: traceString,
      info: info,
    );
  }

  Problem fromJson(Map<String, Object> json) {
    return Problem.fromJson(json);
  }
}

/// @nodoc
const $Problem = _$ProblemTearOff();

/// @nodoc
mixin _$Problem {
  String get errorString => throw _privateConstructorUsedError;
  String? get traceString => throw _privateConstructorUsedError;
  Map<String, Object>? get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProblemCopyWith<Problem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProblemCopyWith<$Res> {
  factory $ProblemCopyWith(Problem value, $Res Function(Problem) then) =
      _$ProblemCopyWithImpl<$Res>;
  $Res call(
      {String errorString, String? traceString, Map<String, Object>? info});
}

/// @nodoc
class _$ProblemCopyWithImpl<$Res> implements $ProblemCopyWith<$Res> {
  _$ProblemCopyWithImpl(this._value, this._then);

  final Problem _value;
  // ignore: unused_field
  final $Res Function(Problem) _then;

  @override
  $Res call({
    Object? errorString = freezed,
    Object? traceString = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      errorString:
          errorString == freezed ? _value.errorString : errorString as String,
      traceString:
          traceString == freezed ? _value.traceString : traceString as String?,
      info: info == freezed ? _value.info : info as Map<String, Object>?,
    ));
  }
}

/// @nodoc
abstract class _$ProblemCopyWith<$Res> implements $ProblemCopyWith<$Res> {
  factory _$ProblemCopyWith(_Problem value, $Res Function(_Problem) then) =
      __$ProblemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String errorString, String? traceString, Map<String, Object>? info});
}

/// @nodoc
class __$ProblemCopyWithImpl<$Res> extends _$ProblemCopyWithImpl<$Res>
    implements _$ProblemCopyWith<$Res> {
  __$ProblemCopyWithImpl(_Problem _value, $Res Function(_Problem) _then)
      : super(_value, (v) => _then(v as _Problem));

  @override
  _Problem get _value => super._value as _Problem;

  @override
  $Res call({
    Object? errorString = freezed,
    Object? traceString = freezed,
    Object? info = freezed,
  }) {
    return _then(_Problem(
      errorString:
          errorString == freezed ? _value.errorString : errorString as String,
      traceString:
          traceString == freezed ? _value.traceString : traceString as String?,
      info: info == freezed ? _value.info : info as Map<String, Object>?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Problem implements _Problem {
  _$_Problem({required this.errorString, this.traceString, this.info});

  factory _$_Problem.fromJson(Map<String, dynamic> json) =>
      _$_$_ProblemFromJson(json);

  @override
  final String errorString;
  @override
  final String? traceString;
  @override
  final Map<String, Object>? info;

  @override
  String toString() {
    return 'Problem(errorString: $errorString, traceString: $traceString, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Problem &&
            (identical(other.errorString, errorString) ||
                const DeepCollectionEquality()
                    .equals(other.errorString, errorString)) &&
            (identical(other.traceString, traceString) ||
                const DeepCollectionEquality()
                    .equals(other.traceString, traceString)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorString) ^
      const DeepCollectionEquality().hash(traceString) ^
      const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$ProblemCopyWith<_Problem> get copyWith =>
      __$ProblemCopyWithImpl<_Problem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProblemToJson(this);
  }
}

abstract class _Problem implements Problem {
  factory _Problem(
      {required String errorString,
      String? traceString,
      Map<String, Object>? info}) = _$_Problem;

  factory _Problem.fromJson(Map<String, dynamic> json) = _$_Problem.fromJson;

  @override
  String get errorString => throw _privateConstructorUsedError;
  @override
  String? get traceString => throw _privateConstructorUsedError;
  @override
  Map<String, Object>? get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProblemCopyWith<_Problem> get copyWith =>
      throw _privateConstructorUsedError;
}
