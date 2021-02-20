// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'google_user_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GoogleUserCredentials _$GoogleUserCredentialsFromJson(
    Map<String, dynamic> json) {
  return _GoogleUserCredentials.fromJson(json);
}

/// @nodoc
class _$GoogleUserCredentialsTearOff {
  const _$GoogleUserCredentialsTearOff();

  _GoogleUserCredentials call(
      {@JsonKey(name: 'refresh_token') required String refreshToken,
      @JsonKey(name: 'expiry_date') required int expiryDate,
      @JsonKey(name: 'access_token') required String accessToken,
      @JsonKey(name: 'token_type') required String tokenType,
      @JsonKey(name: 'id_token') required String idToken,
      required String scope}) {
    return _GoogleUserCredentials(
      refreshToken: refreshToken,
      expiryDate: expiryDate,
      accessToken: accessToken,
      tokenType: tokenType,
      idToken: idToken,
      scope: scope,
    );
  }

  GoogleUserCredentials fromJson(Map<String, Object> json) {
    return GoogleUserCredentials.fromJson(json);
  }
}

/// @nodoc
const $GoogleUserCredentials = _$GoogleUserCredentialsTearOff();

/// @nodoc
mixin _$GoogleUserCredentials {
<<<<<<< HEAD
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @JsonKey(name: 'expiry_date')
  int get expiryDate;
  @JsonKey(name: 'access_token')
  String get accessToken;
  @JsonKey(name: 'token_type')
  String get tokenType;
  @JsonKey(name: 'id_token')
  String get idToken;
=======
  String get refresh_token;
  int get expiry_date;
  String get access_token;
  String get token_type;
  String get id_token;
>>>>>>> dev
  String get scope;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GoogleUserCredentialsCopyWith<GoogleUserCredentials> get copyWith;
}

/// @nodoc
abstract class $GoogleUserCredentialsCopyWith<$Res> {
  factory $GoogleUserCredentialsCopyWith(GoogleUserCredentials value,
          $Res Function(GoogleUserCredentials) then) =
      _$GoogleUserCredentialsCopyWithImpl<$Res>;
  $Res call(
<<<<<<< HEAD
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'expiry_date') int expiryDate,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'id_token') String idToken,
=======
      {String refresh_token,
      int expiry_date,
      String access_token,
      String token_type,
      String id_token,
>>>>>>> dev
      String scope});
}

/// @nodoc
class _$GoogleUserCredentialsCopyWithImpl<$Res>
    implements $GoogleUserCredentialsCopyWith<$Res> {
  _$GoogleUserCredentialsCopyWithImpl(this._value, this._then);

  final GoogleUserCredentials _value;
  // ignore: unused_field
  final $Res Function(GoogleUserCredentials) _then;

  @override
  $Res call({
<<<<<<< HEAD
    Object? refreshToken = freezed,
    Object? expiryDate = freezed,
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? idToken = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
      expiryDate: expiryDate == freezed ? _value.expiryDate : expiryDate as int,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
      idToken: idToken == freezed ? _value.idToken : idToken as String,
=======
    Object? refresh_token = freezed,
    Object? expiry_date = freezed,
    Object? access_token = freezed,
    Object? token_type = freezed,
    Object? id_token = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      refresh_token: refresh_token == freezed
          ? _value.refresh_token
          : refresh_token as String,
      expiry_date:
          expiry_date == freezed ? _value.expiry_date : expiry_date as int,
      access_token: access_token == freezed
          ? _value.access_token
          : access_token as String,
      token_type:
          token_type == freezed ? _value.token_type : token_type as String,
      id_token: id_token == freezed ? _value.id_token : id_token as String,
>>>>>>> dev
      scope: scope == freezed ? _value.scope : scope as String,
    ));
  }
}

/// @nodoc
abstract class _$GoogleUserCredentialsCopyWith<$Res>
    implements $GoogleUserCredentialsCopyWith<$Res> {
  factory _$GoogleUserCredentialsCopyWith(_GoogleUserCredentials value,
          $Res Function(_GoogleUserCredentials) then) =
      __$GoogleUserCredentialsCopyWithImpl<$Res>;
  @override
  $Res call(
<<<<<<< HEAD
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'expiry_date') int expiryDate,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'id_token') String idToken,
=======
      {String refresh_token,
      int expiry_date,
      String access_token,
      String token_type,
      String id_token,
>>>>>>> dev
      String scope});
}

/// @nodoc
class __$GoogleUserCredentialsCopyWithImpl<$Res>
    extends _$GoogleUserCredentialsCopyWithImpl<$Res>
    implements _$GoogleUserCredentialsCopyWith<$Res> {
  __$GoogleUserCredentialsCopyWithImpl(_GoogleUserCredentials _value,
      $Res Function(_GoogleUserCredentials) _then)
      : super(_value, (v) => _then(v as _GoogleUserCredentials));

  @override
  _GoogleUserCredentials get _value => super._value as _GoogleUserCredentials;

  @override
  $Res call({
<<<<<<< HEAD
    Object? refreshToken = freezed,
    Object? expiryDate = freezed,
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? idToken = freezed,
    Object? scope = freezed,
  }) {
    return _then(_GoogleUserCredentials(
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
      expiryDate: expiryDate == freezed ? _value.expiryDate : expiryDate as int,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
      idToken: idToken == freezed ? _value.idToken : idToken as String,
=======
    Object? refresh_token = freezed,
    Object? expiry_date = freezed,
    Object? access_token = freezed,
    Object? token_type = freezed,
    Object? id_token = freezed,
    Object? scope = freezed,
  }) {
    return _then(_GoogleUserCredentials(
      refresh_token: refresh_token == freezed
          ? _value.refresh_token
          : refresh_token as String,
      expiry_date:
          expiry_date == freezed ? _value.expiry_date : expiry_date as int,
      access_token: access_token == freezed
          ? _value.access_token
          : access_token as String,
      token_type:
          token_type == freezed ? _value.token_type : token_type as String,
      id_token: id_token == freezed ? _value.id_token : id_token as String,
>>>>>>> dev
      scope: scope == freezed ? _value.scope : scope as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GoogleUserCredentials implements _GoogleUserCredentials {
  _$_GoogleUserCredentials(
<<<<<<< HEAD
      {@JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'expiry_date') required this.expiryDate,
      @JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'token_type') required this.tokenType,
      @JsonKey(name: 'id_token') required this.idToken,
=======
      {required this.refresh_token,
      required this.expiry_date,
      required this.access_token,
      required this.token_type,
      required this.id_token,
>>>>>>> dev
      required this.scope});

  factory _$_GoogleUserCredentials.fromJson(Map<String, dynamic> json) =>
      _$_$_GoogleUserCredentialsFromJson(json);

  @override
<<<<<<< HEAD
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'expiry_date')
  final int expiryDate;
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  @override
  @JsonKey(name: 'id_token')
  final String idToken;
=======
  final String refresh_token;
  @override
  final int expiry_date;
  @override
  final String access_token;
  @override
  final String token_type;
  @override
  final String id_token;
>>>>>>> dev
  @override
  final String scope;

  @override
  String toString() {
<<<<<<< HEAD
    return 'GoogleUserCredentials(refreshToken: $refreshToken, expiryDate: $expiryDate, accessToken: $accessToken, tokenType: $tokenType, idToken: $idToken, scope: $scope)';
=======
    return 'GoogleUserCredentials(refresh_token: $refresh_token, expiry_date: $expiry_date, access_token: $access_token, token_type: $token_type, id_token: $id_token, scope: $scope)';
>>>>>>> dev
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GoogleUserCredentials &&
<<<<<<< HEAD
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.expiryDate, expiryDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiryDate, expiryDate)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality()
                    .equals(other.idToken, idToken)) &&
=======
            (identical(other.refresh_token, refresh_token) ||
                const DeepCollectionEquality()
                    .equals(other.refresh_token, refresh_token)) &&
            (identical(other.expiry_date, expiry_date) ||
                const DeepCollectionEquality()
                    .equals(other.expiry_date, expiry_date)) &&
            (identical(other.access_token, access_token) ||
                const DeepCollectionEquality()
                    .equals(other.access_token, access_token)) &&
            (identical(other.token_type, token_type) ||
                const DeepCollectionEquality()
                    .equals(other.token_type, token_type)) &&
            (identical(other.id_token, id_token) ||
                const DeepCollectionEquality()
                    .equals(other.id_token, id_token)) &&
>>>>>>> dev
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
<<<<<<< HEAD
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(expiryDate) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(idToken) ^
=======
      const DeepCollectionEquality().hash(refresh_token) ^
      const DeepCollectionEquality().hash(expiry_date) ^
      const DeepCollectionEquality().hash(access_token) ^
      const DeepCollectionEquality().hash(token_type) ^
      const DeepCollectionEquality().hash(id_token) ^
>>>>>>> dev
      const DeepCollectionEquality().hash(scope);

  @JsonKey(ignore: true)
  @override
  _$GoogleUserCredentialsCopyWith<_GoogleUserCredentials> get copyWith =>
      __$GoogleUserCredentialsCopyWithImpl<_GoogleUserCredentials>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GoogleUserCredentialsToJson(this);
  }
}

abstract class _GoogleUserCredentials implements GoogleUserCredentials {
  factory _GoogleUserCredentials(
<<<<<<< HEAD
      {@JsonKey(name: 'refresh_token') required String refreshToken,
      @JsonKey(name: 'expiry_date') required int expiryDate,
      @JsonKey(name: 'access_token') required String accessToken,
      @JsonKey(name: 'token_type') required String tokenType,
      @JsonKey(name: 'id_token') required String idToken,
=======
      {required String refresh_token,
      required int expiry_date,
      required String access_token,
      required String token_type,
      required String id_token,
>>>>>>> dev
      required String scope}) = _$_GoogleUserCredentials;

  factory _GoogleUserCredentials.fromJson(Map<String, dynamic> json) =
      _$_GoogleUserCredentials.fromJson;

  @override
<<<<<<< HEAD
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'expiry_date')
  int get expiryDate;
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(name: 'id_token')
  String get idToken;
=======
  String get refresh_token;
  @override
  int get expiry_date;
  @override
  String get access_token;
  @override
  String get token_type;
  @override
  String get id_token;
>>>>>>> dev
  @override
  String get scope;
  @override
  @JsonKey(ignore: true)
  _$GoogleUserCredentialsCopyWith<_GoogleUserCredentials> get copyWith;
}
