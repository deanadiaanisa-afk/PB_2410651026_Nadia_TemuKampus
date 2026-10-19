# TemuKampus

## Deskripsi
TemuKampus adalah aplikasi untuk membantu mahasiswa dan warga kampus melaporkan barang hilang atau barang yang ditemukan. Masalah yang diangkat: barang hilang sulit dilacak, dan orang yang menemukan barang bingung harus melapor ke mana.

## Identitas
Nama: Nadianur Anisa
NIM: 2410651026
Kelas: B

## Milestone Saat Ini
UI Blueprint (BAB 4)

## Versi
UI Blueprint - Design Milestone BAB 4 (dasar: Prototype v0.0 dari BAB 3)

## Ringkasan UI Blueprint
- Home
- Daftar Laporan
- Lapor Barang
- Profil Pengembang

Alur: Home menuju ketiga screen lain, dan semua screen bisa kembali ke Home. Setelah laporan dikirim, pengguna diarahkan ke Daftar Laporan.

## Style Guide Singkat
- Warna utama: Teal gelap #00695C
- Warna pendukung: #B2DFDB, #E0F2F1, #FFF8E1, latar #F5FBFA
- Tipografi: judul 24, subjudul 18, isi 16, keterangan 14
- Tombol utama: ElevatedButton tinggi 56
- Touch target: minimum sekitar 48x48 dp

## Accessibility Dasar
- Teks isi 16 dan mudah dibaca
- Kontras semua pasangan warna di atas 4,5:1
- Tombol utama besar dan label jelas
- Status laporan memakai teks, bukan hanya warna
- Alur maju dan kembali jelas

## Link Figma
https://www.figma.com/design/LNIxX7cajxvApno3RWgWx3/TemuKampus?node-id=3-6&t=XZT4ZdwDnMy4ySvR-1

## Artefak Desain
Wireframe, alur, style guide, dan dokumen UI Blueprint ada di folder `docs/ui-blueprint/`.

## Fitur Prototype v0.0 (BAB 3)
- Halaman home/profil dengan nama aplikasi, deskripsi, identitas, fitur awal, dan risiko privasi
- Tombol interaktif dengan SnackBar

## Cara Menjalankan
```
flutter pub get
flutter run -d chrome
```

## Risiko Privasi
Data lokasi dan informasi laporan perlu dijaga agar tidak disalahgunakan. Lokasi hanya ditulis secara umum dan aplikasi tidak meminta nomor HP atau alamat pribadi.

## Catatan Kendala
- BAB 4 tidak menambah kode Flutter. Kendala utama: memilih warna yang cukup kontras. Solusi: menghitung rasio kontras, lalu mengganti teal bawaan (3,67:1) dengan #00695C (6,61:1).

## Catatan Penggunaan AI
AI digunakan untuk brainstorming screen, review label tombol, dan membantu menyusun draf dokumen desain. Rincian ada di AI_USAGE.md.
