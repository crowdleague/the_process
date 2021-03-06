import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_process/actions/app_init/plumb_streams_action.dart';
import 'package:the_process/actions/auth/get_authorized_action.dart';
import 'package:the_process/actions/auth/observe_auth_state_action.dart';
import 'package:the_process/actions/auth/sign_in_with_apple_action.dart';
import 'package:the_process/actions/auth/sign_in_with_google_action.dart';
import 'package:the_process/actions/auth/sign_out_action.dart';
import 'package:the_process/actions/platform/detect_platform_action.dart';
import 'package:the_process/actions/platform/launch_url_action.dart';
import 'package:the_process/actions/problems/add_problem_action.dart';
import 'package:the_process/actions/profile/disregard_profile_data_action.dart';
import 'package:the_process/actions/sections/create_section_action.dart';
import 'package:the_process/actions/shared/connect_database_action.dart';
import 'package:the_process/enums/auth/authorization_step.dart';
import 'package:the_process/enums/auth/provider_name.dart';
import 'package:the_process/enums/database/database_section_enum.dart';
import 'package:the_process/middleware/app/plumb_streams.dart';
import 'package:the_process/middleware/auth/observe_auth_state.dart';
import 'package:the_process/middleware/auth/sign_in_with_apple.dart';
import 'package:the_process/middleware/auth/sign_in_with_google.dart';
import 'package:the_process/middleware/auth/sign_out.dart';
import 'package:the_process/middleware/platform/detect_platform.dart';
import 'package:the_process/middleware/platform/launch_url.dart';
import 'package:the_process/middleware/profile/disregard_profile_data.dart';
import 'package:the_process/middleware/profile/get_authorized.dart';
import 'package:the_process/middleware/sections/create_section.dart';
import 'package:the_process/middleware/shared/open_database_sink.dart';

import '../test-doubles/redux/fake_store.dart';
import '../test-doubles/services/service_test_doubles.mocks.dart';

void main() {
  group('Middleware ', () {
    test('PlumStreams catches error', () {
      // Create the middleware and mocks.
      final authServiceMock = MockAuthService();
      final databaseServiceMock = MockDatabaseService();
      final middleware =
          PlumbStreamsMiddleware(authServiceMock, databaseServiceMock);

      // Create the middleware dependencies.
      final fakeStore = FakeStore();
      final action = PlumbStreamsAction();
      nullDispatcher(dynamic _) => null;

      // Create the error to catch.
      when(authServiceMock.connectAuthStateToStore()).thenThrow('error');

      // Call the middleware.
      middleware.call(fakeStore, action, nullDispatcher);

      // Error should be caught and AddProblemAction dispatched.
      expect(fakeStore.dispatchedActions.last is AddProblemAction, true);
    });

    test('ObserveAuthState catches error', () {
      // Setup the middleware and mocks.
      final authServiceMock = MockAuthService();
      final middleware = ObserveAuthStateMiddleware(authServiceMock);

      // Create the middleware dependencies.
      final fakeStore = FakeStore();
      final action = ObserveAuthStateAction();
      nullDispatcher(dynamic _) => null;

      // Create the error to catch.
      when(authServiceMock.connectAuthStateToStore()).thenThrow('error');

      // Call the middleware.
      middleware.call(fakeStore, action, nullDispatcher);

      // Error should be caught and AddProblemAction dispatched.
      expect(fakeStore.dispatchedActions.last is AddProblemAction, true);
    });

    test('SignInWithApple catches error', () {
      // Setup the middleware and mocks.
      final authServiceMock = MockAuthService();
      final middleware = SignInWithAppleMiddleware(authServiceMock);

      // Create the middleware dependencies.
      final fakeStore = FakeStore();
      final action = SignInWithAppleAction();
      nullDispatcher(dynamic _) => null;

      // Create the error to catch.
      when(authServiceMock.getAppleCredential()).thenThrow('error');

      // Call the middleware.
      middleware.call(fakeStore, action, nullDispatcher);

      // Error should be caught and AddProblemAction dispatched.
      expect(fakeStore.dispatchedActions.last is AddProblemAction, true);
    });

    test('SignInWithGoogle catches error', () {
      // Setup the middleware and mocks.
      final authServiceMock = MockAuthService();
      final middleware = SignInWithGoogleMiddleware(authServiceMock);

      // Create the middleware dependencies.
      final fakeStore = FakeStore();
      final action = SignInWithGoogleAction();
      nullDispatcher(dynamic _) => null;

      // Create the error to catch.
      when(authServiceMock.getGoogleCredential()).thenThrow('error');

      // Call the middleware.
      middleware.call(fakeStore, action, nullDispatcher);

      // Error should be caught and AddProblemAction dispatched.
      expect(fakeStore.dispatchedActions.last is AddProblemAction, true);
    });

    test('SignOut catches error', () {
      // Setup the middleware and mocks.
      final authServiceMock = MockAuthService();
      final middleware = SignOutMiddleware(authServiceMock);

      // Create the middleware dependencies.
      final fakeStore = FakeStore();
      final action = SignOutAction();
      nullDispatcher(dynamic _) => null;

      // Create the error to catch.
      when(authServiceMock.signOut()).thenThrow('error');

      // Call the middleware.
      middleware.call(fakeStore, action, nullDispatcher);

      // Error should be caught and AddProblemAction dispatched.
      expect(fakeStore.dispatchedActions.last is AddProblemAction, true);
    });

    test('DetectPlatform catches error', () {
      // Setup the middleware and mocks.
      final platformServiceMock = MockPlatformService();
      final authServiceMock = MockAuthService();
      final middleware =
          DetectPlatformMiddleware(authServiceMock, platformServiceMock);

      // Create the middleware dependencies.
      final fakeStore = FakeStore();
      final action = DetectPlatformAction();
      nullDispatcher(dynamic _) => null;

      // Create the error to catch.
      when(platformServiceMock.detectPlatform()).thenThrow('error');

      // Call the middleware.
      middleware.call(fakeStore, action, nullDispatcher);

      // Error should be caught and AddProblemAction dispatched.
      expect(fakeStore.dispatchedActions.last is AddProblemAction, true);
    });

    test('LaunchUrl catches error', () {
      // Setup the middleware and mocks.
      final platformServiceMock = MockPlatformService();
      final middleware = LaunchUrlMiddleware(platformServiceMock);

      // Create the middleware dependencies.
      final fakeStore = FakeStore();
      final action = LaunchUrlAction(url: 'url');
      nullDispatcher(dynamic _) => null;

      // Create the error to catch.
      when(platformServiceMock.launchUrl(action.url)).thenThrow('error');

      // Call the middleware.
      middleware.call(fakeStore, action, nullDispatcher);

      // Error should be caught and AddProblemAction dispatched.
      expect(fakeStore.dispatchedActions.last is AddProblemAction, true);
    });

    test('DisregardProfileData catches error', () {
      // Setup the middleware and mocks.
      final databaseServiceMock = MockDatabaseService();
      final middleware = DisregardProfileDataMiddleware(databaseServiceMock);

      // Create the middleware dependencies.
      final fakeStore = FakeStore();
      final action = DisregardProfileDataAction();
      nullDispatcher(dynamic _) => null;

      // Create the error to catch.
      when(databaseServiceMock.disconnect(DatabaseSectionEnum.profileData))
          .thenThrow('error');

      // Call the middleware.
      middleware.call(fakeStore, action, nullDispatcher);

      // Error should be caught and AddProblemAction dispatched.
      expect(fakeStore.dispatchedActions.last is AddProblemAction, true);
    });

    test('GetAuthorized catches error', () {
      // Setup the middleware and mocks.
      final databaseServiceMock = MockDatabaseService();
      final platformServiceMock = MockPlatformService();
      final middleware =
          GetAuthorizedMiddleware(databaseServiceMock, platformServiceMock);

      // Create the middleware dependencies.
      final fakeStore = FakeStore();
      final action = GetAuthorizedAction(provider: ProviderName.google);
      nullDispatcher(dynamic _) => null;

      // Create the error to catch.
      when(databaseServiceMock.updateAuthorizationStep(
              provider: action.provider,
              uid: '-',
              step: AuthorizationStep.gettingAuthorized))
          .thenThrow('error');

      // Call the middleware.
      middleware.call(fakeStore, action, nullDispatcher);

      // Error should be caught and AddProblemAction dispatched.
      expect(fakeStore.dispatchedActions.last is AddProblemAction, true);
    });

    test('CreateSection catches error', () {
      // Setup the middleware and mocks.
      final httpServiceMock = MockHttpService();
      final middleware = CreateSectionMiddleware(httpServiceMock);

      // Create the middleware dependencies.
      final fakeStore = FakeStore();
      final action = CreateSectionAction();
      nullDispatcher(dynamic _) => null;

      // Create the error to catch.
      when(httpServiceMock.createSection(name: 'section')).thenThrow('error');

      // Call the middleware.
      middleware.call(fakeStore, action, nullDispatcher);

      // Error should be caught and AddProblemAction dispatched.
      expect(fakeStore.dispatchedActions.last is AddProblemAction, true);
    }, skip: true);

    test('OpenDatabaseSink catches error', () {
      // Setup the middleware and mocks.
      final databaseServiceMock = MockDatabaseService();
      final middleware = OpenDatabaseSinkMiddleware(databaseServiceMock);

      // Create the middleware dependencies.
      final fakeStore = FakeStore();
      final action =
          ConnectDatabaseAction(section: DatabaseSectionEnum.sections);
      nullDispatcher(dynamic _) => null;

      // Create the error to catch.
      when(databaseServiceMock.connectSections()).thenThrow('error');

      // Call the middleware.
      middleware.call(fakeStore, action, nullDispatcher);

      // Error should be caught and AddProblemAction dispatched.
      expect(fakeStore.dispatchedActions.last is AddProblemAction, true);
    });
  });
}
