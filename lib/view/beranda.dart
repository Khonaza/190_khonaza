import 'package:flutter/material.dart';
import 'profil.dart';
import 'logout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/image/acc.png', width: 30, height: 30),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: Image.asset('assets/image/notif.jpeg',
                      width: 20, height: 20),
                  onPressed: () {
                    // Aksi untuk ikon notifikasi
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/image/sett.jpeg',
                      width: 20, height: 20),
                  onPressed: () {
                    // Aksi untuk ikon pengaturan
                  },
                ),
              ],
            ),
          ],
        ),
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Guest',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Text(
                  'Widget Grid View',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 210,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 3 / 2,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/image/Image.png', // Ganti sesuai nama gambar Anda
                          width: 115,
                          height: 135,
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Artist',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: const Text('Song'),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Text(
                  'Widget List View',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward),
              ],
            ),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image/Image.png', // Ganti sesuai nama gambar Anda
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Headline',
                              style: TextStyle(fontSize: 25),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Description duis aute irure dolor in reprehenderit in volup...',
                              style: TextStyle(
                                  color: Color.fromARGB(184, 0, 0, 0)),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/image/plus.png', // Ganti dengan gambar yang diinginkan
                                      width: 16,
                                      height: 16,
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      'Today · 23 min',
                                      style: TextStyle(
                                          color: Color.fromARGB(184, 0, 0, 0)),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  'assets/image/play.png', // Ganti dengan gambar yang diinginkan
                                  width: 35,
                                  height: 35,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
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
          if (index == 2) {
            // Jika tombol logout (index ke-2) yang diklik
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LogoutPage()),
            );
          } else if (index == 1) {
            // Jika tombol akun yang diklik
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          }
        },
      ),
    );
  }
}
