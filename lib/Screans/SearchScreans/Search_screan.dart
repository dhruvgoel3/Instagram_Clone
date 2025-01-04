import 'package:flutter/material.dart';

import '../../Custom Widgets/UiHelper.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContent = [
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},
    {
      "img":
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 36,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0XFF262626)),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(Icons.search_rounded,color: Colors.white,),
                  ),
                    hintText: "Search",
                    hintStyle: const TextStyle(
                        fontSize: 16,
                        color: Color(0XFF8E8E93),
                        fontWeight: FontWeight.normal),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                clipBehavior: Clip.antiAlias,
                height: 124,
                width: 124,
                decoration: const BoxDecoration(),
                child: Image.network(
                  arrContent[index]["img"].toString(),
                  fit: BoxFit.cover,
                ),
              );
            },
            itemCount: arrContent.length,
          ),
        )
      ],
    ));
  }
}
