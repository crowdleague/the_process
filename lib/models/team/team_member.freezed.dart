// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'team_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeamMember _$TeamMemberFromJson(Map<String, dynamic> json) {
  return _TeamMember.fromJson(json);
}

/// @nodoc
class _$TeamMemberTearOff {
  const _$TeamMemberTearOff();

  _TeamMember call(
      {required String uid,
      required String firstName,
      required String lastName,
      required String displayName,
      required String photoURL}) {
    return _TeamMember(
      uid: uid,
      firstName: firstName,
      lastName: lastName,
      displayName: displayName,
      photoURL: photoURL,
    );
  }

  TeamMember fromJson(Map<String, Object> json) {
    return TeamMember.fromJson(json);
  }
}

/// @nodoc
const $TeamMember = _$TeamMemberTearOff();

/// @nodoc
mixin _$TeamMember {
  String get uid => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get photoURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamMemberCopyWith<TeamMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberCopyWith<$Res> {
  factory $TeamMemberCopyWith(
          TeamMember value, $Res Function(TeamMember) then) =
      _$TeamMemberCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String firstName,
      String lastName,
      String displayName,
      String photoURL});
}

/// @nodoc
class _$TeamMemberCopyWithImpl<$Res> implements $TeamMemberCopyWith<$Res> {
  _$TeamMemberCopyWithImpl(this._value, this._then);

  final TeamMember _value;
  // ignore: unused_field
  final $Res Function(TeamMember) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
    ));
  }
}

/// @nodoc
abstract class _$TeamMemberCopyWith<$Res> implements $TeamMemberCopyWith<$Res> {
  factory _$TeamMemberCopyWith(
          _TeamMember value, $Res Function(_TeamMember) then) =
      __$TeamMemberCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String firstName,
      String lastName,
      String displayName,
      String photoURL});
}

/// @nodoc
class __$TeamMemberCopyWithImpl<$Res> extends _$TeamMemberCopyWithImpl<$Res>
    implements _$TeamMemberCopyWith<$Res> {
  __$TeamMemberCopyWithImpl(
      _TeamMember _value, $Res Function(_TeamMember) _then)
      : super(_value, (v) => _then(v as _TeamMember));

  @override
  _TeamMember get _value => super._value as _TeamMember;

  @override
  $Res call({
    Object? uid = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_TeamMember(
      uid: uid == freezed ? _value.uid : uid as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TeamMember implements _TeamMember {
  _$_TeamMember(
      {required this.uid,
      required this.firstName,
      required this.lastName,
      required this.displayName,
      required this.photoURL});

  factory _$_TeamMember.fromJson(Map<String, dynamic> json) =>
      _$_$_TeamMemberFromJson(json);

  @override
  final String uid;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String displayName;
  @override
  final String photoURL;

  @override
  String toString() {
    return 'TeamMember(uid: $uid, firstName: $firstName, lastName: $lastName, displayName: $displayName, photoURL: $photoURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TeamMember &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(photoURL);

  @JsonKey(ignore: true)
  @override
  _$TeamMemberCopyWith<_TeamMember> get copyWith =>
      __$TeamMemberCopyWithImpl<_TeamMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TeamMemberToJson(this);
  }
}

abstract class _TeamMember implements TeamMember {
  factory _TeamMember(
      {required String uid,
      required String firstName,
      required String lastName,
      required String displayName,
      required String photoURL}) = _$_TeamMember;

  factory _TeamMember.fromJson(Map<String, dynamic> json) =
      _$_TeamMember.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get photoURL => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TeamMemberCopyWith<_TeamMember> get copyWith =>
      throw _privateConstructorUsedError;
}
