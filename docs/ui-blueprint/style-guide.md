# Style Guide - TemuKampus

## Warna

| Nama | Hex | Dipakai untuk | Kontras |
|------|-----|---------------|---------|
| Primary | `#00695C` | Tombol utama, filter aktif | Teks putih = 6,61:1 |
| Primary container | `#B2DFDB` | AppBar | Teks `#1F2937` = 10,12:1 |
| Background | `#F5FBFA` | Latar halaman | Teks `#1F2937` = 14,02:1 |
| Kartu info | `#E0F2F1` | Kartu identitas dan info | Teks `#1F2937` = 12,68:1 |
| Kartu privasi | `#FFF8E1` | Catatan privasi | Teks `#1F2937` = 13,82:1 |
| Teks | `#1F2937` | Semua teks isi | - |
| Status Hilang | `#C62828` | Badge HILANG | Di atas putih = 5,62:1 |
| Status Ditemukan | `#2E7D32` | Badge DITEMUKAN | Di atas putih = 5,13:1 |

Syarat WCAG 2.1: minimal 4,5:1 untuk teks normal dan 3:1 untuk teks besar. Semua pasangan warna di atas memenuhi.

Catatan: teal bawaan Flutter `#009688` dengan teks putih hanya 3,67:1, jadi tidak dipakai sebagai warna tombol.

## Tipografi (nilai fontSize Flutter)

| Elemen | Ukuran | Gaya |
|--------|--------|------|
| Judul halaman | 24 | Bold |
| Subjudul / judul kartu | 18 | Semibold |
| Isi teks | 16 | Regular |
| Keterangan / teks bantuan | 14 | Regular |

## Tombol
- **Utama:** ElevatedButton, isi teal `#00695C`, teks putih, tinggi 56, lebar penuh. Satu per screen.
- **Sekunder:** OutlinedButton, garis tepi teal, teks teal, tinggi 56.
- **Label:** kata kerja + objek (Lapor Barang, Kirim Laporan, Lihat Daftar Laporan).
- **Touch target:** minimal 48x48 dp.

## Komponen
- **Kartu:** padding 16, sudut melengkung 12.
- **Badge status:** teks kapital (HILANG / DITEMUKAN), garis tepi dan teks berwarna sesuai status.
- **Filter chip:** Semua, Hilang, Ditemukan. Pilihan aktif terisi teal.
- **Kolom isian:** ada label di atas kolom, bukan hanya placeholder. Pesan "Wajib diisi" muncul jika kosong.
- **Jarak:** 12 sampai 16 antar komponen, 16 dari tepi layar.
- **Pesan:** SnackBar untuk konfirmasi, misalnya "Laporan berhasil dikirim".

## Rencana ke Flutter (BAB 5)
- Warna: `ColorScheme.fromSeed(seedColor: Color(0xFF00695C))`
- Tipografi dan tombol diatur lewat `ThemeData` supaya konsisten di semua screen.
- Screen jadi file: `home_screen.dart`, `daftar_laporan_screen.dart`, `lapor_barang_screen.dart`, `profil_screen.dart`.
- Alur maju memakai `Navigator.push()`, alur kembali memakai `Navigator.pop()`.
