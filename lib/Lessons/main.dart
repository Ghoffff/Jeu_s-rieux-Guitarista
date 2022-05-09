import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mentor_quiz_app_tut/Lessons/courses.dart';
import 'package:flutter_mentor_quiz_app_tut/Lessons/quizs.dart';





void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: 'Guitarista'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    late User signedInUser;


    void getCurrentUser() {
      try {
        final user = _auth.currentUser;
        if (user != null) {
          signedInUser = user;
          print(signedInUser.email);
        }
      } catch (e) {
        print(e);
      }
    }

    @override
    void initState(){
      //super.initState();
      getCurrentUser();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(this.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
          fontSize: 20,),),
        backgroundColor: Color(0xFF6F35A5),
      ),
      backgroundColor: Colors.white,
      body: Center(

        child:Column(
          children: [
    Expanded(

    child: SingleChildScrollView(


    child: Column(
    children: <Widget>[
    Container(
    width: double.infinity,
    height:800,
    padding: EdgeInsets.all(10.0),
    color: Colors.transparent,

    child: Column(
    children:[

             Container(
              width: double.infinity,
              height: 120.0,
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              decoration: BoxDecoration(
                //color: Color(0xFFE1BEE7),
                //borderRadius: BorderRadius.circular(100.0),
              ),
               child: Center(
                 child: SizedBox(
                   width: 300,
                   height:300,


                   child:ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Courses()));
                  },
                  style:ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                    minimumSize: Size(double.infinity, 200.0),
                    primary: Color(0xFFE1BEE7),

                ),
                  child: Text(
                      "Courses",
                    style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  ),
                ),
                ),
              ),
             ),
            Image.asset("assets/image/course.png"),


            Container(
              height: 120.0,
              margin: EdgeInsets.only(top:00.0, bottom: 10.0, left: 20.0, right: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),

              child: Center(
                // ignore: deprecated_member_use
                child: SizedBox(
                  width: 300,
                  height:300,

                  child:ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Quizs()));

                  },
                  style:ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                    minimumSize: Size(double.infinity, 200.0),
                    primary: Color(0xFF6F35A5)

                  ),
                  child: Text(
                    "Quiz",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                ),
              ),
            ),
            ),
            ),

          ],
        ),
      ),
  ],),),),],),),);
  }
}


