import 'package:flutter/material.dart';

class StatusListview extends StatelessWidget {
  const StatusListview({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size;

    List<String> StatusTittles = [
      'Raghav'
          'Saksham'
          'Likesh'
          'Aryan'
          'Bhargav'
          'Devanshu'
    ];
    List<Image> Images = [
      Image.asset("assets/chatbot.avif"),
      Image.asset("assets/chatbot.avif"),
      Image.asset("assets/chatbot.avif"),
      Image.asset("assets/chatbot.avif"),
      Image.asset("assets/chatbot.avif"),
      Image.asset("assets/chatbot.avif"),
    ];
    return ListView.builder(
      itemCount: Images.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) => Column(
        children: [

          Text(
            StatusTittles[index],
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      )
    );
  }
}
