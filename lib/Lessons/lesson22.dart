import 'package:flutter/material.dart';
import 'lesson23.dart';
import 'lessons2.dart';


void main() => runApp(Lesson22());

class Lesson22 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: 'Lesson 2: The D Chord: '),
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
                      height: 1050,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.transparent,

                      child: Column(
                        children:[
                          Align(
                            alignment: Alignment.centerLeft,
                            child:Padding(padding: EdgeInsets.all(5),
                              child: Text('''
                              
                              
                              
The D Chord is an essential grip to all guitar players! 
You'll find it in many songs - no matter the music style you're playing. 
Check out the chord box diagram for the D chord:
''',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                  color:Colors.black,
                                ),),), ),
                          Container(
                            child:Image.asset("assets/image/lesson2Course2.png",width: 600,height:300),),

                          Align(
                            alignment: Alignment.centerLeft,
                            child:Padding(padding: EdgeInsets.all(5),
                              child: Text('''The D chord uses three fingers, so let's learn how to play it in three easy steps! Here we go:
                              
1.	Place your 1st finger in the 2nd fret on String 3 - it’s the 3rd one up from the bottom. 

2.	Place your 2nd finger in the 2nd fret on String 1 - the bottom, thinnest string. 

3.	Place your 3rd finger in the 3rd fret on String 2.

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
 You'll notice that, in the diagram, the 4th string marked with an O. 
 
 This means we play the string, but there are no fingers on it - it's an open string! Strings 5 and 6 are both marked with an X, meaning we don’t play those strings at all. 
 
 Finally, give it a strum! Strum down softly on the thinnest four strings with your thumb.
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson23()));
                            },
                            style:ElevatedButton.styleFrom(
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
            ),




          ],),),);
  }
}