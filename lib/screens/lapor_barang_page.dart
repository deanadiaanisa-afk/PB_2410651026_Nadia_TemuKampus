import 'package:flutter/material.dart';

class LaporBarangPage extends StatefulWidget {
  const LaporBarangPage({super.key});

  @override
  State<LaporBarangPage> createState() => _LaporBarangPageState();
}

class _LaporBarangPageState extends State<LaporBarangPage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController lokasiController = TextEditingController();
  String status = 'Hilang';

  @override
  void dispose() {
    namaController.dispose();
    lokasiController.dispose();
    super.dispose();
  }

  void kirimLaporan() {
    final nama = namaController.text.trim();
    final lokasi = lokasiController.text.trim();

    if (nama.isEmpty || lokasi.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nama barang dan lokasi belum diisi')),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Laporan "$nama" ($status) berhasil dikirim')),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lapor Barang'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Jenis laporan',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SegmentedButton<String>(
                segments: const [
                  ButtonSegment<String>(
                    value: 'Hilang',
                    label: Text('Hilang'),
                    icon: Icon(Icons.search_off),
                  ),
                  ButtonSegment<String>(
                    value: 'Ditemukan',
                    label: Text('Ditemukan'),
                    icon: Icon(Icons.inventory_2_outlined),
                  ),
                ],
                selected: {status},
                onSelectionChanged: (pilihan) {
                  setState(() {
                    status = pilihan.first;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextField(
                controller: namaController,
                decoration: const InputDecoration(
                  labelText: 'Nama barang',
                  hintText: 'Contoh: Dompet hitam',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: lokasiController,
                decoration: const InputDecoration(
                  labelText: 'Lokasi (umum)',
                  hintText: 'Contoh: Kantin Gedung A',
                  helperText: 'Jangan isi alamat pribadi.',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: kirimLaporan,
                child: const Text('Kirim Laporan'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Batal'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
