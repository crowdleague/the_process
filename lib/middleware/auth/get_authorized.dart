import 'package:redux/redux.dart';
import 'package:the_process/actions/auth/get_authorized.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/services/auth_service.dart';
import 'package:the_process/services/platform_service.dart';

class GetAuthorizedMiddleware extends TypedMiddleware<AppState, GetAuthorized> {
  GetAuthorizedMiddleware(
      AuthService authService, PlatformService platformService)
      : super((store, action, next) async {
          next(action);

          await platformService.getAuthorized();
        });
}
