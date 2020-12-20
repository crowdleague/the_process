import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/enums/platform/platform_enum.dart';
import 'package:the_process/middleware/app_middleware.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/reducers/app_reducer.dart';
import 'package:the_process/services/auth_service.dart';
import 'package:the_process/widgets/app_widget/initializing_error_page.dart';
import 'package:the_process/widgets/app_widget/initializing_indicator.dart';
import 'package:the_process/widgets/sections/new_section_item.dart';

import '../../../mocks/firebase/firebase_auth_mocks.dart';
import '../../../mocks/services/database_service_mocks.dart';
import '../../../mocks/services/platform_service_mocks.dart';
import '../../../utils/testing/app_widget_harness.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      as IntegrationTestWidgetsFlutterBinding;
  testWidgets('create a section', (WidgetTester tester) async {
    final mockDatabaseService = MockDatabaseService();
    final mockPlatformService = MockPlatformService();
    when(mockPlatformService.detectPlatform()).thenReturn(PlatformEnum.iOS);

    final authEventsController = StreamController<ReduxAction>();
    final authService = AuthService(
        auth: FakeFirebaseAuth(), eventsController: authEventsController);

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
          databaseService: mockDatabaseService,
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

      // expect(find.byType(GoogleSignInButton), findsOneWidget);

      expect(find.byType(NewSectionItem), findsOneWidget);

      final textField = find.byType(TextFormField);
      expect(textField, findsOneWidget);
      await tester.enterText(textField, 'testy');

      // expect(fakeStore.dispatchedActions,
      //     contains(UpdateNewSectionVM(name: 'testy')));

      final submitButton = find.byType(MaterialButton);
      expect(submitButton, findsOneWidget);
      await tester.tap(submitButton);

      // expect(fakeStore.dispatchedActions, contains(CreateSection()));
    });
  });
}
