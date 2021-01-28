import 'package:flutter_test/flutter_test.dart';
import 'package:the_process/models/navigation/page_data/problem_page_data.dart';
import 'package:the_process/models/problems/problem.dart';
import 'package:the_process/widgets/shared/problem_page.dart';

import '../../../mocks/redux/fake_store.dart';
import '../../../utils/testing/app_widget_harness.dart';

void main() {
  group('AddProblemAction', () {
    testWidgets('Adds ProblemPage to widget tree', (WidgetTester tester) async {
      final errorString = 'Problem error message';
      final problem = Problem(errorString: errorString);
      final problemPageData = ProblemPageData(problem: problem);

      final store =
          FakeStore(updates: (b) => b..pagesData.add(problemPageData));
      final widget = AppWidgetHarness(store: store).widget;

      await tester.pumpWidget(widget);

      await tester.pump();

      final problemPage = find.byType(ProblemPage);

      expect(problemPage, findsOneWidget);
    });
  });
}

// should this file be named
// add_problem_action_widget_test.dart
// or
// addProblemAction_widget_test.dart
