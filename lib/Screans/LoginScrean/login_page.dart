import 'package:flutter/material.dart';
import 'package:insta_clone/Custom%20Widgets/UiHelper.dart';
import 'package:insta_clone/Screans/BottomNavBar/bottomnav.dart';
import 'package:insta_clone/Screans/HomeScreans/Home_screan.dart';
import 'package:insta_clone/Screans/SignupScrean/signup_screan.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController EmailController = TextEditingController();
  TextEditingController PassworsControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImage(imgurl: "Instagram Logo.png"),
              SizedBox(height: 30),
              UiHelper.CustomTextField(
                  controller: EmailController, text: "Email", tohide: false),
              SizedBox(
                height: 15,
              ),
              UiHelper.CustomTextField(
                  controller: TextEditingController(),
                  text: "Password",
                  tohide: true),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 230),
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              UiHelper.CustomButton(callback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Bottomnav()));
              }, buttonName: "Log In"),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.CustomImage(imgurl: "Icon.png"),
                  SizedBox(width: 9),
                  Text(
                    "Login with Facebook",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),

              Text(
                "OR",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScrean()));
                      },
                      child: Text("Sign Up",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
