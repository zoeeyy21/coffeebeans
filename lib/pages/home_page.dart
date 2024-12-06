import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Hey, Mate!",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 19,
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Let's order fresh coffee for you",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
