library asana_user_credentials;

import 'dart:convert';

import 'package:authorization/src/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'asana_user_credentials.g.dart';

abstract class AsanaUserCredentials
    implements Built<AsanaUserCredentials, AsanaUserCredentialsBuilder> {
  String get refresh_token;
  String get access_token;
  int get expires_in;

  AsanaUserCredentials._();

  factory AsanaUserCredentials(
      {required String refresh_token,
      required String access_token,
      required int expires_in}) = _$AsanaUserCredentials._;

  factory AsanaUserCredentials.by(
          [void Function(AsanaUserCredentialsBuilder) updates]) =
      _$AsanaUserCredentials;

  Object toJson() =>
      serializers.serializeWith(AsanaUserCredentials.serializer, this);

  static AsanaUserCredentials fromJson(String jsonString) =>
      serializers.deserializeWith(
          AsanaUserCredentials.serializer, json.decode(jsonString));

  static Serializer<AsanaUserCredentials> get serializer =>
      _$asanaUserCredentialsSerializer;
}
