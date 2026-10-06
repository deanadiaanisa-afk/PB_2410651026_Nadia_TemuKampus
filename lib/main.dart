import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TemuKampus', // UBAH: judul aplikasi
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal), // UBAH: warna tema
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TemuKampus 🔎'), // UBAH: judul di atas layar
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Prototype v0.0',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                // UBAH: deskripsi sesuai ide aplikasi
                'Aplikasi ini membantu mahasiswa dan warga kampus melaporkan barang hilang atau barang yang ditemukan.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.teal.shade50, // UBAH: warna kartu
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nama: Nadianur Anisa'),
                    Text('NIM: 2410651026'),
                    Text('Target Pengguna: Mahasiswa dan warga kampus'), // UBAH
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // UBAH (TAMBAHAN): kartu fitur awal dan risiko privasi
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.amber.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fitur Awal',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Tambah nama barang, lokasi, dan status hilang/ditemukan.'),
                    SizedBox(height: 12),
                    Text(
                      'Risiko Privasi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Data lokasi dan informasi laporan perlu dijaga agar tidak disalahgunakan.',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      // UBAH: teks notifikasi
                      content: Text('Prototype v0.0 TemuKampus siap dikembangkan.'),
                    ),
                  );
                },
                child: const Text('Mulai Eksplorasi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}