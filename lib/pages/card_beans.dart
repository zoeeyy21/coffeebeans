import 'package:flutter/material.dart';

class BeansCard extends StatefulWidget {
  const BeansCard({super.key});

  @override
  State<BeansCard> createState() => _BeansCardState();
}

class _BeansCardState extends State<BeansCard> {
  final List<String> images = [
    'lib/images/beans.png',
    'lib/images/beans.png',
    'lib/images/beans.png',
    'lib/images/beans.png',
    'lib/images/beans.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, 
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Container(
                  color: const Color(0xFF8B5A2B).withOpacity(0.3), 
                ),
                const Center(
                  child: Text(
                    "Coming Soon",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
