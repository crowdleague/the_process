// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_sections_v_m_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateSectionsVMAction _$UpdateSectionsVMActionFromJson(
    Map<String, dynamic> json) {
  return _UpdateSectionsVMAction.fromJson(json);
}

/// @nodoc
class _$UpdateSectionsVMActionTearOff {
  const _$UpdateSectionsVMActionTearOff();

  _UpdateSectionsVMAction call({required bool creatingNewSection}) {
    return _UpdateSectionsVMAction(
      creatingNewSection: creatingNewSection,
    );
  }

  UpdateSectionsVMAction fromJson(Map<String, Object> json) {
    return UpdateSectionsVMAction.fromJson(json);
  }
}

/// @nodoc
const $UpdateSectionsVMAction = _$UpdateSectionsVMActionTearOff();

/// @nodoc
mixin _$UpdateSectionsVMAction {
  bool get creatingNewSection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSectionsVMActionCopyWith<UpdateSectionsVMAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSectionsVMActionCopyWith<$Res> {
  factory $UpdateSectionsVMActionCopyWith(UpdateSectionsVMAction value,
          $Res Function(UpdateSectionsVMAction) then) =
      _$UpdateSectionsVMActionCopyWithImpl<$Res>;
  $Res call({bool creatingNewSection});
}

/// @nodoc
class _$UpdateSectionsVMActionCopyWithImpl<$Res>
    implements $UpdateSectionsVMActionCopyWith<$Res> {
  _$UpdateSectionsVMActionCopyWithImpl(this._value, this._then);

  final UpdateSectionsVMAction _value;
  // ignore: unused_field
  final $Res Function(UpdateSectionsVMAction) _then;

  @override
  $Res call({
    Object? creatingNewSection = freezed,
  }) {
    return _then(_value.copyWith(
      creatingNewSection: creatingNewSection == freezed
          ? _value.creatingNewSection
          : creatingNewSection as bool,
    ));
  }
}

/// @nodoc
abstract class _$UpdateSectionsVMActionCopyWith<$Res>
    implements $UpdateSectionsVMActionCopyWith<$Res> {
  factory _$UpdateSectionsVMActionCopyWith(_UpdateSectionsVMAction value,
          $Res Function(_UpdateSectionsVMAction) then) =
      __$UpdateSectionsVMActionCopyWithImpl<$Res>;
  @override
  $Res call({bool creatingNewSection});
}

/// @nodoc
class __$UpdateSectionsVMActionCopyWithImpl<$Res>
    extends _$UpdateSectionsVMActionCopyWithImpl<$Res>
    implements _$UpdateSectionsVMActionCopyWith<$Res> {
  __$UpdateSectionsVMActionCopyWithImpl(_UpdateSectionsVMAction _value,
      $Res Function(_UpdateSectionsVMAction) _then)
      : super(_value, (v) => _then(v as _UpdateSectionsVMAction));

  @override
  _UpdateSectionsVMAction get _value => super._value as _UpdateSectionsVMAction;

  @override
  $Res call({
    Object? creatingNewSection = freezed,
  }) {
    return _then(_UpdateSectionsVMAction(
      creatingNewSection: creatingNewSection == freezed
          ? _value.creatingNewSection
          : creatingNewSection as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UpdateSectionsVMAction implements _UpdateSectionsVMAction {
  _$_UpdateSectionsVMAction({required this.creatingNewSection});

  factory _$_UpdateSectionsVMAction.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateSectionsVMActionFromJson(json);

  @override
  final bool creatingNewSection;

  @override
  String toString() {
    return 'UpdateSectionsVMAction(creatingNewSection: $creatingNewSection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSectionsVMAction &&
            (identical(other.creatingNewSection, creatingNewSection) ||
                const DeepCollectionEquality()
                    .equals(other.creatingNewSection, creatingNewSection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(creatingNewSection);

  @JsonKey(ignore: true)
  @override
  _$UpdateSectionsVMActionCopyWith<_UpdateSectionsVMAction> get copyWith =>
      __$UpdateSectionsVMActionCopyWithImpl<_UpdateSectionsVMAction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateSectionsVMActionToJson(this);
  }
}

abstract class _UpdateSectionsVMAction implements UpdateSectionsVMAction {
  factory _UpdateSectionsVMAction({required bool creatingNewSection}) =
      _$_UpdateSectionsVMAction;

  factory _UpdateSectionsVMAction.fromJson(Map<String, dynamic> json) =
      _$_UpdateSectionsVMAction.fromJson;

  @override
  bool get creatingNewSection => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateSectionsVMActionCopyWith<_UpdateSectionsVMAction> get copyWith =>
      throw _privateConstructorUsedError;
}
