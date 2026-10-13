# TemuKampus

## Deskripsi
TemuKampus adalah prototype aplikasi untuk membantu mahasiswa dan warga kampus melaporkan barang hilang atau barang yang ditemukan.

## Identitas
Nama: Nadianur Anisa
NIM: 2410651026
Kelas: B

## Versi
v0.0 - Prototype

## Fitur Prototype v0.0
- Menampilkan nama aplikasi
- Menampilkan deskripsi aplikasi
- Menampilkan identitas pengembang dan target pengguna
- Menampilkan fitur awal dan risiko privasi
- Tombol interaktif dengan SnackBar

## Cara Menjalankan
flutter pub get
flutter run -d chrome

## Bukti Running
Screenshot aplikasi berjalan di Chrome dilampirkan pada LMS.

## Catatan Kendala
- VS Code sempat tidak merespons saat Flutter dan Chrome berjalan bersamaan. Solusi: menunggu, lalu menutup tab Chrome yang tidak dipakai.
- Pilihan perangkat saat flutter run salah karena angka diketik di PowerShell. Solusi: memakai flutter run -d chrome.
- File test bawaan memakai nama package lama sehingga error. Solusi: mengganti isi test, lalu flutter test lulus.

## Catatan Penggunaan AI
AI digunakan untuk menjelaskan struktur project dan membantu menyusun kerangka kode serta dokumen. Rincian ada di AI_USAGE.md.

# TemuKampus

Aplikasi berbasis Flutter untuk melaporkan dan menemukan barang hilang atau ditemukan di lingkungan kampus.

## Milestone Saat Ini: UI Blueprint (BAB 4)
Pada tahap ini, aplikasi telah dirancang melalui dokumen **UI Blueprint** yang mencakup:
- **3 Screen Utama:** Beranda (Home), Form Lapor Barang, dan Detail/Profil.
- **User Flow:** Alur navigasi maju dan kembali yang terstruktur.
- **Style Guide:** Standar penggunaan warna utama (Biru `#1976D2`), tipografi yang mudah dibaca, serta tombol interaktif.
- **Accessibility:** Memastikan keterbacaan teks, kontras warna, dan ukuran sentuh (*touch target*) yang ramah pengguna.

## Artefak Desain
Dokumentasi lengkap perancangan UI/UX tersimpan di dalam folder `docs/ui-blueprint/UI_BLUEPRINT.md`.