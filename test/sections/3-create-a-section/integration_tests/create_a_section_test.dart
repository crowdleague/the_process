import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';
import 'package:the_process/actions/auth/store_auth_step.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/enums/auth/auth_step.dart';
import 'package:the_process/enums/platform/platform_enum.dart';
import 'package:the_process/middleware/app_middleware.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/reducers/app_reducer.dart';
import 'package:the_process/services/auth_service.dart';
import 'package:the_process/services/database_service.dart';
import 'package:the_process/widgets/app_widget/initializing_error_page.dart';
import 'package:the_process/widgets/app_widget/initializing_indicator.dart';
import 'package:the_process/widgets/auth/auth_page_buttons/apple_sign_in_button.dart';
import 'package:the_process/widgets/sections/new_section_item.dart';
import 'package:the_process/widgets/shared/waiting_indicator.dart';

import '../../../mocks/firebase/firebase_auth_mocks.dart';
import '../../../mocks/firebase/firebase_firestore_mocks.dart';
import '../../../mocks/firebase/user_metadata_mocks.dart';
import '../../../mocks/firebase/user_mocks.dart';
import '../../../mocks/services/platform_service_mocks.dart';
import '../../../utils/testing/app_widget_harness.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      as IntegrationTestWidgetsFlutterBinding;
  testWidgets('create a section', (WidgetTester tester) async {
    // Create controllers to manipulate services
    final authEventsController = StreamController<ReduxAction>();
    final databaseEventsController = StreamController<ReduxAction>();
    final authStateEventsController = StreamController<User>();
    // Create an auth object for AuthService
    final fakeAuth =
        FakeFirebaseAuth(authStateEventsController: authStateEventsController);
    // Create the services using the previous objects
    final authService =
        AuthService(auth: fakeAuth, eventsController: authEventsController);
    final databaseService = DatabaseService(
        database: FakeFirebaseFirestore(),
        eventsController: databaseEventsController);
    // We just need the platform service to return a platform so we use a mock.
    final mockPlatformService = MockPlatformService();
    when(mockPlatformService.detectPlatform()).thenReturn(PlatformEnum.iOS);

    // we don't need to mock the sign in as we'll dispatch the actions that
    // would occur when there was already a signed in user
    // final credential = ExampleAppleIdCredential.basic;
    // when(mockAuthService.getAppleCredential())
    //     .thenAnswer((_) async => credential);
    // when(mockAuthService.signInWithApple(credential: credential));

    final store = Store<AppState>(
      appReducer,
      initialState: AppState.init(),
      middleware: [
        ...createAppMiddleware(
          authService: authService,
          databaseService: databaseService,
          platformService: mockPlatformService,
        ),
      ],
    );
    final harness = AppWidgetHarness(store: store);

    await runApp(harness.widget);

    // Trace the timeline of the following operation. The timeline result will
    // be written to `build/integration_response_data.json` with the key
    // `timeline`.
    await binding.traceAction(() async {
      await tester.pump();

      final initializingIndicatorFinder = find.byType(InitializingIndicator);

      expect(initializingIndicatorFinder, findsOneWidget);

      await tester.pump();

      expect(initializingIndicatorFinder, findsNothing);

      expect(find.byType(InitializingErrorPage), findsNothing);

      expect(find.byType(WaitingIndicator), findsOneWidget);

      store.dispatch(StoreAuthStep(step: AuthStep.waitingForInput));

      await tester.pump();

      expect(find.byType(WaitingIndicator), findsNothing);

      expect(find.byType(AppleSignInButton), findsOneWidget);

      authStateEventsController.add(FakeUser(
          uid: 'uid',
          metadata:
              FakeUserMetada(creationTimestamp: 1000, lastSignInTime: 1000),
          providerData: [],
          isAnonymous: false,
          emailVerified: false));

      await tester.pump();

      expect(find.byType(NewSectionItem), findsOneWidget);

      final textField = find.byType(TextFormField);
      expect(textField, findsOneWidget);
      await tester.enterText(textField, 'testy');

      final submitButton = find.byType(MaterialButton);
      expect(submitButton, findsOneWidget);
      await tester.tap(submitButton);
    });
  });
}
