import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_2/main.dart';

void main() {
  testWidgets('Calculator app loads with main actions', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Kalkulator'), findsOneWidget);
    expect(find.text('Tambah'), findsOneWidget);
    expect(find.text('Kurang'), findsOneWidget);
    expect(find.text('Clear'), findsOneWidget);
  });
}
