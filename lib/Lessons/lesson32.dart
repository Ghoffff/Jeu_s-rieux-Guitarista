import 'package:flutter/material.dart';
import 'lesson33.dart';
import 'lessons3.dart';
void main() => runApp(Lesson32());

class Lesson32 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: 'Lesson 2: The A minor chord:'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>Lessons3(),
              ),);
          },),
        title: Text(this.title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,
            fontSize: 20,),),
        backgroundColor: Color(0xFF6F35A5),
      ),
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          children: [

            Expanded(

              child: SingleChildScrollView(


                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 1020,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.transparent,

                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 150.0,
                            padding: EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                "So, it's time to learn one more minor chord grip. The A Minor Chord is a popular one, and you'll find it in many songs. ",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,

                                ),
                              ),
                            ),
                          ),

                          Container(
                              child: Center(
                                child: Text(
                                  "If you already learned how to play the E Major chord in the previous lesso, this one will be a piece of cake! You'll find some similarities between them. Let's check it out! ",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                          ),
                          Container(
                            child: Image.asset("assets/image/lesson2Course3.png"),
                          ),


                          Container(
                            height: 289.0,
                            //margin: EdgeInsets.only(bottom: 00.0, left: 00.0, right: 00.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                """Follow the 3-step guide below to play the Am chord:
1.	Place your 1st finger (index) in the 1st fret on String 2 - it’s the 2nd string up from the bottom.\s
2.	Place your 2nd finger in the 2nd fret on String 4
3.	Place your 3rd finger in the 2nd fret on String 3.
                                                                                                 """,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),

                          Container(
                            width: double.infinity,
                            height: 100.0,
                            margin: EdgeInsets.only(top: 50.0, bottom: 10.0,left: 120.0, right: 00.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              //color: Color(0xFFE1BEE7),
                              //borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Center(
                              child: SizedBox(
                                width: 250,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson33()));
                                  },
                                  style:
                                  ElevatedButton.styleFrom(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(20.0)),
                                    minimumSize: Size(double.infinity, 200.0),
                                    primary: Color(0xFF6F35A5),


                                  ),
                                  child: Text(
                                    "Move to lesson 3 ",
                                    style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),


                              ),
                            ),
                          ),


                        ],),
                    ),
                  ],),
              ),),
          ],),),);
  }
}
