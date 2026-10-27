class Laporan {
  final String nama;
  final String lokasi;
  final String tanggal;
  final String status; // 'Hilang' atau 'Ditemukan'
  final String? imagePath; // Path foto barang dari kamera

  const Laporan({
    required this.nama,
    required this.lokasi,
    required this.tanggal,
    required this.status,
    this.imagePath,
  });
}