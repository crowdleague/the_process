import 'package:redux/redux.dart';
import 'package:the_process/actions/platform/update_d_o_m.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/services/web_service.dart';

class UpdateDOMMiddleware extends TypedMiddleware<AppState, UpdateDOM> {
  UpdateDOMMiddleware(WebService webService)
      : super((store, action, next) async {
          next(action);

          webService.removeLoadingSpinner();
        });
}
