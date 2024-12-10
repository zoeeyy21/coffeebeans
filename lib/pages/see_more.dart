import 'package:flutter/material.dart';

class SeeMore extends StatefulWidget {
  const SeeMore({super.key});

  @override
  State<SeeMore> createState() => _SeeMoreState();
}

class _SeeMoreState extends State<SeeMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 55),
                Padding(
                  padding: EdgeInsets.only(left: 60.0),
                  child: Text(
                    'Arabika Coffee',
                    style: TextStyle(fontFamily: 'poppins'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60.0),
                  child: Text(
                    'Robusta Coffee',
                    style: TextStyle(fontFamily: 'poppins'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 55),
                Padding(
                  padding: EdgeInsets.only(left: 60.0),
                  child: Text(
                    'Lampung Coffee',
                    style: TextStyle(fontFamily: 'poppins'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60.0),
                  child: Text(
                    'Liberika Coffee',
                    style: TextStyle(fontFamily: 'poppins'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 55),
                Padding(
                  padding: EdgeInsets.only(left: 60.0),
                  child: Text(
                    'Toraja Coffee',
                    style: TextStyle(fontFamily: 'poppins'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60.0),
                  child: Text(
                    'Bali Coffee',
                    style: TextStyle(fontFamily: 'poppins'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 55),
                Padding(
                  padding: EdgeInsets.only(left: 60.0),
                  child: Text(
                    'Jawa Coffee',
                    style: TextStyle(fontFamily: 'poppins'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60.0),
                  child: Text(
                    'Sumatera Coffee',
                    style: TextStyle(fontFamily: 'poppins'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
