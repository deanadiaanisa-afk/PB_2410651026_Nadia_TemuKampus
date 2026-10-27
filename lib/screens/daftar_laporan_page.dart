import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/laporan.dart';
import '../warna.dart';
import 'lapor_barang_page.dart';

class DaftarLaporanPage extends StatefulWidget {
  const DaftarLaporanPage({super.key});

  @override
  State<DaftarLaporanPage> createState() => _DaftarLaporanPageState();
}

class _DaftarLaporanPageState extends State<DaftarLaporanPage> {
  String filter = 'Semua';

  List<Laporan> semuaLaporan = [
    const Laporan(
      nama: 'Dompet hitam',
      lokasi: 'Kantin Gedung A',
      tanggal: '13/10/2026',
      status: 'Hilang',
    ),
    const Laporan(
      nama: 'Kunci motor',
      lokasi: 'Perpustakaan lantai 2',
      tanggal: '13/10/2026',
      status: 'Ditemukan',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final tampil = filter == 'Semua'
        ? semuaLaporan
        : semuaLaporan.where((l) => l.status == filter).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Laporan')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final laporanBaru = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LaporBarangPage(),
            ),
          );

          if (laporanBaru != null && laporanBaru is Laporan) {
            setState(() {
              semuaLaporan.insert(0, laporanBaru);
            });
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Laporan "${laporanBaru.nama}" berhasil ditambahkan!')),
              );
            }
          }
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
                  onSelected: (_) => setState(() => filter = f),
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
                  final warna = laporan.status == 'Hilang' ? warnaHilang : warnaDitemukan;
                  final ikon = laporan.status == 'Hilang' ? Icons.search_off : Icons.inventory_2_outlined;

                  return Card(
                    child: ListTile(
                      leading: laporan.imagePath != null
                          ? CircleAvatar(
                              backgroundImage: kIsWeb
                                  ? NetworkImage(laporan.imagePath!) as ImageProvider
                                  : FileImage(File(laporan.imagePath!)),
                            )
                          : Icon(ikon, color: warna),
                      title: Text(laporan.nama),
                      subtitle: Text('${laporan.lokasi} • ${laporan.tanggal}'),
                      trailing: Text(
                        laporan.status.toUpperCase(),
                        style: TextStyle(color: warna, fontWeight: FontWeight.bold),
                      ),
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