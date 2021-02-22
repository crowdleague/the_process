import 'package:redux/redux.dart';
import 'package:the_process/actions/auth/sign_in_with_google.dart';
import 'package:the_process/actions/auth/store_auth_step.dart';
import 'package:the_process/actions/auth/store_auth_user_data.dart';
import 'package:the_process/enums/auth/auth_step.dart';
import 'package:the_process/extensions/redux_extensions.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/services/auth_service.dart';
import 'package:the_process/services/database_service.dart';

class SignInWithGoogleMiddleware
    extends TypedMiddleware<AppState, SignInWithGoogle> {
  SignInWithGoogleMiddleware(
      AuthService authService, DatabaseService databaseService)
      : super((store, action, next) async {
          next(action);

          try {
            store.dispatch(StoreAuthStep(step: AuthStep.contactingGoogle));

            final credential = await authService.getGoogleCredential();

            // If user cancelled sign in, reset UI and return
            if (credential == null) {
              store.dispatch(StoreAuthStep(step: AuthStep.waitingForInput));
              return;
            }

            store.dispatch(StoreAuthStep(step: AuthStep.signingInWithFirebase));

            // The authStateChanges stream will emit the same AuthUserData and
            // we are already listening to that stream and updating the app state
            // with whatever gets emitted.
            final authUserData =
                await authService.signInWithGoogle(credential: credential);

            store.dispatch(StoreAuthUserData(authUserData: authUserData));
            store.dispatch(StoreAuthStep(step: AuthStep.waitingForInput));
          } catch (error, trace) {
            store.dispatchProblem(error, trace);
          }
        });
}
