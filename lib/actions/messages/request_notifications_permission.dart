library request_notifications_permission;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/serializers.dart';

part 'request_notifications_permission.g.dart';

abstract class RequestNotificationsPermission extends Object
    with
        ReduxAction
    implements
        Built<RequestNotificationsPermission,
            RequestNotificationsPermissionBuilder> {
  RequestNotificationsPermission._();

  factory RequestNotificationsPermission() = _$RequestNotificationsPermission._;

  Object toJson() => serializers.serializeWith(
      RequestNotificationsPermission.serializer, this);

  static RequestNotificationsPermission fromJson(String jsonString) =>
      serializers.deserializeWith(
          RequestNotificationsPermission.serializer, json.decode(jsonString));

  static Serializer<RequestNotificationsPermission> get serializer =>
      _$requestNotificationsPermissionSerializer;

  @override
  String toString() => 'REQUEST_NOTIFICATIONS_PERMISSION';
}
