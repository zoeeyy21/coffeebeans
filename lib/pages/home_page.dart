import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coffee/pages/intro_page.dart';
import 'package:coffee/pages/see_more.dart';
import 'package:coffee/pages/profile_page.dart';
import 'package:coffee/providers/intro_page_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  TextEditingController searchController = TextEditingController();

  final List<Widget> _pages = [
    const IntroPage(),
    const SeeMore(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    final provider = context.read<IntroPageProvider>();

    setState(() {
      _currentIndex = index;
    });

    provider.start();

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
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search your coffee...",
                    hintStyle: const TextStyle(
                      fontFamily: 'poppins',
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[400],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (value) {
                    print("User sedang mencari: $value");
                  },
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
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
