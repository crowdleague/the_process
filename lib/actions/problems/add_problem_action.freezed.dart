// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_problem_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddProblemAction _$AddProblemActionFromJson(Map<String, dynamic> json) {
  return _AddProblemAction.fromJson(json);
}

/// @nodoc
class _$AddProblemActionTearOff {
  const _$AddProblemActionTearOff();

  _AddProblemAction call(
      {required String errorString,
      String? traceString,
      Map<String, Object>? info}) {
    return _AddProblemAction(
      errorString: errorString,
      traceString: traceString,
      info: info,
    );
  }

  AddProblemAction fromJson(Map<String, Object> json) {
    return AddProblemAction.fromJson(json);
  }
}

/// @nodoc
const $AddProblemAction = _$AddProblemActionTearOff();

/// @nodoc
mixin _$AddProblemAction {
  String get errorString => throw _privateConstructorUsedError;
  String? get traceString => throw _privateConstructorUsedError;
  Map<String, Object>? get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddProblemActionCopyWith<AddProblemAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProblemActionCopyWith<$Res> {
  factory $AddProblemActionCopyWith(
          AddProblemAction value, $Res Function(AddProblemAction) then) =
      _$AddProblemActionCopyWithImpl<$Res>;
  $Res call(
      {String errorString, String? traceString, Map<String, Object>? info});
}

/// @nodoc
class _$AddProblemActionCopyWithImpl<$Res>
    implements $AddProblemActionCopyWith<$Res> {
  _$AddProblemActionCopyWithImpl(this._value, this._then);

  final AddProblemAction _value;
  // ignore: unused_field
  final $Res Function(AddProblemAction) _then;

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
abstract class _$AddProblemActionCopyWith<$Res>
    implements $AddProblemActionCopyWith<$Res> {
  factory _$AddProblemActionCopyWith(
          _AddProblemAction value, $Res Function(_AddProblemAction) then) =
      __$AddProblemActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String errorString, String? traceString, Map<String, Object>? info});
}

/// @nodoc
class __$AddProblemActionCopyWithImpl<$Res>
    extends _$AddProblemActionCopyWithImpl<$Res>
    implements _$AddProblemActionCopyWith<$Res> {
  __$AddProblemActionCopyWithImpl(
      _AddProblemAction _value, $Res Function(_AddProblemAction) _then)
      : super(_value, (v) => _then(v as _AddProblemAction));

  @override
  _AddProblemAction get _value => super._value as _AddProblemAction;

  @override
  $Res call({
    Object? errorString = freezed,
    Object? traceString = freezed,
    Object? info = freezed,
  }) {
    return _then(_AddProblemAction(
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
class _$_AddProblemAction extends _AddProblemAction {
  _$_AddProblemAction({required this.errorString, this.traceString, this.info})
      : super._();

  factory _$_AddProblemAction.fromJson(Map<String, dynamic> json) =>
      _$_$_AddProblemActionFromJson(json);

  @override
  final String errorString;
  @override
  final String? traceString;
  @override
  final Map<String, Object>? info;

  @override
  String toString() {
    return 'AddProblemAction(errorString: $errorString, traceString: $traceString, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddProblemAction &&
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
  _$AddProblemActionCopyWith<_AddProblemAction> get copyWith =>
      __$AddProblemActionCopyWithImpl<_AddProblemAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddProblemActionToJson(this);
  }
}

abstract class _AddProblemAction extends AddProblemAction {
  _AddProblemAction._() : super._();
  factory _AddProblemAction(
      {required String errorString,
      String? traceString,
      Map<String, Object>? info}) = _$_AddProblemAction;

  factory _AddProblemAction.fromJson(Map<String, dynamic> json) =
      _$_AddProblemAction.fromJson;

  @override
  String get errorString => throw _privateConstructorUsedError;
  @override
  String? get traceString => throw _privateConstructorUsedError;
  @override
  Map<String, Object>? get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddProblemActionCopyWith<_AddProblemAction> get copyWith =>
      throw _privateConstructorUsedError;
}
