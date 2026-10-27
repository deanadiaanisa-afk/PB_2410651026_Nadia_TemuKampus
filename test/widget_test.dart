import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_pb/main.dart';

// Membuka MyApp lalu masuk ke screen Lapor Barang dari Home
Future<void> bukaFormLapor(WidgetTester tester) async {
  await tester.pumpWidget(const MyApp());
  await tester.ensureVisible(find.text('Lapor Barang'));
  await tester.tap(find.text('Lapor Barang'));
  await tester.pumpAndSettle();
}

// Menekan tombol Kirim Laporan dan menunggu SnackBar muncul
Future<void> tekanKirim(WidgetTester tester) async {
  await tester.ensureVisible(find.text('Kirim Laporan'));
  await tester.tap(find.text('Kirim Laporan'));
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 400));
}

void main() {
  testWidgets('Navigasi: Home membuka Daftar Laporan lalu kembali',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Form & Validation v0.2'), findsOneWidget);

    await tester.ensureVisible(find.text('Lihat Daftar Laporan'));
    await tester.tap(find.text('Lihat Daftar Laporan'));
    await tester.pumpAndSettle();
    expect(find.text('Daftar Laporan'), findsOneWidget);

    await tester.tap(find.text('Hilang'));
    await tester.pumpAndSettle();
    expect(find.text('Kunci motor'), findsNothing);

    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.text('Form & Validation v0.2'), findsOneWidget);
  });

  testWidgets('Navigasi: form bisa dibuka lalu kembali ke Home',
      (WidgetTester tester) async {
    await bukaFormLapor(tester);
    expect(find.text('Jenis laporan'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.text('Form & Validation v0.2'), findsOneWidget);
  });

  testWidgets('Form kosong menampilkan pesan error', (WidgetTester tester) async {
    await bukaFormLapor(tester);
    await tekanKirim(tester);

    expect(find.text('Nama barang tidak boleh kosong'), findsOneWidget);
    expect(find.text('Lokasi tidak boleh kosong'), findsOneWidget);
    expect(find.text('Input belum valid'), findsOneWidget);
    expect(find.text('Periksa kembali input yang belum valid'), findsOneWidget);
  });

  testWidgets('Nama terlalu pendek ditolak', (WidgetTester tester) async {
    await bukaFormLapor(tester);
    await tester.enterText(find.byType(TextFormField).at(0), 'An');
    await tester.enterText(find.byType(TextFormField).at(1), 'Kantin Gedung A');
    await tekanKirim(tester);

    expect(find.text('Nama barang minimal 3 karakter'), findsOneWidget);
    expect(find.text('Lokasi tidak boleh kosong'), findsNothing);
  });

  testWidgets('Lokasi berisi nomor telepon ditolak', (WidgetTester tester) async {
    await bukaFormLapor(tester);
    await tester.enterText(find.byType(TextFormField).at(0), 'Dompet hitam');
    await tester.enterText(find.byType(TextFormField).at(1), '081234567890');
    await tekanKirim(tester);

    expect(find.text('Lokasi jangan berisi nomor telepon'), findsOneWidget);
  });

  testWidgets('Form valid menampilkan SnackBar dan status berubah',
      (WidgetTester tester) async {
    await bukaFormLapor(tester);
    await tester.enterText(find.byType(TextFormField).at(0), 'Dompet hitam');
    await tester.enterText(find.byType(TextFormField).at(1), 'Kantin Gedung A');
    await tekanKirim(tester);

    expect(find.textContaining('berhasil dikirim'), findsOneWidget);
    expect(
      find.text('Laporan terakhir: Dompet hitam (Hilang) di Kantin Gedung A'),
      findsOneWidget,
    );
    expect(find.text('Nama barang tidak boleh kosong'), findsNothing);
  });
}
