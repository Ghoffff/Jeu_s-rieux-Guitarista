import 'package:flutter/material.dart';
import 'package:flutter_mentor_quiz_app_tut/Screens/Login/login_screen.dart';
import 'package:flutter_mentor_quiz_app_tut/Screens/Signup/components/background.dart';
import 'package:flutter_mentor_quiz_app_tut/components/rounded_input_field.dart';
import 'package:flutter_mentor_quiz_app_tut/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_mentor_quiz_app_tut/constants.dart';
import 'package:flutter_mentor_quiz_app_tut/Lessons/main.dart';


class Body extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  late String email;
  late String name;
  late String password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Name",
              onChanged: (value) {
                name=value;
              },
            ),
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
               onPressed: () async {
                 try {
                   final newUser = await _auth.createUserWithEmailAndPassword(
                       email: email,
                       password: password);
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder:(context) => MyApp(),
                     ),
                   );

                 } on FirebaseAuthException catch(e){
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message!)));
                 }catch (e) {
                   print(e);
                 }

               },

               child: Text('Sign Up'),
             style: ElevatedButton.styleFrom(
                 shape: StadiumBorder(),
                 primary: kPrimaryColor,
                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                 textStyle: TextStyle(
                     color: kPrimaryLightColor, fontSize: 14, fontWeight: FontWeight.w500)),

           ),
            SizedBox(height: size.height * 0.03),
            Row(
              children: <Widget>[
                const Text('Already have an account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 17),
                  ),
                  onPressed: () {
                    //Sign in screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context) => LoginScreen(),
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
