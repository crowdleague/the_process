final textField = find.byType(TextFormField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'testy');

    expect(find.byType(WaitingIndicator), findsNothing);

    final submitButton = find.byType(FloatingActionButton);
    expect(submitButton, findsOneWidget);
    await tester.tap(submitButton);

    await tester.pump();

    expect(find.byType(WaitingIndicator), findsOneWidget);
    expect(find.byType(TextFormField), findsNothing);
    expect(find.byType(FloatingActionButton), findsNothing);

    fakeDatabase.emitSectionsSnapshot();

    await tester.pump();

    expect(find.byType(WaitingIndicator), findsNothing);
    expect(find.byType(TextFormField), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);