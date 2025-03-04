import 'package:coffee/pages/home_page.dart';
import 'package:coffee/providers/intro_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 80, right: 80, bottom: 40, top: 120),
            child: Image.asset('lib/images/coffeebeans.jpg'),
          ),
          const Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              "Enjoy the Best Coffee, Anytime, Anywhere",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          const Text(
            "Originally Coffee Beans From Indonesia.",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontFamily: 'poppins',
                color: Colors.grey),
          ),
          const Spacer(),
          Consumer<IntroPageProvider>(
            builder: (context, provider, child) => GestureDetector(
              onTap: () {
                provider.start();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: provider.isStarted ? Colors.brown[300] : Colors.brown,
                  borderRadius: BorderRadius.circular(17),
                ),
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      fontFamily: 'poppins',
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
