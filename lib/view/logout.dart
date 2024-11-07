import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logout'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Keluar dari aplikasi
            SystemNavigator.pop();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black, // Ubah warna tombol menjadi merah
          ),
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
