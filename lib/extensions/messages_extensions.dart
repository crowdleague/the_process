import 'package:firebase_messaging/firebase_messaging.dart'
    as firebase_messaging;
import 'package:the_process/enums/messages/apple_notification_setting.dart';
import 'package:the_process/enums/messages/apple_show_preview_setting.dart';
import 'package:the_process/enums/messages/authorization_status.dart';
import 'package:the_process/models/messages/notification_settings.dart';

extension NotificationSettingsExt on firebase_messaging.NotificationSettings {
  NotificationSettings toModel() => NotificationSettings(
      authorizationStatus:
          AuthorizationStatus.values.elementAt(authorizationStatus.index),
      showPreviews:
          AppleShowPreviewSetting.values.elementAt(showPreviews.index),
      alert: AppleNotificationSetting.values.elementAt(alert.index),
      announcement:
          AppleNotificationSetting.values.elementAt(announcement.index),
      badge: AppleNotificationSetting.values.elementAt(badge.index),
      carPlay: AppleNotificationSetting.values.elementAt(carPlay.index),
      lockScreen: AppleNotificationSetting.values.elementAt(lockScreen.index),
      notificationCenter:
          AppleNotificationSetting.values.elementAt(notificationCenter.index),
      sound: AppleNotificationSetting.values.elementAt(sound.index));
}
