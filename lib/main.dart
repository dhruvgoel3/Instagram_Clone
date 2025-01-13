import 'package:flutter/material.dart';
import 'package:insta_clone/Screans/HomeScreans/Home_screan.dart';
import 'package:insta_clone/Screans/ProfileScreans/Profile_screan.dart';
import 'package:insta_clone/Screans/SearchScreans/Search_screan.dart';
import 'package:insta_clone/Screans/SignupScrean/signup_screan.dart';
import 'package:insta_clone/Screans/SplashScrean/splash_screan.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:  SplashScrean(),
    );
  }
}
