import 'package:redux/redux.dart';
import 'package:the_process/actions/messages/store_notification_settings.dart';
import 'package:the_process/models/app_state/app_state.dart';

class StoreNotificationSettingsReducer
    extends TypedReducer<AppState, StoreNotificationSettings> {
  StoreNotificationSettingsReducer()
      : super((state, action) => state.rebuild(
            (b) => b..settings.notifications.replace(action.settings)));
}
