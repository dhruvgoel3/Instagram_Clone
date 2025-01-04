import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostScrean extends StatelessWidget {
  const PostScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 37.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Icon(
                    CupertinoIcons.add,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 27,
                ),
                Text(
                  "New post",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0,top: 5),
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
