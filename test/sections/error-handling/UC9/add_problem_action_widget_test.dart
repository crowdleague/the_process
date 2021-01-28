import 'package:flutter_test/flutter_test.dart';
import 'package:the_process/actions/problems/add_problem.dart';
import 'package:the_process/widgets/app_widget/app_widget.dart';
import 'package:the_process/widgets/shared/problem_page.dart';

import '../../../utils/widget_test_harness.dart';

void main() {
  group('AddProblemAction', () {
    testWidgets('Adds ProblemPage to widget tree', (WidgetTester tester) async {
      final wig = WidgetTestHarness(widgetUnderTest: AppWidget());
      await tester.pumpWidget(wig);

      final errorString = 'Problem error message';

      // need stream controller
      AddProblem(errorString: errorString);

      final problemPage = find.byType(ProblemPage);

      expect(problemPage, findsOneWidget);
    });
  });
}

// should this file be named
// add_problem_action_widget_test.dart
// or
// addProblemAction_widget_test.dart
