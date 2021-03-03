// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'connect_database.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConnectDatabase _$ConnectDatabaseFromJson(Map<String, dynamic> json) {
  return _ConnectDatabase.fromJson(json);
}

/// @nodoc
class _$ConnectDatabaseTearOff {
  const _$ConnectDatabaseTearOff();

  _ConnectDatabase call({required DatabaseSection section}) {
    return _ConnectDatabase(
      section: section,
    );
  }

  ConnectDatabase fromJson(Map<String, Object> json) {
    return ConnectDatabase.fromJson(json);
  }
}

/// @nodoc
const $ConnectDatabase = _$ConnectDatabaseTearOff();

/// @nodoc
mixin _$ConnectDatabase {
  DatabaseSection get section => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectDatabaseCopyWith<ConnectDatabase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectDatabaseCopyWith<$Res> {
  factory $ConnectDatabaseCopyWith(
          ConnectDatabase value, $Res Function(ConnectDatabase) then) =
      _$ConnectDatabaseCopyWithImpl<$Res>;
  $Res call({DatabaseSection section});
}

/// @nodoc
class _$ConnectDatabaseCopyWithImpl<$Res>
    implements $ConnectDatabaseCopyWith<$Res> {
  _$ConnectDatabaseCopyWithImpl(this._value, this._then);

  final ConnectDatabase _value;
  // ignore: unused_field
  final $Res Function(ConnectDatabase) _then;

  @override
  $Res call({
    Object? section = freezed,
  }) {
    return _then(_value.copyWith(
      section: section == freezed ? _value.section : section as DatabaseSection,
    ));
  }
}

/// @nodoc
abstract class _$ConnectDatabaseCopyWith<$Res>
    implements $ConnectDatabaseCopyWith<$Res> {
  factory _$ConnectDatabaseCopyWith(
          _ConnectDatabase value, $Res Function(_ConnectDatabase) then) =
      __$ConnectDatabaseCopyWithImpl<$Res>;
  @override
  $Res call({DatabaseSection section});
}

/// @nodoc
class __$ConnectDatabaseCopyWithImpl<$Res>
    extends _$ConnectDatabaseCopyWithImpl<$Res>
    implements _$ConnectDatabaseCopyWith<$Res> {
  __$ConnectDatabaseCopyWithImpl(
      _ConnectDatabase _value, $Res Function(_ConnectDatabase) _then)
      : super(_value, (v) => _then(v as _ConnectDatabase));

  @override
  _ConnectDatabase get _value => super._value as _ConnectDatabase;

  @override
  $Res call({
    Object? section = freezed,
  }) {
    return _then(_ConnectDatabase(
      section: section == freezed ? _value.section : section as DatabaseSection,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ConnectDatabase implements _ConnectDatabase {
  _$_ConnectDatabase({required this.section});

  factory _$_ConnectDatabase.fromJson(Map<String, dynamic> json) =>
      _$_$_ConnectDatabaseFromJson(json);

  @override
  final DatabaseSection section;

  @override
  String toString() {
    return 'ConnectDatabase(section: $section)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConnectDatabase &&
            (identical(other.section, section) ||
                const DeepCollectionEquality().equals(other.section, section)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(section);

  @JsonKey(ignore: true)
  @override
  _$ConnectDatabaseCopyWith<_ConnectDatabase> get copyWith =>
      __$ConnectDatabaseCopyWithImpl<_ConnectDatabase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConnectDatabaseToJson(this);
  }
}

abstract class _ConnectDatabase implements ConnectDatabase {
  factory _ConnectDatabase({required DatabaseSection section}) =
      _$_ConnectDatabase;

  factory _ConnectDatabase.fromJson(Map<String, dynamic> json) =
      _$_ConnectDatabase.fromJson;

  @override
  DatabaseSection get section => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConnectDatabaseCopyWith<_ConnectDatabase> get copyWith =>
      throw _privateConstructorUsedError;
}
