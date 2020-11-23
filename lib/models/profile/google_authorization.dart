library google_authorization;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:the_process/enums/auth/authorization_step.dart';
import 'package:the_process/serializers.dart';

part 'google_authorization.g.dart';

abstract class GoogleAuthorization
    implements Built<GoogleAuthorization, GoogleAuthorizationBuilder> {
  AuthorizationStep get step;
  bool get authorized;

  GoogleAuthorization._();

  factory GoogleAuthorization({@required AuthorizationStep step}) =
      _$GoogleAuthorization._;

  factory GoogleAuthorization.by(
          [void Function(GoogleAuthorizationBuilder) updates]) =
      _$GoogleAuthorization;

  Object toJson() =>
      serializers.serializeWith(GoogleAuthorization.serializer, this);

  static GoogleAuthorization fromJson(String jsonString) => serializers
      .deserializeWith(GoogleAuthorization.serializer, json.decode(jsonString));

  static Serializer<GoogleAuthorization> get serializer =>
      _$googleAuthorizationSerializer;
}
