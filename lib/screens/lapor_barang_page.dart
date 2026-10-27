import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../models/laporan.dart';

class LaporBarangPage extends StatefulWidget {
  const LaporBarangPage({super.key});

  @override
  State<LaporBarangPage> createState() => _LaporBarangPageState();
}

class _LaporBarangPageState extends State<LaporBarangPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _lokasiController = TextEditingController();

  String _status = 'Hilang';
  XFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  void dispose() {
    _namaController.dispose();
    _lokasiController.dispose();
    super.dispose();
  }

  // Buka kamera langsung tanpa opsi galeri
  Future<void> _ambilFotoKamera() async {
    try {
      final XFile? photo = await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 80,
      );
      if (photo != null) {
        setState(() {
          _imageFile = photo;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Gagal membuka kamera: $e')),
        );
      }
    }
  }

  String? _validasiNama(String? value) {
    final teks = value?.trim() ?? '';
    if (teks.isEmpty) {
      return 'Nama barang tidak boleh kosong';
    }
    if (teks.length < 3) {
      return 'Nama barang minimal 3 karakter';
    }
    return null;
  }

  String? _validasiLokasi(String? value) {
    final teks = value?.trim() ?? '';
    if (teks.isEmpty) {
      return 'Lokasi tidak boleh kosong';
    }
    if (teks.length < 3) {
      return 'Lokasi minimal 3 karakter';
    }
    final jumlahAngka = teks.replaceAll(RegExp(r'[^0-9]'), '').length;
    if (jumlahAngka >= 8) {
      return 'Lokasi jangan berisi nomor telepon / nomor HP';
    }
    return null;
  }

  void _kirimLaporan() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (!isValid) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Periksa kembali input yang belum valid')),
        );
      }
      return;
    }

    final laporanBaru = Laporan(
      nama: _namaController.text.trim(),
      lokasi: _lokasiController.text.trim(),
      tanggal: '27/10/2026',
      status: _status,
      imagePath: _imageFile?.path,
    );

    // Kirim data kembali ke halaman daftar laporan
    Navigator.pop(context, laporanBaru);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lapor Barang'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
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
              selected: {_status},
              onSelectionChanged: (pilihan) {
                setState(() {
                  _status = pilihan.first;
                });
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: 'Nama barang',
                hintText: 'Contoh: Dompet hitam',
                border: OutlineInputBorder(),
              ),
              validator: _validasiNama,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _lokasiController,
              decoration: const InputDecoration(
                labelText: 'Lokasi (umum)',
                hintText: 'Contoh: Kantin Gedung A',
                helperText: 'Jangan isi alamat pribadi atau nomor telepon.',
                border: OutlineInputBorder(),
              ),
              validator: _validasiLokasi,
            ),
            const SizedBox(height: 16),
            const Text(
              'Foto Barang (Kamera)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: _ambilFotoKamera,
                  icon: const Icon(Icons.camera_alt),
                  label: const Text('Buka Kamera'),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    _imageFile != null ? 'Foto berhasil diambil' : 'Belum ada foto',
                    style: TextStyle(
                      color: _imageFile != null ? Colors.green : Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            if (_imageFile != null) ...[
              const SizedBox(height: 12),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: kIsWeb
                      ? Image.network(_imageFile!.path, fit: BoxFit.cover)
                      : Image.file(File(_imageFile!.path), fit: BoxFit.cover),
                ),
              ),
            ],
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _kirimLaporan,
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
    );
  }
}