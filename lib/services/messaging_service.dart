import 'package:firebase_messaging/firebase_messaging.dart'
    as firebase_messaging;
import 'package:the_process/extensions/messages_extensions.dart';
import 'package:the_process/models/messages/notification_settings.dart';

class MessagingService {
  final firebase_messaging.FirebaseMessaging _messaging;

  MessagingService(firebase_messaging.FirebaseMessaging messaging)
      : _messaging = messaging;

  // On iOS, prompts the user for notification permissions the first time it
  // is called. Does nothing and returns null on Android.
  Future<NotificationSettings> requestPermission() async {
    final notificationSettings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    return notificationSettings.toModel();
  }

  Future<String> getDeviceToken() => _messaging.getToken();
}
