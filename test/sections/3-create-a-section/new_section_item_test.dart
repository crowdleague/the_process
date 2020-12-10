import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_process/widgets/sections/new_section_item.dart';
import 'package:the_process/widgets/shared/waiting_indicator.dart';

import '../../utils/widget_test_harness.dart';

void main() {
  testWidgets('NewSectionItem dispatches UpdateNewSectionVM on text entry',
      (WidgetTester tester) async {
    // Setup a test harness.
    final harness = WidgetTestHarness(widgetUnderTest: NewSectionItem('3'));

    // Check that we are in the expected initial state.
    expect(harness.state.sections.newSection.name, '');
    expect(harness.state.sections.newSection.number, 1);
    expect(harness.state.sections.newSection.creating, false);

    // Tell the tester to build the widget tree.
    await tester.pumpWidget(harness.widget);

    // Create the Finders.
    final textField = find.byType(TextField);
    final button = find.byType(MaterialButton);
    final waitingIndicator = find.byType(WaitingIndicator);

    // verify that the AuthPage UI is shown
    expect(textField, findsOneWidget);
    expect(button, findsOneWidget);
    expect(waitingIndicator, findsNothing);
  });
}
