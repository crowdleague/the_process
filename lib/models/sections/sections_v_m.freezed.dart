// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sections_v_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionsVM _$SectionsVMFromJson(Map<String, dynamic> json) {
  return _SectionsVM.fromJson(json);
}

/// @nodoc
class _$SectionsVMTearOff {
  const _$SectionsVMTearOff();

  _SectionsVM call(
      {required NewSectionVM newSection,
      required List<Section> list,
      required bool creatingNewSection}) {
    return _SectionsVM(
      newSection: newSection,
      list: list,
      creatingNewSection: creatingNewSection,
    );
  }

  SectionsVM fromJson(Map<String, Object> json) {
    return SectionsVM.fromJson(json);
  }
}

/// @nodoc
const $SectionsVM = _$SectionsVMTearOff();

/// @nodoc
mixin _$SectionsVM {
  NewSectionVM get newSection => throw _privateConstructorUsedError;
  List<Section> get list => throw _privateConstructorUsedError;
  bool get creatingNewSection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionsVMCopyWith<SectionsVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsVMCopyWith<$Res> {
  factory $SectionsVMCopyWith(
          SectionsVM value, $Res Function(SectionsVM) then) =
      _$SectionsVMCopyWithImpl<$Res>;
  $Res call(
      {NewSectionVM newSection, List<Section> list, bool creatingNewSection});

  $NewSectionVMCopyWith<$Res> get newSection;
}

/// @nodoc
class _$SectionsVMCopyWithImpl<$Res> implements $SectionsVMCopyWith<$Res> {
  _$SectionsVMCopyWithImpl(this._value, this._then);

  final SectionsVM _value;
  // ignore: unused_field
  final $Res Function(SectionsVM) _then;

  @override
  $Res call({
    Object? newSection = freezed,
    Object? list = freezed,
    Object? creatingNewSection = freezed,
  }) {
    return _then(_value.copyWith(
      newSection: newSection == freezed
          ? _value.newSection
          : newSection as NewSectionVM,
      list: list == freezed ? _value.list : list as List<Section>,
      creatingNewSection: creatingNewSection == freezed
          ? _value.creatingNewSection
          : creatingNewSection as bool,
    ));
  }

  @override
  $NewSectionVMCopyWith<$Res> get newSection {
    return $NewSectionVMCopyWith<$Res>(_value.newSection, (value) {
      return _then(_value.copyWith(newSection: value));
    });
  }
}

/// @nodoc
abstract class _$SectionsVMCopyWith<$Res> implements $SectionsVMCopyWith<$Res> {
  factory _$SectionsVMCopyWith(
          _SectionsVM value, $Res Function(_SectionsVM) then) =
      __$SectionsVMCopyWithImpl<$Res>;
  @override
  $Res call(
      {NewSectionVM newSection, List<Section> list, bool creatingNewSection});

  @override
  $NewSectionVMCopyWith<$Res> get newSection;
}

/// @nodoc
class __$SectionsVMCopyWithImpl<$Res> extends _$SectionsVMCopyWithImpl<$Res>
    implements _$SectionsVMCopyWith<$Res> {
  __$SectionsVMCopyWithImpl(
      _SectionsVM _value, $Res Function(_SectionsVM) _then)
      : super(_value, (v) => _then(v as _SectionsVM));

  @override
  _SectionsVM get _value => super._value as _SectionsVM;

  @override
  $Res call({
    Object? newSection = freezed,
    Object? list = freezed,
    Object? creatingNewSection = freezed,
  }) {
    return _then(_SectionsVM(
      newSection: newSection == freezed
          ? _value.newSection
          : newSection as NewSectionVM,
      list: list == freezed ? _value.list : list as List<Section>,
      creatingNewSection: creatingNewSection == freezed
          ? _value.creatingNewSection
          : creatingNewSection as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SectionsVM implements _SectionsVM {
  _$_SectionsVM(
      {required this.newSection,
      required this.list,
      required this.creatingNewSection});

  factory _$_SectionsVM.fromJson(Map<String, dynamic> json) =>
      _$_$_SectionsVMFromJson(json);

  @override
  final NewSectionVM newSection;
  @override
  final List<Section> list;
  @override
  final bool creatingNewSection;

  @override
  String toString() {
    return 'SectionsVM(newSection: $newSection, list: $list, creatingNewSection: $creatingNewSection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SectionsVM &&
            (identical(other.newSection, newSection) ||
                const DeepCollectionEquality()
                    .equals(other.newSection, newSection)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.creatingNewSection, creatingNewSection) ||
                const DeepCollectionEquality()
                    .equals(other.creatingNewSection, creatingNewSection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newSection) ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(creatingNewSection);

  @JsonKey(ignore: true)
  @override
  _$SectionsVMCopyWith<_SectionsVM> get copyWith =>
      __$SectionsVMCopyWithImpl<_SectionsVM>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SectionsVMToJson(this);
  }
}

abstract class _SectionsVM implements SectionsVM {
  factory _SectionsVM(
      {required NewSectionVM newSection,
      required List<Section> list,
      required bool creatingNewSection}) = _$_SectionsVM;

  factory _SectionsVM.fromJson(Map<String, dynamic> json) =
      _$_SectionsVM.fromJson;

  @override
  NewSectionVM get newSection => throw _privateConstructorUsedError;
  @override
  List<Section> get list => throw _privateConstructorUsedError;
  @override
  bool get creatingNewSection => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SectionsVMCopyWith<_SectionsVM> get copyWith =>
      throw _privateConstructorUsedError;
}
