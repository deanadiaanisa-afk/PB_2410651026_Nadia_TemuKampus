# AI_USAGE

## Pertemuan 5 - Navigation v0.1
Tool AI yang Digunakan: Claude
Peran AI: L2 Scaffolder dan Explainer
Tanggal: 20 Oktober 2026

Tujuan Penggunaan: Membantu menyusun kerangka kode Navigation v0.1 dari UI Blueprint saya, dan menjelaskan cara kerja Navigator, onPressed, TextField, serta StatefulWidget.

Bagian yang Dibantu: Struktur lib/screens/, HomePage, DaftarLaporanPage, LaporBarangPage, ProfilPage, tema warna, widget_test.dart, dan draf README, CHANGELOG.

Saran AI yang Digunakan:
- Memisahkan screen ke folder lib/screens/
- Memakai Navigator.push dengan MaterialPageRoute dan Navigator.pop
- Memakai TextEditingController dan dispose() pada screen input
- Memakai SnackBar sebagai respons setelah laporan dikirim

Modifikasi atau Verifikasi Mahasiswa:
- Menentukan keempat screen dan alurnya dari UI Blueprint buatan saya
- Menjalankan aplikasi di Chrome dengan flutter run -d chrome
- Menguji setiap tombol: Home ke tiga screen lain dan kembali, tombol Batal, tombol Kembali ke Beranda, filter, dan input kosong
- Menjalankan flutter test sampai lulus
- Memastikan fitur dari Prototype v0.0 tetap berjalan (nama aplikasi dan deskripsi di Home, fitur awal di Lapor Barang, identitas dan privasi di Profil)
- Memeriksa tidak ada credential atau data sensitif di repository

Bagian yang Saya Pahami:
- Navigator.push membuka screen baru, Navigator.pop kembali ke screen sebelumnya
- onPressed berisi aksi saat tombol ditekan
- TextField dibaca nilainya lewat TextEditingController
- LaporBarangPage memakai StatefulWidget karena ada controller dan pilihan status yang berubah, dan controller dilepas di dispose()

Status Akhir: Selesai

## Pertemuan 4 - UI Blueprint
Tool: Claude
Peran: Brainstorming dan Reviewer, juga membantu draf dokumen dan gambar wireframe
Saran yang dipakai: empat screen, label tombol kata kerja + objek, status memakai teks dan warna
Keputusan saya: ide aplikasi, target pengguna, risiko privasi, warna #00695C setelah cek kontras, dan catatan privasi di tiga screen
Status: Selesai

## Pertemuan 3 - Prototype v0.0
Tool: Claude
Peran: L1 Explainer dan L2 Scaffolder
Yang dibantu AI: penjelasan struktur project dan error terminal, kerangka kode Prototype v0.0, draf dokumen, perbaikan file test
Yang saya kerjakan sendiri: ide aplikasi dan isi tampilan, menjalankan aplikasi, flutter test, commit dan push, pemeriksaan credential

## Riwayat Pertemuan 2
- Menjelaskan error disk penuh saat flutter pub get: saya cek sisa ruang dengan Get-PSDrive C, lalu membersihkan file, dan mengulang perintah sampai berhasil.
- Langkah membuat repository dan push ke GitHub: saya jalankan sendiri di terminal dan cek hasilnya di halaman GitHub.
- Merangkum isi slide Pertemuan 2: saya cocokkan dengan slide dosen.

## Pernyataan
Saya memahami kode yang dikumpulkan dan dapat menjelaskannya. Tidak ada API key, token, password, atau data pribadi yang dimasukkan ke AI.
