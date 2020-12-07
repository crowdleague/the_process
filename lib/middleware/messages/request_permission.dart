import 'package:redux/redux.dart';
import 'package:the_process/actions/messages/request_permission.dart';
import 'package:the_process/actions/messages/store_notification_settings.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/services/messaging_service.dart';

class RequestPermissionMiddleware
    extends TypedMiddleware<AppState, RequestPermission> {
  RequestPermissionMiddleware(MessagingService messagesService)
      : super((store, action, next) async {
          next(action);

          final settings = await messagesService.requestPermission();
          store.dispatch(StoreNotificationSettings(settings: settings));
        });
}
