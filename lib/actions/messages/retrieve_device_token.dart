library retrieve_device_token;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/serializers.dart';

part 'retrieve_device_token.g.dart';

abstract class RetrieveDeviceToken extends Object
    with ReduxAction
    implements Built<RetrieveDeviceToken, RetrieveDeviceTokenBuilder> {
  RetrieveDeviceToken._();

  factory RetrieveDeviceToken() = _$RetrieveDeviceToken._;

  Object toJson() =>
      serializers.serializeWith(RetrieveDeviceToken.serializer, this);

  static RetrieveDeviceToken fromJson(String jsonString) => serializers
      .deserializeWith(RetrieveDeviceToken.serializer, json.decode(jsonString));

  static Serializer<RetrieveDeviceToken> get serializer =>
      _$retrieveDeviceTokenSerializer;

  @override
  String toString() => 'RETRIEVE_DEVICE_TOKEN';
}
