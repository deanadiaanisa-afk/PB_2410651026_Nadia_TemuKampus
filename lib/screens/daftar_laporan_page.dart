import 'package:flutter/material.dart';

import '../warna.dart';
import 'lapor_barang_page.dart';

// Data satu laporan barang
class Laporan {
  final String nama;
  final String lokasi;
  final String tanggal;
  final String status; // 'Hilang' atau 'Ditemukan'

  const Laporan({
    required this.nama,
    required this.lokasi,
    required this.tanggal,
    required this.status,
  });
}

class DaftarLaporanPage extends StatefulWidget {
  const DaftarLaporanPage({super.key});

  @override
  State<DaftarLaporanPage> createState() => _DaftarLaporanPageState();
}

class _DaftarLaporanPageState extends State<DaftarLaporanPage> {
  String filter = 'Semua';

  // Data contoh. Penyimpanan laporan asli dibahas di BAB 6.
  final List<Laporan> semuaLaporan = const [
    Laporan(
      nama: 'Dompet hitam',
      lokasi: 'Kantin Gedung A',
      tanggal: '13/10/2026',
      status: 'Hilang',
    ),
    Laporan(
      nama: 'Kunci motor',
      lokasi: 'Perpustakaan lantai 2',
      tanggal: '13/10/2026',
      status: 'Ditemukan',
    ),
    Laporan(
      nama: 'Payung biru',
      lokasi: 'Depan Gedung B',
      tanggal: '12/10/2026',
      status: 'Hilang',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final tampil = filter == 'Semua'
        ? semuaLaporan
        : semuaLaporan.where((l) => l.status == filter).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Laporan'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LaporBarangPage(),
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Lapor Barang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8,
              children: ['Semua', 'Hilang', 'Ditemukan'].map((f) {
                return ChoiceChip(
                  label: Text(f),
                  selected: filter == f,
                  onSelected: (_) {
                    setState(() {
                      filter = f;
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 80),
                itemCount: tampil.length,
                itemBuilder: (context, index) {
                  final laporan = tampil[index];
                  final warna =
                      laporan.status == 'Hilang' ? warnaHilang : warnaDitemukan;
                  final ikon = laporan.status == 'Hilang'
                      ? Icons.search_off
                      : Icons.inventory_2_outlined;

                  return Card(
                    child: ListTile(
                      leading: Icon(ikon, color: warna),
                      title: Text(laporan.nama),
                      subtitle: Text('${laporan.lokasi} • ${laporan.tanggal}'),
                      trailing: Text(
                        laporan.status.toUpperCase(),
                        style: TextStyle(
                          color: warna,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Laporan dipilih: ${laporan.nama}'),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
