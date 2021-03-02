// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'new_section_v_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewSectionVM _$NewSectionVMFromJson(Map<String, dynamic> json) {
  return _NewSectionVM.fromJson(json);
}

/// @nodoc
class _$NewSectionVMTearOff {
  const _$NewSectionVMTearOff();

  _NewSectionVM call({required String name}) {
    return _NewSectionVM(
      name: name,
    );
  }

  NewSectionVM fromJson(Map<String, Object> json) {
    return NewSectionVM.fromJson(json);
  }
}

/// @nodoc
const $NewSectionVM = _$NewSectionVMTearOff();

/// @nodoc
mixin _$NewSectionVM {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewSectionVMCopyWith<NewSectionVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewSectionVMCopyWith<$Res> {
  factory $NewSectionVMCopyWith(
          NewSectionVM value, $Res Function(NewSectionVM) then) =
      _$NewSectionVMCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NewSectionVMCopyWithImpl<$Res> implements $NewSectionVMCopyWith<$Res> {
  _$NewSectionVMCopyWithImpl(this._value, this._then);

  final NewSectionVM _value;
  // ignore: unused_field
  final $Res Function(NewSectionVM) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$NewSectionVMCopyWith<$Res>
    implements $NewSectionVMCopyWith<$Res> {
  factory _$NewSectionVMCopyWith(
          _NewSectionVM value, $Res Function(_NewSectionVM) then) =
      __$NewSectionVMCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$NewSectionVMCopyWithImpl<$Res> extends _$NewSectionVMCopyWithImpl<$Res>
    implements _$NewSectionVMCopyWith<$Res> {
  __$NewSectionVMCopyWithImpl(
      _NewSectionVM _value, $Res Function(_NewSectionVM) _then)
      : super(_value, (v) => _then(v as _NewSectionVM));

  @override
  _NewSectionVM get _value => super._value as _NewSectionVM;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NewSectionVM(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NewSectionVM implements _NewSectionVM {
  _$_NewSectionVM({required this.name});

  factory _$_NewSectionVM.fromJson(Map<String, dynamic> json) =>
      _$_$_NewSectionVMFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'NewSectionVM(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewSectionVM &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NewSectionVMCopyWith<_NewSectionVM> get copyWith =>
      __$NewSectionVMCopyWithImpl<_NewSectionVM>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewSectionVMToJson(this);
  }
}

abstract class _NewSectionVM implements NewSectionVM {
  factory _NewSectionVM({required String name}) = _$_NewSectionVM;

  factory _NewSectionVM.fromJson(Map<String, dynamic> json) =
      _$_NewSectionVM.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewSectionVMCopyWith<_NewSectionVM> get copyWith =>
      throw _privateConstructorUsedError;
}
