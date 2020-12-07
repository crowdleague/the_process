library store_device_token;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/serializers.dart';

part 'store_device_token.g.dart';

abstract class StoreDeviceToken extends Object
    with ReduxAction
    implements Built<StoreDeviceToken, StoreDeviceTokenBuilder> {
  String get token;

  StoreDeviceToken._();

  factory StoreDeviceToken({@required String token}) = _$StoreDeviceToken._;

  factory StoreDeviceToken.by(
      [void Function(StoreDeviceTokenBuilder) updates]) = _$StoreDeviceToken;

  Object toJson() =>
      serializers.serializeWith(StoreDeviceToken.serializer, this);

  static StoreDeviceToken fromJson(String jsonString) => serializers
      .deserializeWith(StoreDeviceToken.serializer, json.decode(jsonString));

  static Serializer<StoreDeviceToken> get serializer =>
      _$storeDeviceTokenSerializer;

  @override
  String toString() => 'STORE_DEVICE_TOKEN';
}
