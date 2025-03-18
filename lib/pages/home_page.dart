import 'package:coffee/pages/card_beans.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
  final PageController _pageController = PageController();
  TextEditingController searchController = TextEditingController();

  void _onItemTapped(int index) {
    final provider = context.read<IntroPageProvider>();

    setState(() {
      _currentIndex = index;
    });

    provider.start();

    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _buildHomePageContent(),
            const VideoPlayerScreen(),
            const ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/button/home.png', height: 30, width: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/button/plus.png', height: 30, width: 30),
            label: 'More',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/button/user-circle.png',
                height: 30, width: 30),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildHomePageContent() {
  return Stack(
    children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: const BoxDecoration(
          color: Color(0xFF8B5A2B), 
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
      ),

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Hey, Mate!",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Experience the Authentic \nTaste of Every Bean",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search your coffee...",
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black87,
                ),
                prefixIcon: const Icon(Icons.search, color: Colors.black54),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                print("User sedang mencari: $value");
              },
            ),
          ),
          const SizedBox(height: 20),

          // Grid kosong buat katalog kopi
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const BeansCard();
                },
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

}