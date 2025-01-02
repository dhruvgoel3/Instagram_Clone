import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Custom%20Widgets/UiHelper.dart';
import 'package:insta_clone/Screans/HeartScreans/Heart_screan.dart';
import 'package:insta_clone/Screans/HomeScreans/Home_screan.dart';
import 'package:insta_clone/Screans/PostScreans/Post_screan.dart';
import 'package:insta_clone/Screans/ProfileScreans/Profile_screan.dart';
import 'package:insta_clone/Screans/SearchScreans/Search_screan.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentIndex = 0;
  List<Widget>pages= [
    HomeScrean(),
    SearchScrean(),
    PostScrean(),
    HeartScrean(),
    ProfileScrean(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(color: Colors.white),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          backgroundColor: Colors.black,

          onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: "Post"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: "Notification"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

      ]),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}
