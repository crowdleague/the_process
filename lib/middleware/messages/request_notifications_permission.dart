import 'package:redux/redux.dart';
import 'package:the_process/actions/messages/request_notifications_permission.dart';
import 'package:the_process/actions/messages/store_notification_settings.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/services/messaging_service.dart';

class RequestNotificationsPermissionMiddleware
    extends TypedMiddleware<AppState, RequestNotificationsPermission> {
  RequestNotificationsPermissionMiddleware(MessagingService messagesService)
      : super((store, action, next) async {
          next(action);

          final settings = await messagesService.requestPermission();
          store.dispatch(StoreNotificationSettings(settings: settings));
        });
}
