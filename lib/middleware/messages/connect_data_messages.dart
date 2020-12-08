import 'package:redux/redux.dart';
import 'package:the_process/actions/messages/connect_data_messages.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/services/messaging_service.dart';

class ConnectDataMessagesMiddleware
    extends TypedMiddleware<AppState, ConnectDataMessages> {
  ConnectDataMessagesMiddleware(MessagingService messagingService)
      : super((store, action, next) async {
          next(action);

          messagingService.connectDataMessages();
        });
}
