import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Screans/ProfileScreans/listview_page.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("assets/image_1.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 78,
                      top: 78,
                    ),
                    child: Icon(
                      Icons.add_circle,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Text("20",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Text("posts",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16))
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Text("647",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  Text("followers",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16))
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Text("738",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  Text("following",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16))
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dhruv Goel",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("~ 18"),
                Text("~ A man on a mission !"),
                Text("~ Eat | sleep | code >> Repeat"),
              ],
            ),
          ),
          SizedBox(height: 13),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 32,
                  width: 160,
                  alignment: Alignment.center,
                  child: Text("Edit profile",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white10,
                  ),
                ),
              ),
              SizedBox(width: 6),
              Container(
                height: 32,
                width: 160,
                alignment: Alignment.center,
                child: Text("Share profile",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white10,
                ),
              ),
              SizedBox(width: 6),
              Container(
                height: 32,
                width: 35,
                child: Icon(
                  Icons.person_add_alt_sharp,
                  color: Colors.white,
                  size: 18,
                ),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(8)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.grid_on_sharp),
              Icon(Icons.slow_motion_video_outlined),
              Icon(Icons.person_pin_outlined),
            ],
          ),
          Divider(thickness: 0.5,color: Colors.white12,),
          Icon(CupertinoIcons.camera_circle_fill,size: 40,),
          Text("No Posts Yet")
          
        ],
      ),
    );
  }
}
