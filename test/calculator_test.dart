import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/calculator.dart';

void main() {
  testWidgets('Calculator renders all UI elements accurately', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Calculator()));

    // Verify AppBar title
    expect(find.text('Murillo Activity 5'), findsOneWidget);

    // Verify TextFields
    expect(find.widgetWithText(TextField, 'Number 1'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Number 2'), findsOneWidget);

    // Verify operator buttons
    expect(find.widgetWithText(ElevatedButton, '+'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, '-'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, '*'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, '÷'), findsOneWidget);

    // Verify initial Result box
    expect(find.text('Result: '), findsOneWidget);
  });

  testWidgets('Calculator performs addition correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Calculator()));

    await tester.enterText(find.widgetWithText(TextField, 'Number 1'), '15');
    await tester.enterText(find.widgetWithText(TextField, 'Number 2'), '27');
    await tester.tap(find.widgetWithText(ElevatedButton, '+'));
    await tester.pump();

    expect(find.text('Result: 42.00'), findsOneWidget);
  });

  testWidgets('Calculator performs subtraction correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Calculator()));

    await tester.enterText(find.widgetWithText(TextField, 'Number 1'), '50');
    await tester.enterText(find.widgetWithText(TextField, 'Number 2'), '18');
    await tester.tap(find.widgetWithText(ElevatedButton, '-'));
    await tester.pump();

    expect(find.text('Result: 32.00'), findsOneWidget);
  });

  testWidgets('Calculator performs multiplication correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Calculator()));

    await tester.enterText(find.widgetWithText(TextField, 'Number 1'), '6');
    await tester.enterText(find.widgetWithText(TextField, 'Number 2'), '7');
    await tester.tap(find.widgetWithText(ElevatedButton, '*'));
    await tester.pump();

    expect(find.text('Result: 42.00'), findsOneWidget);
  });

  testWidgets('Calculator performs division correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Calculator()));

    await tester.enterText(find.widgetWithText(TextField, 'Number 1'), '100');
    await tester.enterText(find.widgetWithText(TextField, 'Number 2'), '4');
    await tester.tap(find.widgetWithText(ElevatedButton, '÷'));
    await tester.pump();

    expect(find.text('Result: 25.00'), findsOneWidget);
  });

  testWidgets('Calculator handles division by zero correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Calculator()));

    await tester.enterText(find.widgetWithText(TextField, 'Number 1'), '50');
    await tester.enterText(find.widgetWithText(TextField, 'Number 2'), '0');
    await tester.tap(find.widgetWithText(ElevatedButton, '÷'));
    await tester.pump();

    expect(find.text('Result: Cannot divide by zero'), findsOneWidget);
  });
}

