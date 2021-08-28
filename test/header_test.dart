import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/ui/header.dart';

void main() {
  testWidgets("Header widget has title", (WidgetTester tester) async {
    final textValue = "MyTitle";
    await tester.pumpWidget(Header(title:textValue));
    final sut =  find.byType(Text); // find.text(textValue);
    expect(sut, findsOneWidget);
    // print(sut.first.evaluate().cast<Text>());
    final text = sut.evaluate().single.widget as Text;
    expect(text.data, textValue);
  });
}