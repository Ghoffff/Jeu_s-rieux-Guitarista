import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'lessons3.dart';

import 'lesson34.dart';
void main() => runApp(Lesson33());

class Lesson33 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: 'Lesson 3: Tricks to chords changing:'),
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
          height: 1750,
          padding: EdgeInsets.all(10.0),
          color: Colors.transparent,

          child: Column(
            children: [
            Align(
            alignment: Alignment.centerLeft,
               child:
              Image.asset("assets/image/maintop.png",height: 100,width: 100),
            ),



                          Container(
                            child: Center(
                              child: Text(
                                """ 
 You're probably struggling a bit with learning chords.But only when you start learning songs is that you realize that changing between chords is the real challenge!
  This lesson will help you make faster chord changes.
  If you’re following my Beginner Course, you already know how to play the A, D, and E chords.
  You can get through some songs, but the anchor finger trick will help you switch between chords smother and sound better!

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
    child: Center(
    child: Text(
    "CHANGING BETWEEN E AND A",
    style: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    color: Color(0xFF6F35A5),

    ),
    ),
    ),
    ),

                          Container(
                            height: 500.0,

                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                """Start with your fingers in place for an E chord.

1.	While leaving your 1st finger in place, lift your 2nd and 3rd fingers.

2.	Slide the 1st finger forward one fret, from the 1st fret to the 2nd.

3.	Place your 2nd and 3rd fingers down in the correct positions to form your A chord.

After a few times changing between the two chords, I’m sure you’ll find that using that 1st finger as an anchor helps to make it easier.

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
    child: Center(
    child: Text(
    "CHANGING BETWEEN E AND D",
    style: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    color: Color(0xFF6F35A5),

    ),
    ),
    ),
    ),

                          Container(
                          height: 400.0,
                          //margin: EdgeInsets.only(bottom: 00.0, left: 00.0, right: 00.0),
                          padding: EdgeInsets.symmetric(
    horizontal: 20.0, vertical: 20.0),
    decoration: BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(10.0),
    ),
    child: Center(
    child: Text(
    """When changing between the E and D chords, the 1st finger will move between the 1st and 2nd frets. The process is almost the same as when you're changing between E to A!

1.	While leaving your 1st finger in place, lift your 2nd and 3rd fingers.

2.	Slide the 1st finger forward one fret, from the 1st fret to the 2nd.

3.	Place your 2nd and 3rd fingers down in the correct positions to form your D chord.


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
    height: 135.0,
    //margin: EdgeInsets.only(bottom: 00.0, left: 00.0, right: 00.0),
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
    decoration: BoxDecoration(
    color: Color(0xFFE1BEE7),
    borderRadius: BorderRadius.circular(100.0),
    ),
    child: Center(
    child:Text(
    '•	Little tip:  After getting a little comfy with the chord, try to place your thumb on the 6th string to mute it.',
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson34()));
                                  },
                                  style:
                                  ElevatedButton.styleFrom(
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
            ],),), ),],),
      ), );
  }
}
