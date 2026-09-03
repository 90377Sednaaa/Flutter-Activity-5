import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/main.dart';

void main() {
  testWidgets('Calculator app launches and displays title smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Murillo Activity 5'), findsOneWidget);
    expect(find.text('Result: '), findsOneWidget);
  });
}
