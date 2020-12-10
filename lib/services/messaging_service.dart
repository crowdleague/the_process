import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart'
    as firebase_messaging;
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/extensions/messages_extensions.dart';
import 'package:the_process/extensions/stream_extensions.dart';
import 'package:the_process/models/messages/notification_settings.dart';

class MessagingService {
  final firebase_messaging.FirebaseMessaging _messaging;

  StreamSubscription<firebase_messaging.RemoteMessage> onMessageSubscription;

  final StreamController<ReduxAction> _controller =
      StreamController<ReduxAction>();
  Stream<ReduxAction> get storeStream => _controller.stream;

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

  void connectDataMessages() {
    try {
      // connect the firebase messaging plugin to the store and keep the subscription
      onMessageSubscription = firebase_messaging.FirebaseMessaging.onMessage
          .listen((firebase_messaging.RemoteMessage message) {
        try {
          final messageValue = message.data['message'] as String;

          print('Message received: $messageValue');
        } catch (error, trace) {
          _controller.addProblem(error, trace);
        }
      }, onError: _controller.addProblem);
    } catch (error, trace) {
      _controller.addProblem(error, trace);
    }
  }

  void disconnectDataMessages() => onMessageSubscription.cancel();

  Future<String> getDeviceToken() => _messaging.getToken(
      vapidKey:
          'BPZ5Z3iPTcCQo9hbgpk2jTTA2jJ4Q4SOn-FWiukNmjtA_4OpyPacI-3bZU02mAjujsATjKaqKfxSzio7Z52LMik');
}
