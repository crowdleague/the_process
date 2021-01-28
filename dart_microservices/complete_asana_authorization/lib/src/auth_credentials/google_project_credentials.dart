library google_project_credentials;

import 'dart:convert';

import 'package:authorization/src/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'google_project_credentials.g.dart';

abstract class GoogleProjectCredentials
    implements
        Built<GoogleProjectCredentials, GoogleProjectCredentialsBuilder> {
  String get id;
  String get secret;
  String get redirectURL;

  GoogleProjectCredentials._();

  factory GoogleProjectCredentials(
      {required String id,
      required String secret,
      required String redirectURL}) = _$GoogleProjectCredentials._;

  factory GoogleProjectCredentials.by(
          [void Function(GoogleProjectCredentialsBuilder) updates]) =
      _$GoogleProjectCredentials;

  Object toJson() =>
      serializers.serializeWith(GoogleProjectCredentials.serializer, this);

  static GoogleProjectCredentials fromJson(String jsonString) =>
      serializers.deserializeWith(
          GoogleProjectCredentials.serializer, json.decode(jsonString));

  static Serializer<GoogleProjectCredentials> get serializer =>
      _$googleProjectCredentialsSerializer;
}
