
import 'package:flutter/material.dart';
import 'package:flutter_mentor_quiz_app_tut/Lessons/main.dart';
import 'package:flutter_mentor_quiz_app_tut/quiz/quiz2/main.dart';
import 'lessons2.dart';

void main() => runApp(Lesson24());

class Lesson24 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: 'Lesson 4: Your First song: DANCE THE NIGHT AWAY - THE MAVERICKS  '),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>Lessons2(),
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
                      height: 600,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.transparent,

                      child: Column(
                        children:[
                          Align(
                            alignment: Alignment.centerLeft,
                            child:Padding(padding: EdgeInsets.all(5),
                              child: Text('''
                              
                              
                              
If you haven't played your first song yet, Dance the Night Away is a great one to get started! 

It's easy and fun to play along with.

It’s basically a D chord for a bar, and an A chord for a bar. And that repeats through the whole tune.

Strum on the 1 beat of each bar. It’s an excellent song for any beginner to practice the chord changes. 

''',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                  color:Colors.black,
                                ),),), ),

                          Container(
                            height: 180.0,
                            //margin: EdgeInsets.only(bottom: 00.0, left: 00.0, right: 00.0),
                            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Color(0xFFE1BEE7),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child:Padding(padding: EdgeInsets.all(5),
                                child: Text('''
                              Little tip: 
                              
Play along with the song and slow it down if the chord changes are too fast to keep it up.
''',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),),), ),
                          )





                        ],
                      ),

                    ),

                    Container(
                      width: double.infinity,
                      height: 90.0,
                      margin: EdgeInsets.only(top: 50.0, bottom: 10.0, left: 120.0, right: 00.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      decoration: BoxDecoration(
                        //color: Color(0xFFE1BEE7),
                        //borderRadius: BorderRadius.circular(100.0),
                      ),
                      child:Center(
                        child: SizedBox(
                          width: 250,
                          height:50,
                          child:ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz2()));
                            },
                            style:ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0)),
                              minimumSize: Size(double.infinity, 200.0),
                              primary: Color(0xFF6F35A5),
                            ),
                            child: Text(
                              "Move to quiz ! ",
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
            ),




          ],),),);
  }
}