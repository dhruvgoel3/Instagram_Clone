import 'package:flutter/material.dart';

class Gridviewpage extends StatelessWidget {
  const Gridviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrContent = [

      {"img": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"},
      {"img": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"},
      {"img": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"},
      {"img": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"},
      {"img": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"}
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('GridView Page')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemBuilder: (context, index) {
            final imageUrl = arrContent[index]["img"];
            return Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: imageUrl != null
                  ? Image.network(
                imageUrl,
                fit: BoxFit.cover,

              )
                  : const Center(child: Icon(Icons.image_not_supported, color: Colors.grey)),
            );
          },
          itemCount: arrContent.length,
        ),
      ),
    );
  }
}
