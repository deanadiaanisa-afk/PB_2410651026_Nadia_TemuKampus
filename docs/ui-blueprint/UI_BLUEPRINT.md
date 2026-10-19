# UI Blueprint - TemuKampus

Milestone: UI Blueprint (BAB 4)
Nama: Nadianur Anisa | NIM: 2410651026 | Kelas: B
Tanggal: 13 Oktober 2026

## 1. Gambaran Aplikasi
- **Nama aplikasi:** TemuKampus
- **Tema:** Lost and found kampus
- **Target pengguna:** Mahasiswa dan warga kampus
- **Tujuan:** Membantu orang melaporkan barang yang hilang atau yang ditemukan, supaya barang lebih mudah kembali ke pemiliknya.
- **Masalah:** Barang hilang sulit dilacak, dan orang yang menemukan barang bingung harus melapor ke mana.
- **Risiko privasi:** Data lokasi dan informasi laporan perlu dijaga agar tidak disalahgunakan.

## 2. UI dan UX di Aplikasi Saya
- **UI** adalah yang terlihat: warna teal, tombol "Lapor Barang", kartu laporan, dan label status HILANG / DITEMUKAN.
- **UX** adalah yang dirasakan pengguna: orang yang kehilangan dompet bisa membuat laporan dari Home dalam dua langkah, tahu laporannya masuk (ada pesan berhasil), dan tidak diminta data pribadi.

Tombol yang berwarna bagus tapi bertuliskan "OK" hanya UI yang baik. Tombol "Kirim Laporan" yang jelas fungsinya dan diikuti pesan berhasil sudah termasuk UX yang baik.

## 3. Daftar Screen

| No | Screen | Fungsi | Komponen |
|----|--------|--------|----------|
| 1 | Home | Pintu masuk, ringkasan aplikasi, dan akses ke fitur utama | AppBar, judul sambutan, deskripsi, kartu privasi, 3 tombol |
| 2 | Daftar Laporan | Melihat semua laporan dan menyaringnya berdasarkan status | AppBar + tombol kembali, filter chip, kartu laporan, tombol Lapor Barang |
| 3 | Lapor Barang | Membuat laporan baru (nama barang, lokasi, status) | Pilihan status, 2 kolom isian, teks bantuan privasi, tombol Kirim dan Batal |
| 4 | Profil Pengembang | Menampilkan identitas pengembang dan info aplikasi | Inisial, nama, NIM, kelas, kartu info, kartu privasi, tombol kembali |

Alasan memilih empat screen: Home wajib sebagai titik awal. Daftar dan Lapor adalah dua fungsi inti aplikasi lost and found (melihat dan membuat laporan). Profil dipertahankan dari Prototype v0.0 karena sudah memuat identitas pengembang.

## 4. Wireframe
File ada di folder ini:
- `wireframe-home.png`
- `wireframe-daftar-laporan.png`
- `wireframe-lapor-barang.png`
- `wireframe-profil.png`
- `wireframe-alur.png` (alur antar screen)

Tiap wireframe diberi nomor yang dijelaskan di sisi kanan gambar.

## 5. Alur Pengguna

**Alur maju**
- Home → Daftar Laporan (tombol "Lihat Daftar Laporan")
- Home → Lapor Barang (tombol "Lapor Barang")
- Home → Profil Pengembang (tombol "Profil Pengembang")
- Lapor Barang → Kirim Laporan → Daftar Laporan (muncul pesan "Laporan berhasil dikirim")
- Daftar Laporan → Lapor Barang (tombol "+ Lapor Barang")

**Alur kembali**
- Daftar Laporan → Home
- Lapor Barang → Home (tombol Batal atau tombol kembali)
- Profil Pengembang → Home (tombol "Kembali ke Beranda")

## 6. Style Guide Singkat
Lengkapnya ada di `style-guide.md`.
- Warna utama: Teal gelap `#00695C`
- Warna pendukung: `#B2DFDB` (AppBar), `#E0F2F1` (kartu), `#FFF8E1` (kartu privasi), `#F5FBFA` (latar)
- Warna teks: `#1F2937`
- Tipografi: judul 24 bold, subjudul 18 semibold, isi 16, keterangan 14
- Tombol: utama terisi (ElevatedButton), sekunder garis tepi (OutlinedButton), tinggi 56
- Kartu: padding 16, sudut 12

## 7. Catatan Accessibility
Hasil pengecekan rancangan (angka kontras dihitung dengan rumus WCAG):

| No | Pertanyaan | Hasil | Alasan |
|----|-----------|-------|--------|
| 1 | Teks utama mudah dibaca? | Ya | Isi teks 16, judul 24 |
| 2 | Warna teks cukup kontras? | Ya | Teks `#1F2937` di latar `#F5FBFA` = 14,02:1. Teks putih di tombol `#00695C` = 6,61:1. Semua di atas 4,5:1 |
| 3 | Tombol utama mudah ditemukan? | Ya | Tombol "Lapor Barang" paling besar dan berwarna penuh di Home |
| 4 | Touch target sekitar 48x48 dp? | Ya | Tinggi tombol 56 dp, chip filter 42 dp lalu diberi jarak, tombol penuh lebar |
| 5 | Label tombol mudah dipahami? | Ya | Memakai kata kerja + objek: Lapor Barang, Kirim Laporan, Lihat Daftar Laporan |
| 6 | Alur maju dan kembali tidak membingungkan? | Ya | Semua screen bisa kembali ke Home, lihat `wireframe-alur.png` |
| 7 | Tampilan tidak terlalu padat? | Ya | Satu aksi utama per screen, jarak antar komponen 12-16 |
| 8 | Fungsi halaman awal langsung dipahami? | Ya | Ada judul sambutan, deskripsi satu kalimat, dan tombol aksi |
| 9 | Tetap terbaca di ukuran layar berbeda? | Ya | Susunan vertikal satu kolom dan lebar komponen mengikuti layar |

Catatan tambahan: status laporan ditulis dengan teks (HILANG / DITEMUKAN), bukan hanya warna merah dan hijau, supaya tetap terbaca oleh pengguna yang sulit membedakan warna.

## 8. Design Decision Log

**Keputusan 1: warna utama**
- Keputusan: memakai teal gelap `#00695C`, bukan teal bawaan `#009688`.
- Alasan: teks putih di atas `#009688` hanya 3,67:1 (di bawah 4,5:1), sedangkan di atas `#00695C` jadi 6,61:1.
- Alternatif: biru `#1565C0` dan oranye.
- Mengapa tidak dipilih: biru sudah dipakai TaskMate pada contoh dosen dan kurang membedakan identitas; oranye lebih sulit dipadukan dengan merah pada status HILANG.

**Keputusan 2: status memakai teks dan warna**
- Keputusan: label HILANG dan DITEMUKAN ditulis sebagai teks di dalam badge berwarna.
- Alasan: pengguna yang sulit membedakan merah dan hijau tetap bisa membaca statusnya.
- Alternatif: hanya titik berwarna merah/hijau.
- Mengapa tidak dipilih: informasi hanya bergantung pada warna.

**Keputusan 3: lokasi hanya lokasi umum**
- Keputusan: kolom lokasi diberi teks bantuan "Jangan isi alamat pribadi" dan aplikasi tidak memakai GPS atau nomor HP.
- Alasan: risiko privasi pada aplikasi ini adalah data lokasi yang disalahgunakan.
- Alternatif: memakai lokasi GPS otomatis.
- Mengapa tidak dipilih: data lokasi tepat pengguna lebih berisiko dan belum dibutuhkan untuk tujuan aplikasi.

**Keputusan 4: label tombol**
- Keputusan: label memakai kata kerja + objek (Kirim Laporan, Lapor Barang).
- Alasan: pengguna langsung tahu apa yang terjadi saat tombol ditekan.
- Alternatif: "OK", "Submit", "Next".
- Mengapa tidak dipilih: terlalu umum dan tidak menjelaskan aksinya.

## 9. Refleksi Keputusan Desain

**1. Apa perbedaan UI dan UX di aplikasi Anda?**
UI adalah tampilan yang terlihat, seperti warna teal, tombol, kartu laporan, dan badge status. UX adalah pengalaman memakainya: pengguna yang kehilangan barang bisa melapor dari Home dalam dua langkah, tahu laporannya masuk, dan tidak diminta data pribadi.

**2. Screen apa saja yang Anda rancang?**
Home, Daftar Laporan, Lapor Barang, dan Profil Pengembang.

**3. Mengapa screen tersebut penting?**
Daftar Laporan dan Lapor Barang adalah dua fungsi inti aplikasi lost and found: melihat dan membuat laporan. Home menjadi titik awal dan penghubung semua screen. Profil memuat identitas pengembang dan catatan privasi.

**4. Bagaimana memastikan teks, warna, tombol, dan alur mudah digunakan?**
Saya menghitung kontras warna dengan rumus WCAG dan memastikan semuanya di atas 4,5:1. Ukuran isi teks 16, tinggi tombol 56 (lebih dari 48 dp), label tombol memakai kata kerja + objek, dan setiap screen punya jalan kembali ke Home. Saya juga memeriksa rancangan dengan checklist accessibility.

**5. Apakah menggunakan AI? Bagian mana yang diubah dari sarannya?**
Ya, untuk brainstorming screen, review label tombol, dan membantu menyusun dokumen. Rincian ada di `AI_USAGE.md`. Dari sarannya, saya memilih empat screen yang sesuai ide aplikasi, memakai warna teal gelap setelah cek kontras, dan menambahkan catatan privasi di screen Home, Lapor Barang, dan Profil.

## 10. Keamanan
Dokumen dan wireframe ini tidak memuat password, token, API key, credential, atau data pribadi selain nama dan NIM yang diminta tugas.
