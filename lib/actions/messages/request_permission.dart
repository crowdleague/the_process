library request_permission;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/serializers.dart';

part 'request_permission.g.dart';

abstract class RequestPermission extends Object
    with ReduxAction
    implements Built<RequestPermission, RequestPermissionBuilder> {
  RequestPermission._();

  factory RequestPermission() = _$RequestPermission._;

  Object toJson() =>
      serializers.serializeWith(RequestPermission.serializer, this);

  static RequestPermission fromJson(String jsonString) => serializers
      .deserializeWith(RequestPermission.serializer, json.decode(jsonString));

  static Serializer<RequestPermission> get serializer =>
      _$requestPermissionSerializer;

  @override
  String toString() => 'REQUEST_PERMISSION';
}
