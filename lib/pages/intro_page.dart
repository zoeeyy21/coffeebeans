import 'package:coffee/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          // logo

          Padding(
            padding: const EdgeInsets.only(
              left: 80,
              right: 80,
              bottom: 40,
              top: 120,
            ),
            child: Image.asset('lib/images/coffeebeans.jpg'),
          ),

          //logo

          //text

          const Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              "Enjoy the Best Coffee, Anytime, Anywhere",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),

          const Text(
            "Originally Coffee Beans From Indonesia.",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontFamily: 'poppins',
              color: Colors.grey,
            ),
          ),

          const Spacer(),

          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown,
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

          const Spacer(),
        ]));
  }
}
