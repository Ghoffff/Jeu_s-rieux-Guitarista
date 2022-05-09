import 'package:flutter/material.dart';
import 'package:flutter_mentor_quiz_app_tut/Screens/Login/login_screen.dart';
import 'package:flutter_mentor_quiz_app_tut/Screens/Signup/signup_screen.dart';
import 'package:flutter_mentor_quiz_app_tut/Screens/Welcome/components/background.dart';
import 'package:flutter_mentor_quiz_app_tut/components/rounded_button.dart';
import 'package:flutter_mentor_quiz_app_tut/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO GUITARISTA",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            Container(
                width:double.infinity ,
                child: ElevatedButton(
                  child: Text(
                    'LOG IN',
                    style: TextStyle(color:kPrimaryColor),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context) => LoginScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: kPrimaryLightColor,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      textStyle: TextStyle(
                          color: kPrimaryColor, fontSize: 14, fontWeight: FontWeight.w500)),
                )

            ),
            SizedBox(height: 15),

            Container(
            width:double.infinity ,
            child: ElevatedButton(
              child: Text(
                'SIGN UP',
                style: TextStyle(color:kPrimaryLightColor),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context) => SignUpScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: kPrimaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: TextStyle(
                      color: kPrimaryLightColor, fontSize: 14, fontWeight: FontWeight.w500)),
            )

        ),
          ],
        ),
      ),
    );
  }
}
