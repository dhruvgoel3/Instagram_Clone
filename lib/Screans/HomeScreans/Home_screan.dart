import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Custom%20Widgets/UiHelper.dart';
import 'package:insta_clone/Screans/HeartScreans/Heart_screan.dart';
import 'package:insta_clone/Screans/HomeScreans/status_listview.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
            left: 4,
            top: 5,
          ),
          child: Image.asset("assets/Instagram Logo.png", height: 33),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HeartScrean()));
              }, icon: Icon(CupertinoIcons.heart,size: 25,color: Colors.white,))
          ),
          SizedBox(width: 6),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(Icons.send, color: Colors.white, size: 27),
          )
        ],
      ),
      body: Column(
        children: [
          StatusListview()
        ],
      ),
    );
  }
}
