import 'package:redux/redux.dart';
import 'package:the_process/actions/messages/retrieve_device_token.dart';
import 'package:the_process/actions/messages/store_device_token.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/services/database_service.dart';
import 'package:the_process/services/messaging_service.dart';

class RetrieveDeviceTokenMiddleware
    extends TypedMiddleware<AppState, RetrieveDeviceToken> {
  RetrieveDeviceTokenMiddleware(
      DatabaseService databaseService, MessagingService messagingService)
      : super((store, action, next) async {
          next(action);

          final token = await messagingService.getDeviceToken();

          await databaseService.saveDeviceToken(
              store.state.authUserData.uid, token);

          store.dispatch(StoreDeviceToken(token: token));
        });
}
