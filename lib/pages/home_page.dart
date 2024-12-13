import 'package:flutter/material.dart';
import 'package:coffee/pages/intro_page.dart';
import 'package:coffee/pages/see_more.dart';
import 'package:coffee/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const IntroPage(),
    const SeeMore(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const IntroPage()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SeeMore()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProfilePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB09C8D),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    const Text(
                      "Hey, Mate!",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontFamily: 'poppins',
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      ),
                      child: Image.asset(
                        'assets/button/Profile Circle.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  "Experience the Authentic \nTaste of Every Bean",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Divider(),
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      "Best choice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'poppins',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFB09C8D),
        currentIndex: _currentIndex, // Indeks tab aktif
        onTap: _onItemTapped, // Fungsi untuk navigasi
        selectedItemColor: Colors.white, // Warna item yang dipilih
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255), 
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/button/home.png', 
              height: 24,
              width: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/button/plus.png', 
              height: 24,
              width: 24,
            ),
            label: 'More',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/button/user-circle.png', 
              height: 24,
              width: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
