library notification_settings;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:the_process/enums/messages/apple_notification_setting.dart';
import 'package:the_process/enums/messages/apple_show_preview_setting.dart';
import 'package:the_process/enums/messages/authorization_status.dart';
import 'package:the_process/serializers.dart';

part 'notification_settings.g.dart';

abstract class NotificationSettings
    implements Built<NotificationSettings, NotificationSettingsBuilder> {
  AuthorizationStatus get authorizationStatus;
  AppleShowPreviewSetting get showPreviews;
  AppleNotificationSetting get alert;
  AppleNotificationSetting get announcement;
  AppleNotificationSetting get badge;
  AppleNotificationSetting get carPlay;
  AppleNotificationSetting get lockScreen;
  AppleNotificationSetting get notificationCenter;
  AppleNotificationSetting get sound;

  NotificationSettings._();

  factory NotificationSettings({
    @required AuthorizationStatus authorizationStatus,
    @required AppleShowPreviewSetting showPreviews,
    @required AppleNotificationSetting alert,
    @required AppleNotificationSetting announcement,
    @required AppleNotificationSetting badge,
    @required AppleNotificationSetting carPlay,
    @required AppleNotificationSetting lockScreen,
    @required AppleNotificationSetting notificationCenter,
    @required AppleNotificationSetting sound,
  }) = _$NotificationSettings._;

  factory NotificationSettings.by(
          [void Function(NotificationSettingsBuilder) updates]) =
      _$NotificationSettings;

  Object toJson() =>
      serializers.serializeWith(NotificationSettings.serializer, this);

  static NotificationSettings fromJson(String jsonString) =>
      serializers.deserializeWith(
          NotificationSettings.serializer, json.decode(jsonString));

  static Serializer<NotificationSettings> get serializer =>
      _$notificationSettingsSerializer;
}
