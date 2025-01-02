import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Image> images = [
      Image.asset("assets/image_1.png"),
      Image.asset("assets/image_1.png"),
      Image.asset("assets/image_1.png"),
      Image.asset("assets/image_1.png"),
      Image.asset("assets/image_1.png"),
    ];

    List<String> highlightTitles = [
      'Dhruv',
      'Dhruv',
      'Dhruv',
      'Dhruv',
      'Dhruv',
    ];

    return Scaffold(
      body: SizedBox(
        height: 120, // Give a fixed height for the ListView to avoid overflow
        child: ListView.builder(
          physics: const ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) => Container(
            width: 100, // Give a fixed width to avoid overflow in the horizontal direction
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white10,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: images[index].image,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  highlightTitles[index],
                  style: const TextStyle(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
