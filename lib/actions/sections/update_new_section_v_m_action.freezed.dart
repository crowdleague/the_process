// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_new_section_v_m_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateNewSectionVMAction _$UpdateNewSectionVMActionFromJson(
    Map<String, dynamic> json) {
  return _UpdateNewSectionVMAction.fromJson(json);
}

/// @nodoc
class _$UpdateNewSectionVMActionTearOff {
  const _$UpdateNewSectionVMActionTearOff();

  _UpdateNewSectionVMAction call({String? name}) {
    return _UpdateNewSectionVMAction(
      name: name,
    );
  }

  UpdateNewSectionVMAction fromJson(Map<String, Object> json) {
    return UpdateNewSectionVMAction.fromJson(json);
  }
}

/// @nodoc
const $UpdateNewSectionVMAction = _$UpdateNewSectionVMActionTearOff();

/// @nodoc
mixin _$UpdateNewSectionVMAction {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateNewSectionVMActionCopyWith<UpdateNewSectionVMAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNewSectionVMActionCopyWith<$Res> {
  factory $UpdateNewSectionVMActionCopyWith(UpdateNewSectionVMAction value,
          $Res Function(UpdateNewSectionVMAction) then) =
      _$UpdateNewSectionVMActionCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class _$UpdateNewSectionVMActionCopyWithImpl<$Res>
    implements $UpdateNewSectionVMActionCopyWith<$Res> {
  _$UpdateNewSectionVMActionCopyWithImpl(this._value, this._then);

  final UpdateNewSectionVMAction _value;
  // ignore: unused_field
  final $Res Function(UpdateNewSectionVMAction) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String?,
    ));
  }
}

/// @nodoc
abstract class _$UpdateNewSectionVMActionCopyWith<$Res>
    implements $UpdateNewSectionVMActionCopyWith<$Res> {
  factory _$UpdateNewSectionVMActionCopyWith(_UpdateNewSectionVMAction value,
          $Res Function(_UpdateNewSectionVMAction) then) =
      __$UpdateNewSectionVMActionCopyWithImpl<$Res>;
  @override
  $Res call({String? name});
}

/// @nodoc
class __$UpdateNewSectionVMActionCopyWithImpl<$Res>
    extends _$UpdateNewSectionVMActionCopyWithImpl<$Res>
    implements _$UpdateNewSectionVMActionCopyWith<$Res> {
  __$UpdateNewSectionVMActionCopyWithImpl(_UpdateNewSectionVMAction _value,
      $Res Function(_UpdateNewSectionVMAction) _then)
      : super(_value, (v) => _then(v as _UpdateNewSectionVMAction));

  @override
  _UpdateNewSectionVMAction get _value =>
      super._value as _UpdateNewSectionVMAction;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_UpdateNewSectionVMAction(
      name: name == freezed ? _value.name : name as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UpdateNewSectionVMAction implements _UpdateNewSectionVMAction {
  _$_UpdateNewSectionVMAction({this.name});

  factory _$_UpdateNewSectionVMAction.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateNewSectionVMActionFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'UpdateNewSectionVMAction(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateNewSectionVMAction &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$UpdateNewSectionVMActionCopyWith<_UpdateNewSectionVMAction> get copyWith =>
      __$UpdateNewSectionVMActionCopyWithImpl<_UpdateNewSectionVMAction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateNewSectionVMActionToJson(this);
  }
}

abstract class _UpdateNewSectionVMAction implements UpdateNewSectionVMAction {
  factory _UpdateNewSectionVMAction({String? name}) =
      _$_UpdateNewSectionVMAction;

  factory _UpdateNewSectionVMAction.fromJson(Map<String, dynamic> json) =
      _$_UpdateNewSectionVMAction.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateNewSectionVMActionCopyWith<_UpdateNewSectionVMAction> get copyWith =>
      throw _privateConstructorUsedError;
}
