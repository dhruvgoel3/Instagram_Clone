import 'dart:async';

import 'package:flutter/material.dart';
import 'package:insta_clone/Custom%20Widgets/UiHelper.dart';
import 'package:insta_clone/Screans/LoginScrean/login_page.dart';

class SplashScrean extends StatefulWidget {
  const SplashScrean({key});

  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          UiHelper.CustomImage(imgurl: "image 1.png"),
          SizedBox(height: 10),
          UiHelper.CustomImage(imgurl: "Instagram Logo.png"),
          
        ]),
      ),
    );
  }
}
