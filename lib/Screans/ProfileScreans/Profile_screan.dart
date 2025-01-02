import 'package:flutter/material.dart';
import 'package:insta_clone/Screans/ProfileScreans/body_page.dart';

class ProfileScrean extends StatelessWidget {
  const ProfileScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "dhruvvv.goel_",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 23),
        ),
        actions: [
          Icon(
            Icons.add_box_outlined,
            color: Colors.white,
            size: 27,
          ),
          SizedBox(
            width: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 32,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: BodyPage(),
    );
    
  }
}
