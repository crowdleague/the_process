import 'package:redux/redux.dart';
import 'package:the_process/actions/messages/retrieve_device_token.dart';
import 'package:the_process/actions/messages/store_device_token.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/services/messaging_service.dart';

class RetrieveDeviceTokenMiddleware
    extends TypedMiddleware<AppState, RetrieveDeviceToken> {
  RetrieveDeviceTokenMiddleware(MessagingService messagingService)
      : super((store, action, next) async {
          next(action);

          final token = await messagingService.getDeviceToken();
          store.dispatch(StoreDeviceToken(token: token));
        });
}
