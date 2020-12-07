import 'package:redux/redux.dart';
import 'package:the_process/actions/messages/store_device_token.dart';
import 'package:the_process/models/app_state/app_state.dart';

class StoreDeviceTokenReducer extends TypedReducer<AppState, StoreDeviceToken> {
  StoreDeviceTokenReducer()
      : super((state, action) =>
            state.rebuild((b) => b..settings.deviceToken = action.token));
}
