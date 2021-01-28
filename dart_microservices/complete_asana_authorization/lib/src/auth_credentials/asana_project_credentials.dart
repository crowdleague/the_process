library asana_project_credentials;

import 'dart:convert';

import 'package:authorization/src/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'asana_project_credentials.g.dart';

abstract class AsanaProjectCredentials
    implements Built<AsanaProjectCredentials, AsanaProjectCredentialsBuilder> {
  String get clientId;
  String get clientSecret;
  String get redirectURI;

  AsanaProjectCredentials._();

  factory AsanaProjectCredentials(
      {required String clientId,
      required String clientSecret,
      required String redirectURI}) = _$AsanaProjectCredentials._;

  factory AsanaProjectCredentials.by(
          [void Function(AsanaProjectCredentialsBuilder) updates]) =
      _$AsanaProjectCredentials;

  Object toJson() =>
      serializers.serializeWith(AsanaProjectCredentials.serializer, this);

  static AsanaProjectCredentials fromJson(String jsonString) =>
      serializers.deserializeWith(
          AsanaProjectCredentials.serializer, json.decode(jsonString));

  static Serializer<AsanaProjectCredentials> get serializer =>
      _$asanaProjectCredentialsSerializer;
}
