# TemuKampus

## Deskripsi
TemuKampus adalah prototype aplikasi sederhana untuk membantu mahasiswa dan warga kampus melaporkan barang hilang atau barang yang ditemukan. Masalah yang diangkat: barang hilang sulit dilacak, dan orang yang menemukan barang bingung harus melapor ke mana.

## Identitas
Nama: Nadianur Anisa
NIM: 2410651026
Kelas: B

## Versi
v0.0 - Prototype

## Target Pengguna
Mahasiswa dan warga kampus.

## Fitur Prototype v0.0
- Menampilkan nama aplikasi
- Menampilkan deskripsi aplikasi
- Menampilkan identitas pengembang (nama, NIM, target pengguna)
- Menampilkan fitur awal yang direncanakan (nama barang, lokasi, status hilang/ditemukan)
- Menampilkan catatan risiko privasi
- Menampilkan tombol interaktif sederhana dengan SnackBar

## Risiko Privasi
Data lokasi dan informasi laporan perlu dijaga agar tidak disalahgunakan. Pada pengembangan berikutnya, lokasi hanya ditampilkan secara umum dan aplikasi tidak menyimpan data pribadi yang tidak diperlukan.

## Cara Menjalankan
```bash
flutter pub get
flutter run -d chrome
```
Tekan `r` untuk hot reload, `R` untuk hot restart, dan `q` untuk menghentikan aplikasi.

## Bukti Running
Screenshot aplikasi berjalan di Chrome dilampirkan pada LMS.

## Catatan Kendala
- VS Code sempat tidak merespons (lag) saat Flutter berjalan bersamaan dengan Chrome. Solusi: memilih "Keep Waiting", menutup tab Chrome yang tidak dipakai, lalu menjalankan ulang.
- Saat `flutter run`, pilihan perangkat sempat tidak terpilih karena angka diketik di prompt PowerShell, bukan di prompt Flutter. Solusi: menjalankan langsung `flutter run -d chrome`.
- Folder `build/` belum muncul sebelum aplikasi dijalankan pertama kali. Folder ini terbentuk otomatis dan tidak diunggah ke repository.

## Catatan Penggunaan AI
AI (Claude) digunakan untuk membantu menjelaskan struktur project Flutter, membantu menyusun kerangka kode Prototype v0.0, dan membantu merapikan dokumentasi. Rinciannya ada di `AI_USAGE.md`.
