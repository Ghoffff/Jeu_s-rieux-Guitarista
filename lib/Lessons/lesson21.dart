import 'package:flutter/material.dart';
import 'lesson22.dart';
import 'lessons2.dart';


void main() => runApp(Lesson21());

class Lesson21 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: 'Lesson 1: The A Chord: '),
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
                      height: 750,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.transparent,

                      child: Column(
                        children:[
                          Align(
                            alignment: Alignment.centerLeft,
                            child:Padding(padding: EdgeInsets.all(5),
                              child: Text('''
   Now it's time to learn how to play the A chord! Here's what the A Chord looks like:
''',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                  color:Color(0xFF6F35A5),
                                ),),), ),
                          Container(
                            child:Image.asset("assets/image/lesson1Course2.png",width: 500,height:300),),

                          Align(
                            alignment: Alignment.centerLeft,
                            child:Padding(padding: EdgeInsets.all(5),
                              child: Text('''Place your fingers on the strings one at a time, in the following order: 
1. Place your 1st finger in the 2nd fret on the 3rd string. 

2. Place your 2nd finger in the 2nd fret on the 4th string. 

3. Place your 3rd finger in the 2nd fret on the 2nd string. 

You’ll probably find all three fingers together in the same fret a bit of a squeeze, but don’t worry! It gets easier with practice. 

''',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),),), ),

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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson22()));
                            },
                            style:ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0)),
                              minimumSize: Size(double.infinity, 200.0),
                              primary: Color(0xFF6F35A5),
                            ),
                            child: Text(
                              "Move to lesson 2 ",
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