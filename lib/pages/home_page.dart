import 'package:coffee/pages/intro_page.dart';
import 'package:coffee/pages/profile_page.dart';
import 'package:coffee/pages/see_more.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          // Tambahkan ini
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
                    const Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      ),
                      child: Image.asset(
                        'assets/button/Profile Circle.png',
                      ),
                    ),
                    const SizedBox(width: 15), // Memberikan jarak di kanan
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
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      "Best choice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'poppins',
                        fontSize: 20,
                      ),
                    ),
                  ),

                  const SizedBox(width: 130,),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SeeMore(),
                        )),
                    child: const Text(
                      'see more',
                      style: TextStyle(
                          fontFamily: 'poppins', fontStyle: FontStyle.italic),
                    ),
                  ),
                  const SizedBox(width: 15,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
