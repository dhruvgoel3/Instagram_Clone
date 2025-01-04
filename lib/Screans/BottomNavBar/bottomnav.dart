import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Custom%20Widgets/UiHelper.dart';
import 'package:insta_clone/Screans/HeartScreans/Heart_screan.dart';
import 'package:insta_clone/Screans/HomeScreans/Home_screan.dart';
import 'package:insta_clone/Screans/PostScreans/Post_screan.dart';
import 'package:insta_clone/Screans/ProfileScreans/Profile_screan.dart';
import 'package:insta_clone/Screans/ReelsScrean/reels_page.dart';
import 'package:insta_clone/Screans/SearchScreans/Search_screan.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScrean(),
    SearchScreen(),
    PostScrean(),
    ReelsPage(),
    ProfileScrean(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            iconSize: 25,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: TextStyle(color: Colors.white),
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            backgroundColor: Colors.black,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
              _pageController.jumpToPage(index);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_box_outlined), label: "Post"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.slow_motion_video), label: "Reels"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}
