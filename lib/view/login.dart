import 'package:flutter/material.dart';
import 'package:mobileresponsi/utils/colors.dart';
import 'package:mobileresponsi/view/forgetpassword.dart';
import 'package:mobileresponsi/view/signup.dart';
import 'package:mobileresponsi/view/beranda.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(46.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo di bagian atas
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

            // Judul "Masuk"
            const Center(
              child: Text(
                'Masuk',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 40),

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

            // Field Password
            const Text(
              'Masukan Password',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 2),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
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
            const SizedBox(height: 2),

            // Link Daftar dan Lupa Password
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Belum Punya Akun?',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigasi ke halaman Lupa Password
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPasswordView(),
                          ),
                        );
                      },
                      child: Text(
                        'Lupa password?',
                        style: TextStyle(color: blueColor),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Navigasi ke halaman Lupa Password
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpView(),
                          ),
                        );
                      },
                      child: Text(
                        'Daftar',
                        style: TextStyle(color: blueColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),

            // Tombol Masuk
            Center(
              child: SizedBox(
                width: 218,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blueColor,
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 5,
                  ),
                  onPressed: () {
                    // Navigasi ke halaman Home
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                    );
                  },
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      fontFamily: "PoppinsBold",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
