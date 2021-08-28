import 'package:flutter/material.dart';
import 'package:flutter_app/ui/todo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  final _task = "Nauczyć się Darta";

  _createTask(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Todo()));
    await tester.enterText(find.byType(TextField), _task);
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();
  }

  testWidgets("given task is entered when button is tapped then task is added to todos", (WidgetTester tester) async {
    await _createTask(tester);
    expect(find.text(_task), findsOneWidget);
  });

  testWidgets("given existing task when swipe then task is removed", (WidgetTester tester) async {
    await _createTask(tester);
    await tester.drag(find.byType(Dismissible), Offset(400, 0));
    await tester.pumpAndSettle();
    expect(find.text(_task), findsNothing);
  });

}

// flutter test test/todo_test.dart
