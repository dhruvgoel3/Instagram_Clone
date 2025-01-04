import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
  }) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
          color: Color(0XFF121212),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.white24,
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.white,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static CustomImage({required String imgurl}) {
    return Image.asset("assets/$imgurl");
  }


 static CustomButton({required VoidCallback callback, required String buttonName}) {
    return SizedBox(
        height: 45,
        width: 343,
        child: ElevatedButton(
            onPressed: () {
              callback();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            child: Center(
              child: Text(
                buttonName,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            )));



  }

}
