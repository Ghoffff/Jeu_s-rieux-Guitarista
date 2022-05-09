import 'package:flutter/material.dart';
import 'package:flutter_mentor_quiz_app_tut/Lessons/main.dart';
import 'lessons1.dart';
import 'lessons2.dart';
import 'lessons3.dart';

void main() => runApp(Courses());

class Courses extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black,
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => MyApp(),
              ),);
          },),

        title: Text(this.title, style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w500,
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
                      height: 1705,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.transparent,

                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child:
                            Image.asset(
                                "assets/image/coin.png", height: 200,
                                width: 200),
                          ),

                          Container(
                            width: double.infinity,
                            height: 130.0,
                            margin: EdgeInsets.only(top: 0.0,
                                bottom: 10.0,
                                left: 20.0,
                                right: 20.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),

                            child: Center(
                              child: SizedBox(
                                width: 300,
                                height: 300,


                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Lessons1()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius
                                            .circular(20.0)),
                                    minimumSize: Size(
                                        double.infinity, 200.0),
                                    primary: Color(0xFFFCE4EC),

                                  ),
                                  child: Text(
                                    """          Course 1:
 FIRST THINGS FIRST""",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),


                          Container(
                            height: 150.0,
                            margin: EdgeInsets.only(top: 00.0,
                                bottom: 10.0,
                                left: 20.0,
                                right: 20.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            decoration: BoxDecoration(

                              //color: Color(0xFF6F35A5),
                              //borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Center(
                              // ignore: deprecated_member_use
                              child: SizedBox(
                                width: 300,
                                height: 800,

                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Lessons2()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius
                                            .circular(20.0)),
                                    minimumSize: Size(
                                        double.infinity, 200.0),
                                    primary: Color(0xFFFCE4EC),

                                  ),
                                  child: Text(
                                    """            Course 2:
A & D CHORDS + YOUR FIRST SONG!""",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 150.0,
                            //margin: EdgeInsets.only(top: 70.0, bottom: 10.0, left: 20.0, right: 20.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              //color: Color(0xFFE1BEE7),
                              //borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Center(
                              child: SizedBox(
                                width: 300,
                                height: 300,


                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Lessons3()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius
                                            .circular(20.0)),
                                    minimumSize: Size(
                                        double.infinity, 200.0),
                                    primary: Color(0xFFFCE4EC),

                                  ),
                                  child: Text(
                                    """             Course 3: 
More Chords To Play Bob Marley’s Song""",
                                    style: TextStyle(
                                      fontSize: 25.0,
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
                  ],),
              ),),
          ],),),

    );
  }
}








