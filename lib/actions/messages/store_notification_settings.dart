library store_notification_settings;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/models/messages/notification_settings.dart';
import 'package:the_process/serializers.dart';

part 'store_notification_settings.g.dart';

abstract class StoreNotificationSettings extends Object
    with ReduxAction
    implements
        Built<StoreNotificationSettings, StoreNotificationSettingsBuilder> {
  NotificationSettings get settings;

  StoreNotificationSettings._();

  factory StoreNotificationSettings({@required NotificationSettings settings}) =
      _$StoreNotificationSettings._;

  factory StoreNotificationSettings.by(
          [void Function(StoreNotificationSettingsBuilder) updates]) =
      _$StoreNotificationSettings;

  Object toJson() =>
      serializers.serializeWith(StoreNotificationSettings.serializer, this);

  static StoreNotificationSettings fromJson(String jsonString) =>
      serializers.deserializeWith(
          StoreNotificationSettings.serializer, json.decode(jsonString));

  static Serializer<StoreNotificationSettings> get serializer =>
      _$storeNotificationSettingsSerializer;

  @override
  String toString() => 'STORE_NOTIFICATION_SETTINGS';
}
