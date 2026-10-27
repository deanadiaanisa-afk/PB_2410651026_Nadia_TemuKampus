import 'package:flutter/material.dart';
import 'daftar_laporan_page.dart';
import 'lapor_barang_page.dart';
import 'login_page.dart'; // Pastikan mengarah ke halaman login

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TemuKampus - Beranda'),
        elevation: 0,
        actions: [
          // Tombol Keluar / Logout di pojok kanan atas AppBar
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Keluar ke Login',
            onPressed: () {
              // Kembali ke halaman login dan hapus riwayat navigasi
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Banner Sambutan
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue.shade100),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Selamat Datang, Nadianur! 👋',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Kehilangan atau menemukan barang di sekitar kampus? Gunakan menu di bawah untuk melaporkan atau mengecek daftar temuan.',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Judul Bagian Menu
                const Text(
                  'Menu Utama',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),

                // Grid Menu Utama (2 Kolom: Lapor Barang & Daftar Laporan)
                GridView.count(
                  crossAxisCount: MediaQuery.of(context).size.width > 600 ? 2 : 1,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.4,
                  children: [
                    // Kartu 1: Lapor Barang
                    _buildMenuCard(
                      context,
                      icon: Icons.add_box_rounded,
                      color: Colors.orange,
                      title: 'Lapor Barang',
                      subtitle: 'Buat laporan baru barang hilang atau ditemukan dengan foto & validasi.',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LaporBarangPage()),
                        );
                      },
                    ),

                    // Kartu 2: Daftar Laporan
                    _buildMenuCard(
                      context,
                      icon: Icons.format_list_bulleted_rounded,
                      color: Colors.blue,
                      title: 'Daftar Laporan',
                      subtitle: 'Lihat rekapitulasi seluruh barang hilang dan ditemukan di kampus.',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DaftarLaporanPage()),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 32),

                // Tombol Keluar / Kembali ke Login di bagian bawah
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                      side: const BorderSide(color: Colors.red),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                        (route) => false,
                      );
                    },
                    icon: const Icon(Icons.logout),
                    label: const Text(
                      'Keluar (Kembali ke Login)',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget pembantu untuk merapikan desain kartu menu
  Widget _buildMenuCard(
    BuildContext context, {
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 36, color: color),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}