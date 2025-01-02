import 'package:flutter/material.dart';
import 'package:insta_clone/Custom%20Widgets/UiHelper.dart';
import 'package:insta_clone/Screans/LoginScrean/login_page.dart';

class SignupScrean extends StatelessWidget {
  SignupScrean({super.key});

  TextEditingController EmailController = TextEditingController();
  TextEditingController PassworsControler = TextEditingController();
  TextEditingController UsernameController = TextEditingController();


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
              SizedBox(
                height: 15,
              ),
              UiHelper.CustomTextField(
                  controller: UsernameController, text: "Username", tohide: false),
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
              UiHelper.CustomButton(callback: () {}, buttonName: "Sign Up"),
              SizedBox(height: 40),

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
                    "Already have an account?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text("Log In",
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
