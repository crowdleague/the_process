// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) {
  return _ProfileData.fromJson(json);
}

/// @nodoc
class _$ProfileDataTearOff {
  const _$ProfileDataTearOff();

  _ProfileData call(
      {required String id,
      String? displayName,
      String? photoURL,
      String? firstName,
      String? lastName,
      required Map<ProviderName, AuthorizationStep> authorizationStatus}) {
    return _ProfileData(
      id: id,
      displayName: displayName,
      photoURL: photoURL,
      firstName: firstName,
      lastName: lastName,
      authorizationStatus: authorizationStatus,
    );
  }

  ProfileData fromJson(Map<String, Object> json) {
    return ProfileData.fromJson(json);
  }
}

/// @nodoc
const $ProfileData = _$ProfileDataTearOff();

/// @nodoc
mixin _$ProfileData {
  String get id => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  Map<ProviderName, AuthorizationStep> get authorizationStatus =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDataCopyWith<ProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataCopyWith<$Res> {
  factory $ProfileDataCopyWith(
          ProfileData value, $Res Function(ProfileData) then) =
      _$ProfileDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? displayName,
      String? photoURL,
      String? firstName,
      String? lastName,
      Map<ProviderName, AuthorizationStep> authorizationStatus});
}

/// @nodoc
class _$ProfileDataCopyWithImpl<$Res> implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._value, this._then);

  final ProfileData _value;
  // ignore: unused_field
  final $Res Function(ProfileData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? authorizationStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String?,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String?,
      firstName: firstName == freezed ? _value.firstName : firstName as String?,
      lastName: lastName == freezed ? _value.lastName : lastName as String?,
      authorizationStatus: authorizationStatus == freezed
          ? _value.authorizationStatus
          : authorizationStatus as Map<ProviderName, AuthorizationStep>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileDataCopyWith<$Res>
    implements $ProfileDataCopyWith<$Res> {
  factory _$ProfileDataCopyWith(
          _ProfileData value, $Res Function(_ProfileData) then) =
      __$ProfileDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? displayName,
      String? photoURL,
      String? firstName,
      String? lastName,
      Map<ProviderName, AuthorizationStep> authorizationStatus});
}

/// @nodoc
class __$ProfileDataCopyWithImpl<$Res> extends _$ProfileDataCopyWithImpl<$Res>
    implements _$ProfileDataCopyWith<$Res> {
  __$ProfileDataCopyWithImpl(
      _ProfileData _value, $Res Function(_ProfileData) _then)
      : super(_value, (v) => _then(v as _ProfileData));

  @override
  _ProfileData get _value => super._value as _ProfileData;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? authorizationStatus = freezed,
  }) {
    return _then(_ProfileData(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String?,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String?,
      firstName: firstName == freezed ? _value.firstName : firstName as String?,
      lastName: lastName == freezed ? _value.lastName : lastName as String?,
      authorizationStatus: authorizationStatus == freezed
          ? _value.authorizationStatus
          : authorizationStatus as Map<ProviderName, AuthorizationStep>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProfileData implements _ProfileData {
  _$_ProfileData(
      {required this.id,
      this.displayName,
      this.photoURL,
      this.firstName,
      this.lastName,
      required this.authorizationStatus});

  factory _$_ProfileData.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileDataFromJson(json);

  @override
  final String id;
  @override
  final String? displayName;
  @override
  final String? photoURL;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final Map<ProviderName, AuthorizationStep> authorizationStatus;

  @override
  String toString() {
    return 'ProfileData(id: $id, displayName: $displayName, photoURL: $photoURL, firstName: $firstName, lastName: $lastName, authorizationStatus: $authorizationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.authorizationStatus, authorizationStatus) ||
                const DeepCollectionEquality()
                    .equals(other.authorizationStatus, authorizationStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(authorizationStatus);

  @JsonKey(ignore: true)
  @override
  _$ProfileDataCopyWith<_ProfileData> get copyWith =>
      __$ProfileDataCopyWithImpl<_ProfileData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileDataToJson(this);
  }
}

abstract class _ProfileData implements ProfileData {
  factory _ProfileData(
          {required String id,
          String? displayName,
          String? photoURL,
          String? firstName,
          String? lastName,
          required Map<ProviderName, AuthorizationStep> authorizationStatus}) =
      _$_ProfileData;

  factory _ProfileData.fromJson(Map<String, dynamic> json) =
      _$_ProfileData.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get displayName => throw _privateConstructorUsedError;
  @override
  String? get photoURL => throw _privateConstructorUsedError;
  @override
  String? get firstName => throw _privateConstructorUsedError;
  @override
  String? get lastName => throw _privateConstructorUsedError;
  @override
  Map<ProviderName, AuthorizationStep> get authorizationStatus =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileDataCopyWith<_ProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}
