import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:redfire/actions.dart';
import 'package:redfire/types.dart';
import 'package:redfire/widgets.dart';
import 'package:redfire_test/redfire_test.dart';
import 'package:the_process/main.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      as IntegrationTestWidgetsFlutterBinding;
  testWidgets('create a section', (WidgetTester tester) async {
    // final fakeAuth = FakeFirebaseAuth();
    // final fakeDatabase = FakeFirebaseFirestore();

    // final store = StoreWithFakedServices(
    //     authService: AuthService(auth: fakeAuth),
    //     databaseService: DatabaseService(database: fakeDatabase));
    // final harness = AppWidgetHarness(store: store);

    final services = ServicesHarnessForAuth();
    final harness =
        AppWidgetHarness.withMockedPlugins(AppState.init(), services);

    runApp(harness.widget);

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

      store.dispatch(StoreAuthStepAction(AuthenticationEnum.waitingForInput));

      await tester.pump();

      expect(find.byType(WaitingIndicator), findsNothing);

      expect(find.byType(AppleSignInButton), findsOneWidget);

      // simulate the state for an authenticated user being emitted
      fakeAuth.emitUser();

      await tester.pump();

      expect(find.byType(NewSectionItem), findsOneWidget);

      final textField = find.byType(TextFormField);
      expect(textField, findsOneWidget);
      await tester.enterText(textField, 'testy');

      expect(find.byType(WaitingIndicator), findsNothing);

      final submitButton = find.byType(MaterialButton);
      expect(submitButton, findsOneWidget);
      await tester.tap(submitButton);

      await tester.pump();

      expect(find.byType(WaitingIndicator), findsOneWidget);
      expect(find.byType(TextFormField), findsNothing);
      expect(find.byType(MaterialButton), findsNothing);

      fakeDatabase.emitSectionsSnapshot();

      await tester.pump();

      expect(find.byType(WaitingIndicator), findsNothing);
      expect(find.byType(TextFormField), findsOneWidget);
      expect(find.byType(MaterialButton), findsOneWidget);
    });
  });
}
