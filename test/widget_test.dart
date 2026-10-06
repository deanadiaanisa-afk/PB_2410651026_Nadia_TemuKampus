import 'package:flutter_test/flutter_test.dart';
import 'package:project_pb/main.dart';

void main() {
  testWidgets('TemuKampus menampilkan halaman prototype',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Prototype v0.0'), findsOneWidget);
    expect(find.text('Mulai Eksplorasi'), findsOneWidget);
  });
}