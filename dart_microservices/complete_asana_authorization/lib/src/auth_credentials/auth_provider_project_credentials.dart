library auth_provider_project_credentials;

import 'dart:convert';

import 'package:authorization/src/auth_credentials/asana_project_credentials.dart';
import 'package:authorization/src/auth_credentials/google_project_credentials.dart';
import 'package:authorization/src/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'auth_provider_project_credentials.g.dart';

abstract class AuthProviderProjectCredentials
    implements
        Built<AuthProviderProjectCredentials,
            AuthProviderProjectCredentialsBuilder> {
  GoogleProjectCredentials get google;
  AsanaProjectCredentials get asana;

  AuthProviderProjectCredentials._();

  factory AuthProviderProjectCredentials(
          {required GoogleProjectCredentials google,
          required AsanaProjectCredentials asana}) =
      _$AuthProviderProjectCredentials._;

  factory AuthProviderProjectCredentials.by(
          [void Function(AuthProviderProjectCredentialsBuilder) updates]) =
      _$AuthProviderProjectCredentials;

  Object toJson() => serializers.serializeWith(
      AuthProviderProjectCredentials.serializer, this);

  static AuthProviderProjectCredentials fromJson(String jsonString) =>
      serializers.deserializeWith(
          AuthProviderProjectCredentials.serializer, json.decode(jsonString));

  static Serializer<AuthProviderProjectCredentials> get serializer =>
      _$authProviderProjectCredentialsSerializer;
}
