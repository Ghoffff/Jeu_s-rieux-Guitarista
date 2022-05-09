import 'package:flutter/material.dart';
import 'package:flutter_mentor_quiz_app_tut/Screens/Login/components/background.dart';
import 'package:flutter_mentor_quiz_app_tut/Screens/Signup/signup_screen.dart';
import 'package:flutter_mentor_quiz_app_tut/components/already_have_an_account_acheck.dart';
import 'package:flutter_mentor_quiz_app_tut/components/rounded_input_field.dart';
import 'package:flutter_mentor_quiz_app_tut/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_mentor_quiz_app_tut/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_mentor_quiz_app_tut/Lessons/main.dart';





class Body extends StatelessWidget {
   Body({
    Key? key,
  }) : super(key: key);

  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  late String errorMessage='';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email=value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password=value;
              },
            ),





            ElevatedButton(
              child: Text(
                'LOG IN',
                style: TextStyle(color:kPrimaryColor),
              ),
              onPressed: () async {
                try {
                  final user = await _auth.signInWithEmailAndPassword(email: email,
                      password: password);
                  if (user != null){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context) => MyApp(),
                      ),
                    );
                  }

                } on FirebaseAuthException catch(e){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message!)));
                }

              },
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: kPrimaryLightColor,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(
                      color: kPrimaryColor, fontSize: 14, fontWeight: FontWeight.w500)),
            ),





            SizedBox(height: size.height * 0.03),

            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 17),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context) => SignUpScreen(),
                      ),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}



