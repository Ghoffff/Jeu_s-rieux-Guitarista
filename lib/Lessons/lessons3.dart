// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'lesson31.dart';
import 'lesson32.dart';
import 'lesson33.dart';
import 'lesson34.dart';
import 'lesson35.dart';
import 'courses.dart';


void main() => runApp(Lessons3());

class Lessons3 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:  Color(0xFF6F35A5),

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
                builder: (context) =>Courses(),
              ),);
          },),
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
                      height: 100.0,
                      margin: EdgeInsets.only(top:50.0, bottom: 10.0, left:10.0, right: 150.0),
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

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson31()));

                            },
                            style:ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0)),
                              minimumSize: Size(double.infinity, 200.0),
                              primary: Color(0xFFE1BEE7),

                            ),
                            child: Text(
                              "The E major chord ",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),


                        ),
                      ),
                    ),


                    Container(
                      height: 100.0,
                      margin: EdgeInsets.only(top:00.0, bottom: 10.0, left: 150.0, right: 0.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      decoration: BoxDecoration(

                        //color: Color(0xFF6F35A5),
                        //borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        // ignore: deprecated_member_use
                        child: SizedBox(
                          width: 300,
                          height:300,

                          child:ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson32()));
                            },
                            style:ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(20.0)),
                                minimumSize: Size(double.infinity, 200.0),
                                primary: Color(0xFF6F35A5)

                            ),
                            child: Text(
                              "The A minor chord ",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      height: 100.0,
                      margin: EdgeInsets.only(top:0.0, bottom: 10.0, left:10.0, right: 150.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      decoration: BoxDecoration(

                        //color: Color(0xFF6F35A5),
                        //borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        // ignore: deprecated_member_use
                        child: SizedBox(
                          width: 300,
                          height:300,

                          child:ElevatedButton(
                            onPressed: (){

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson33()));
                            },
                            style:ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0)),
                              minimumSize: Size(double.infinity, 200.0),
                              primary: Color(0xFFE1BEE7),

                            ),
                            child: Text(
                              """Tricks to chords changing """,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 130.0,
                      margin: EdgeInsets.only(top:00.0, bottom: 40.0, left: 150.0, right: 0.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      decoration: BoxDecoration(

                        //color: Color(0xFF6F35A5),
                        //borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        // ignore: deprecated_member_use
                        child: SizedBox(
                          width: 300,
                          height:300,

                          child:ElevatedButton(
                            onPressed: (){

                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Lesson34()));
                            },
                            style:ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0)),
                              minimumSize: Size(double.infinity, 200.0),
                              primary: Color(0xFF6F35A5),

                            ),
                            child: Text(
                              " Bars and Strumming 2 ",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      height: 120.0,
                      margin: EdgeInsets.only(top:0.0, bottom: 40.0, left:10.0, right: 150.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      decoration: BoxDecoration(

                        //color: Color(0xFF6F35A5),
                        //borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        // ignore: deprecated_member_use
                        child: SizedBox(
                          width: 300,
                          height:300,

                          child:ElevatedButton(
                            onPressed: (){

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson35()));
                            },
                            style:ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0)),
                              minimumSize: Size(double.infinity, 200.0),
                              primary: Color(0xFFE1BEE7),

                            ),
                            child: Text(
                              "THREE LITTLE BIRDS – BOB MARLEY",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Image.asset("assets/image/enfant3.png"),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
