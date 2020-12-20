import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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

import '../data/models/auth_user_data_examples.dart';
import '../mocks/firebase/fake_firebase_auth.dart';
import '../mocks/firebase/firebase_firestore_mocks.dart';
import '../mocks/firebase/user_metadata_mocks.dart';
import '../mocks/firebase/user_mocks.dart';
import '../mocks/redux/fake_store.dart';
import '../mocks/services/platform_service_mocks.dart';
import '../utils/testing/app_widget_harness.dart';

void main() {
  testWidgets('AppWidget shows NewSectionItem after authentication',
      (WidgetTester tester) async {
    // Declare the Finders used in the test.

    /// Build a test harness that updates the app state so the [InitialPage]
    /// builds the [HomePage].
    final fakeAuthenticatedStore = FakeStore(
        updates: (b) => b
          ..authUserData.replace(AuthUserDataExamples.minimal)
          ..authStep = AuthStep.waitingForInput);
    final harness = AppWidgetHarness(store: fakeAuthenticatedStore);

    // Build the widget tree.
    await tester.pumpWidget(harness.widget);

    await tester.pump();

    expect(find.byType(InitializingIndicator), findsNothing);

    expect(find.byType(InitializingErrorPage), findsNothing);

    expect(find.byType(NewSectionItem), findsOneWidget);
  });

  testWidgets(
      'AppWidget with real services shows NewSectionItem after authentication',
      (WidgetTester tester) async {
    final authEventsController = StreamController<ReduxAction>();
    final databaseEventsController = StreamController<ReduxAction>();
    final authStateEventsController = StreamController<User>();
    final fakeAuth =
        FakeFirebaseAuth(authStateEventsController: authStateEventsController);
    final authService =
        AuthService(auth: fakeAuth, eventsController: authEventsController);
    final databaseService = DatabaseService(
        database: FakeFirebaseFirestore(),
        eventsController: databaseEventsController);

    final mockPlatformService = MockPlatformService();
    when(mockPlatformService.detectPlatform()).thenReturn(PlatformEnum.iOS);

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

    // Build the widget tree.
    await tester.pumpWidget(harness.widget);

    await tester.pump();

    // test we have gotten past initialization and are in the 'checking' state
    expect(find.byType(InitializingIndicator), findsNothing);
    expect(find.byType(InitializingErrorPage), findsNothing);
    expect(find.byType(WaitingIndicator), findsOneWidget);

    store.dispatch(StoreAuthStep(step: AuthStep.waitingForInput));

    await tester.pump();

    expect(find.byType(WaitingIndicator), findsNothing);

    expect(find.byType(AppleSignInButton), findsOneWidget);

    authStateEventsController.add(FakeUser(
        uid: 'uid',
        metadata: FakeUserMetada(creationTimestamp: 1000, lastSignInTime: 1000),
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
}
