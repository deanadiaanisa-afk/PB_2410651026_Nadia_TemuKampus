# Catatan Penggunaan AI (AI_USAGE.md)

- **Tool AI yang Digunakan:** Google Gemini
- **Peran AI:** Explainer, Debugging Assistant, dan Code Reviewer
- **Tujuan Penggunaan:** 
  1. Membantu menyelesaikan error kompilasi disk space (`errno = 112`) dan pengalihan variabel lingkungan TEMP Windows.
  2. Menyusun validasi form `TextFormField` dan integrasi kamera instan (`image_picker`).
  3. Pemisahan model data `Laporan` ke `lib/models/laporan.dart` untuk mengatasi `ambiguous import`.
- **Bagian yang Dibantu:** `lapor_barang_page.dart`, `daftar_laporan_page.dart`, dan pemindahan direktori Temp.
- **Modifikasi/Verifikasi Mahasiswa:** Menyesuaikan field form agar sesuai konteks aplikasi TemuKampus, menguji validasi input di Chrome, serta menguji pengiriman data real-time dari form ke halaman daftar laporan.
- **Status Akhir:** Selesai & Berhasil Dipublikasikan.