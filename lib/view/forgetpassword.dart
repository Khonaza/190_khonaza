import 'package:flutter/material.dart';
import 'package:mobileresponsi/utils/colors.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background putih
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(46.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/image/logo.png',
                      width: 252,
                      height: 96,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Judul "Lupa Password"
              const Center(
                child: Text(
                  'Lupa Password',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Pesan
              const Text(
                'Pesan\nMasukkan email Anda dan tunggu kode etik akan dikirimkan.',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Field Email
              const Text(
                'Masukan Email',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 2),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                ),
              ),
              const SizedBox(height: 41),

              // Tombol Kirim
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blueColor,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    // Aksi untuk tombol Kirim
                  },
                  child: const Text(
                    'Kirim',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
