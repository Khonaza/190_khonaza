import 'package:flutter/material.dart';
import 'ubahprofil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),

          // Foto profil dengan kotak untuk informasi
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // Gambar profil
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/image/foto.png', // Ganti dengan nama file gambar kamu
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Informasi Nama dan Universitas tanpa kotak putih
                  const Text(
                    'Nama Lengkap',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Asal Universitas',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 30),

          // Menu pengaturan
          Expanded(
            child: ListView(
              children: [
                _buildMenuItem(context, 'Kelola Akun'),
                _buildMenuItem(context, 'Notifikasi'),
                _buildMenuItem(context, 'Privacy Policy'),
                _buildMenuItem(context, 'Terms of Service'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/image/home.png', width: 70, height: 70),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/image/star.png', width: 70, height: 70),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/image/star.png', width: 70, height: 70),
            label: 'Logout',
          ),
        ],
        onTap: (index) {
          // Aksi untuk navigasi pada bottom navigation bar
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfilePage()),
          );
        },
      ),
    );
  }

  // Fungsi untuk membuat item menu
  Widget _buildMenuItem(BuildContext context, String title) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () {
        if (title == 'Kelola Akun') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EditProfilePage()),
          );
        } else {
          // Aksi untuk item menu lainnya jika diperlukan
        }
      },
    );
  }
}
