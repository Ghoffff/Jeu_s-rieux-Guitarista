import 'package:flutter/material.dart';
import 'lesson4.dart';
import 'lesson4.dart';
import 'lessons1.dart';

void main() => runApp(Lesson3());

class Lesson3 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: ' How to Read Guitar Chord Boxes: '),
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
                builder: (context) =>Lessons1(),
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
                    child:Image.asset("assets/image/imglesson3.png",width: 500,height:300),
                  ),
                  Container(
                    width: double.infinity,
                    height: 720,
                    padding: EdgeInsets.all(10.0),
                    color: Colors.transparent,

                     child: Column(
                       children:[
                         Align(
                       alignment: Alignment.centerLeft,
                       child:Padding(padding: EdgeInsets.all(5),
                         child: Text('''
    What do the lines mean?''',
                           style: TextStyle(
                             fontSize: 17.0,
                             fontWeight: FontWeight.w500,
                             color:Color(0xFF6F35A5),
                           ),),), ),
               Align(
                alignment: Alignment.centerLeft,
                child:Padding(padding: EdgeInsets.all(5),
                  child: Text('''
•	The vertical lines in the diagram represent the six strings.
•	The line on the furthest left is the thickest string.
•	The two lines at the top of the box represent the nut.
•	The rest of the horizontal lines represent the frets.
''',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),),), ),

    Align(
    alignment: Alignment.centerLeft,
    child:Padding(padding: EdgeInsets.all(5),
    child: Text(''' 
    What do the dots mean?''',
    style: TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
    color:Color(0xFF6F35A5),
    ),),),),
    Align(
    alignment: Alignment.centerLeft,
    child:Padding(padding: EdgeInsets.all(5),
    child: Text('''The dots represent the strings you should place your fingers on, and the numbers inside the dots show which finger to use.
•	Number 1 is the index finger.
•	Number 2 is the middle finger.
•	Number 3 is the ring finger.
	Number 4 is your pinky.
	''',
      style: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),),), ),
    Align(
    alignment: Alignment.centerLeft,
    child:Padding(padding: EdgeInsets.all(5),
    child: Text(''' 
    WHICH STRINGS TO PLAY ?
''',
    style: TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
    color:Color(0xFF6F35A5),
    ),),), ),

    Align(
    alignment: Alignment.centerLeft,
    child:Padding(padding: EdgeInsets.all(5),
    child: Text('''When reading a chord box diagram, observe that some strings have an X and others have an O above them.
•	The O stands for open. It means that you play an open string – with no fingers holding it down.
•	The X means that you should not play that string at all.
•	You’ll always play the strings that have fingers on them.
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson4()));
                          },
                          style:ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0)),
                            minimumSize: Size(double.infinity, 200.0),
                            primary: Color(0xFF6F35A5),
                          ),
                          child: Text(
                            "Move to lesson 4 ",
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
