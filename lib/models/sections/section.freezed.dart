// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Section _$SectionFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
class _$SectionTearOff {
  const _$SectionTearOff();

  _Section call(
      {required String name,
      required String folderId,
      required String useCasesDocId}) {
    return _Section(
      name: name,
      folderId: folderId,
      useCasesDocId: useCasesDocId,
    );
  }

  Section fromJson(Map<String, Object> json) {
    return Section.fromJson(json);
  }
}

/// @nodoc
const $Section = _$SectionTearOff();

/// @nodoc
mixin _$Section {
  String get name => throw _privateConstructorUsedError;
  String get folderId => throw _privateConstructorUsedError;
  String get useCasesDocId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res>;
  $Res call({String name, String folderId, String useCasesDocId});
}

/// @nodoc
class _$SectionCopyWithImpl<$Res> implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  final Section _value;
  // ignore: unused_field
  final $Res Function(Section) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? folderId = freezed,
    Object? useCasesDocId = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      folderId: folderId == freezed ? _value.folderId : folderId as String,
      useCasesDocId: useCasesDocId == freezed
          ? _value.useCasesDocId
          : useCasesDocId as String,
    ));
  }
}

/// @nodoc
abstract class _$SectionCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$SectionCopyWith(_Section value, $Res Function(_Section) then) =
      __$SectionCopyWithImpl<$Res>;
  @override
  $Res call({String name, String folderId, String useCasesDocId});
}

/// @nodoc
class __$SectionCopyWithImpl<$Res> extends _$SectionCopyWithImpl<$Res>
    implements _$SectionCopyWith<$Res> {
  __$SectionCopyWithImpl(_Section _value, $Res Function(_Section) _then)
      : super(_value, (v) => _then(v as _Section));

  @override
  _Section get _value => super._value as _Section;

  @override
  $Res call({
    Object? name = freezed,
    Object? folderId = freezed,
    Object? useCasesDocId = freezed,
  }) {
    return _then(_Section(
      name: name == freezed ? _value.name : name as String,
      folderId: folderId == freezed ? _value.folderId : folderId as String,
      useCasesDocId: useCasesDocId == freezed
          ? _value.useCasesDocId
          : useCasesDocId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Section implements _Section {
  _$_Section(
      {required this.name,
      required this.folderId,
      required this.useCasesDocId});

  factory _$_Section.fromJson(Map<String, dynamic> json) =>
      _$_$_SectionFromJson(json);

  @override
  final String name;
  @override
  final String folderId;
  @override
  final String useCasesDocId;

  @override
  String toString() {
    return 'Section(name: $name, folderId: $folderId, useCasesDocId: $useCasesDocId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Section &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)) &&
            (identical(other.useCasesDocId, useCasesDocId) ||
                const DeepCollectionEquality()
                    .equals(other.useCasesDocId, useCasesDocId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(folderId) ^
      const DeepCollectionEquality().hash(useCasesDocId);

  @JsonKey(ignore: true)
  @override
  _$SectionCopyWith<_Section> get copyWith =>
      __$SectionCopyWithImpl<_Section>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SectionToJson(this);
  }
}

abstract class _Section implements Section {
  factory _Section(
      {required String name,
      required String folderId,
      required String useCasesDocId}) = _$_Section;

  factory _Section.fromJson(Map<String, dynamic> json) = _$_Section.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get folderId => throw _privateConstructorUsedError;
  @override
  String get useCasesDocId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SectionCopyWith<_Section> get copyWith =>
      throw _privateConstructorUsedError;
}
