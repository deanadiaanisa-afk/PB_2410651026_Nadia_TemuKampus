# TemuKampus

## Deskripsi
TemuKampus adalah aplikasi prototype untuk membantu mahasiswa mengelola dan menemukan barang hilang/ditemukan di lingkungan kampus.

## Milestone Saat Ini
Form & Validation v0.2

## Versi
v0.2 - Form & Validation

## Daftar Screen
- Home Page
- Daftar Laporan Page
- Lapor Barang Page (Form & Kamera)
- Profil Page

## Cara Menjalankan
flutter run -d chrome

## Fitur BAB 6
- Menambahkan form input penambahan barang tervalidasi.
- Menggunakan TextFormField untuk input yang divalidasi.
- Menambahkan validasi wajib diisi, panjang minimal 3 karakter, serta pencegahan nomor HP pada lokasi.
- Fitur pemotretan barang hilang/ditemukan secara instan melalui Kamera (`image_picker`).
- Menampilkan pesan error yang jelas jika input tidak sesuai.
- Menampilkan user feedback menggunakan SnackBar saat data ditambahkan.
- Menggunakan state sederhana (`setState`) untuk menampilkan hasil secara real-time.
- Memastikan navigasi v0.1 tetap berjalan lancar.

## Aturan Validasi
- Nama barang tidak boleh kosong & minimal 3 karakter.
- Lokasi barang tidak boleh kosong, minimal 3 karakter, dan tidak boleh memuat nomor telepon.

## Skenario Uji
- Form kosong (Muncul pesan validasi wajib isi)
- Nama terlalu pendek (Muncul error minimal 3 karakter)
- Lokasi berisi angka/nomor telepon (Muncul error peringatan lokasi)
- Form valid + Foto Kamera (Berhasil disimpan & muncul SnackBar feedback)