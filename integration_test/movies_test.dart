import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/ui/movies.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  String _getRowTitle(element) {
    final card = element.widget as Card;
    final row = card.child as ListTile;
    final text = row.title as Text;
    return text.data;
  }

  testWidgets("given user when selected a movie then movie details is shown", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Movies()));
    await tester.pumpAndSettle(Duration(seconds: 4));
    final cards = find.byType(Card).evaluate().toList();
    expect(cards.length, 3);
    expect(_getRowTitle(cards.first), "Avatar");
    await tester.tap(find.byWidget(cards.first.widget));
    await tester.pumpAndSettle(Duration(seconds: 4));
    expect(find.text("2009 - Action, Adventure, Fantasy"), findsOneWidget);
  });

}
