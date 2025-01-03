import 'package:flutter/material.dart';
import 'package:insta_clone/Screans/SearchScreans/gridviewpage.dart';

class SearchScrean extends StatelessWidget {
  const SearchScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 16),
            child: Container(
              height: 38,
              width: 350,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text("Search",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 15.5)),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white10,
              ),
            ),
          ),
          Gridviewpage(),
        ],

      ),
    );
  }
}
