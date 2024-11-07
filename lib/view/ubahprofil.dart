import 'package:flutter/material.dart';
import 'package:mobileresponsi/utils/colors.dart';

// Halaman Edit Profil
class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'Edit Profil',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        // Menambahkan SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Foto profil
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
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/image/foto.png', // Ganti dengan nama file gambar kamu
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Informasi Nama dan Universitas
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
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Field Email
              const Text(
                'Email',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Field Nama
              const Text(
                'Nama',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Field Nomor Telepon
              const Text(
                'Nomor Telepon',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Field Alamat
              const Text(
                'Alamat',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Tombol Ubah Profil
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi untuk tombol Ubah Profil
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 12),
                    backgroundColor: blueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Ubah Profil',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
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
        },
      ),
    );
  }
}
