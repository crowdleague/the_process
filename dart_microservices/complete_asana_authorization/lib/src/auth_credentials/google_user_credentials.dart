library google_user_credentials;

import 'dart:convert';

import 'package:authorization/src/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'google_user_credentials.g.dart';

abstract class GoogleUserCredentials
    implements Built<GoogleUserCredentials, GoogleUserCredentialsBuilder> {
  String get refresh_token;
  int get expiry_date;
  String get access_token;
  String get token_type;
  String get id_token;
  String get scope;

  GoogleUserCredentials._();

  factory GoogleUserCredentials(
      {required String refresh_token,
      required int expiry_date,
      required String access_token,
      required String token_type,
      required String id_token,
      required String scope}) = _$GoogleUserCredentials._;

  factory GoogleUserCredentials.by(
          [void Function(GoogleUserCredentialsBuilder) updates]) =
      _$GoogleUserCredentials;

  Object toJson() =>
      serializers.serializeWith(GoogleUserCredentials.serializer, this);

  static GoogleUserCredentials fromJson(String jsonString) =>
      serializers.deserializeWith(
          GoogleUserCredentials.serializer, json.decode(jsonString));

  static Serializer<GoogleUserCredentials> get serializer =>
      _$googleUserCredentialsSerializer;
}
