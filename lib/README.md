# TemuKampus

## Deskripsi
TemuKampus adalah aplikasi untuk membantu mahasiswa dan warga kampus melaporkan barang hilang atau barang yang ditemukan. Masalah yang diangkat: barang hilang sulit dilacak, dan orang yang menemukan barang bingung harus melapor ke mana.

## Identitas
Nama: Nadianur Anisa
NIM: 2410651026
Kelas: B

## Milestone Saat Ini
Navigation v0.1

## Versi
v0.1 - Navigation

## Daftar Screen
- Home
- Daftar Laporan
- Lapor Barang
- Profil Pengembang

## Alur Navigasi
- Home ke Lapor Barang (tombol "Lapor Barang")
- Home ke Daftar Laporan (tombol "Lihat Daftar Laporan")
- Home ke Profil Pengembang (tombol "Profil Pengembang")
- Daftar Laporan ke Lapor Barang (tombol "+ Lapor Barang")
- Semua screen kembali ke screen sebelumnya dengan Navigator.pop (tombol kembali di AppBar, tombol "Batal", atau "Kembali ke Beranda")

## Fitur BAB 5
- Navigasi antar screen dengan Navigator.push dan MaterialPageRoute.
- Tombol kembali dengan Navigator.pop.
- Event handling tombol dengan onPressed.
- Input pengguna: dua TextField (nama barang dan lokasi) dan pilihan jenis laporan (Hilang/Ditemukan).
- Respons pengguna: SnackBar saat laporan dikirim atau kolom kosong.
- Filter daftar laporan (Semua / Hilang / Ditemukan).

## Fitur dari Prototype v0.0 yang Dipertahankan
Home tetap menampilkan nama aplikasi, deskripsi, fitur awal, dan risiko privasi. Identitas pengembang dipindah ke screen Profil sesuai UI Blueprint.

## Perbedaan dengan UI Blueprint
- Setelah "Kirim Laporan", aplikasi kembali ke screen sebelumnya dan menampilkan SnackBar. Laporan belum masuk ke Daftar karena penyimpanan data baru dibahas di BAB 6.
- Daftar Laporan masih memakai data contoh.

## Struktur Folder
```
lib/
  main.dart
  warna.dart
  screens/
    home_page.dart
    daftar_laporan_page.dart
    lapor_barang_page.dart
    profil_page.dart
test/
  widget_test.dart
docs/
  ui-blueprint/
  screenshots/
```

## Cara Menjalankan
```
flutter pub get
flutter run -d chrome
```
Pengujian: `flutter test`

## Screenshot
![Home](docs/screenshots/01-home.png)
![Daftar Laporan](docs/screenshots/02-daftar-laporan.png)
![Lapor Barang](docs/screenshots/03-lapor-barang.png)
![Input dan SnackBar](docs/screenshots/04-input-snackbar.png)
![Profil](docs/screenshots/05-profil.png)

## Risiko Privasi
Data lokasi dan informasi laporan perlu dijaga agar tidak disalahgunakan. Kolom lokasi hanya untuk lokasi umum, dan aplikasi tidak meminta nomor HP atau alamat pribadi.

## Catatan Kendala
Saat dijalankan tampilan di chrome tidak ada tampilannya, dan saya langsung perbaiki kendalanya

## Catatan Penggunaan AI
AI (Claude) digunakan untuk membantu menyusun kerangka kode Navigation v0.1 berdasarkan UI Blueprint dan menjelaskan konsep Navigator, onPressed, dan TextField. Rincian ada di AI_USAGE.md.
