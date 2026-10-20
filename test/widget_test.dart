import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_pb/main.dart';

void main() {
  testWidgets('Home membuka Daftar Laporan lalu kembali',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Navigation v0.1'), findsOneWidget);

    await tester.ensureVisible(find.text('Lihat Daftar Laporan'));
    await tester.tap(find.text('Lihat Daftar Laporan'));
    await tester.pumpAndSettle();
    expect(find.text('Daftar Laporan'), findsOneWidget);

    await tester.tap(find.text('Hilang'));
    await tester.pumpAndSettle();
    expect(find.text('Kunci motor'), findsNothing);

    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.text('Navigation v0.1'), findsOneWidget);
  });

  testWidgets('Lapor Barang menerima input dan menampilkan SnackBar',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.ensureVisible(find.text('Lapor Barang'));
    await tester.tap(find.text('Lapor Barang'));
    await tester.pumpAndSettle();
    expect(find.text('Jenis laporan'), findsOneWidget);

    await tester.enterText(find.byType(TextField).at(0), 'Dompet hitam');
    await tester.enterText(find.byType(TextField).at(1), 'Kantin Gedung A');
    await tester.ensureVisible(find.text('Kirim Laporan'));
    await tester.tap(find.text('Kirim Laporan'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.textContaining('berhasil dikirim'), findsWidgets);
    expect(find.text('Navigation v0.1'), findsOneWidget);
  });
}