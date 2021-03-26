import 'package:flutter_test/flutter_test.dart';
import 'package:the_process/actions/app_init/plumb_streams_action.dart';
import 'package:the_process/actions/auth/get_authorized_action.dart';
import 'package:the_process/actions/auth/observe_auth_state_action.dart';
import 'package:the_process/actions/auth/sign_in_with_apple_action.dart';
import 'package:the_process/actions/auth/sign_in_with_google_action.dart';
import 'package:the_process/actions/auth/sign_out_action.dart';
import 'package:the_process/actions/platform/detect_platform_action.dart';
import 'package:the_process/actions/platform/launch_url_action.dart';
import 'package:the_process/actions/profile/disregard_profile_data_action.dart';
import 'package:the_process/actions/profile/observe_profile_data_action.dart';
import 'package:the_process/actions/sections/create_section_action.dart';
import 'package:the_process/actions/shared/connect_database_action.dart';
import 'package:the_process/enums/auth/provider_name.dart';
import 'package:the_process/enums/database/database_section.dart';
import 'package:the_process/middleware/app/plumb_streams.dart';
import 'package:the_process/middleware/auth/observe_auth_state.dart';
import 'package:the_process/middleware/auth/sign_in_with_apple.dart';
import 'package:the_process/middleware/auth/sign_in_with_google.dart';
import 'package:the_process/middleware/auth/sign_out.dart';
import 'package:the_process/middleware/platform/detect_platform.dart';
import 'package:the_process/middleware/platform/launch_url.dart';
import 'package:the_process/middleware/profile/disregard_profile_data.dart';
import 'package:the_process/middleware/profile/get_authorized.dart';
import 'package:the_process/middleware/profile/observe_profile_data.dart';
import 'package:the_process/middleware/sections/create_section.dart';
import 'package:the_process/middleware/shared/connect_database.dart';

import '../mocks/redux/fake_store.dart';
import '../mocks/services/auth_service_fake.dart';
import '../mocks/services/database_service_mock.dart';
import '../mocks/services/http_service_mock.dart';
import '../mocks/services/platform_service_mock.dart';

void main() {
  group('Middleware catches errors', () {
    final authService = AuthServiceFake();
    final databaseService = DatabaseServiceMock();
    final platformService = PlatformServiceMock();
    final httpService = HttpServiceMock();
    final store = FakeStore();
    test('PlumStreams catches error', () {
      final middleware = PlumbStreamsMiddleware(authService, databaseService);
      final action = PlumbStreamsAction();
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
    test('ObserveAuthState catches error', () {
      final middleware = ObserveAuthStateMiddleware(authService);

      final action = ObserveAuthStateAction();
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
    test('SignInWithApple catches error', () {
      final middleware = SignInWithAppleMiddleware(authService);

      final action = SignInWithAppleAction();
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
    test('SignInWithGoogle catches error', () {
      final middleware =
          SignInWithGoogleMiddleware(authService, databaseService);

      final action = SignInWithGoogleAction();
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
    test('SignOut catches error', () {
      final middleware = SignOutMiddleware(authService);

      final action = SignOutAction();
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
    test('DetectPlatform catches error', () {
      final middleware = DetectPlatformMiddleware(platformService);

      final action = DetectPlatformAction();
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
    test('LaunchURL catches error', () {
      final middleware = LaunchUrlMiddleware(platformService);

      final action = LaunchUrlAction(url: 'url');
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
    test('DisregardProfileData catches error', () {
      final middleware = DisregardProfileDataMiddleware(databaseService);

      final action = DisregardProfileDataAction();
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
    test('GetAuthorized catches error', () {
      final middleware =
          GetAuthorizedMiddleware(databaseService, platformService);

      final action = GetAuthorizedAction(provider: ProviderName.google);
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
    test('ObserveProfileData catches error', () {
      final middleware = ObserveProfileDataMiddleware(databaseService);

      final action = ObserveProfileDataAction();
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
    test('CreateSection catches error', () {
      final middleware = CreateSectionMiddleware(httpService);

      final action = CreateSectionAction();
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
    test('ConnectDatabase catches error', () {
      final middleware = ConnectDatabaseMiddleware(databaseService);

      final action = ConnectDatabaseAction(section: DatabaseSection.sections);
      final nullDispatcher = (dynamic _) => null;

      middleware.call(store, action, nullDispatcher);

      // expects String because of generated class AddProblemAction
      expect(store.dispatchedActions[0].runtimeType.toString(),
          '_\$_AddProblemAction');
    });
  });
}
