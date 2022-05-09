import 'package:flutter/material.dart';
import '../quiz/quiz3/main.dart';
import 'lessons3.dart';


void main() => runApp(Lesson35());

class Lesson35 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: 'THREE LITTLE BIRDS – BOB MARLEY:'),
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
                      height: 1700,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.transparent,

                      child: Column(
                        children: [
                          Container(
                            child: Center(
                              child: Text(
                                """ 

Three Little Birds is a super simple 3-chord song! To play it, you'll only need the chords A, D, and E. If you've been following the lessons, you should already be familiar with these chords.
It's really useful to write chord progressions in a simple form. It'll help you get back on track if you get confused. Here's the chord progression you'll follow for this song:
A E A D A E D A
This song follows a 4x4 strumming pattern and you'll need to strum on the beat. You'll play four downstrums per bar throughout the whole tune.
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
                                "THREE LITTLE BIRDS GUITAR TIPS FOR BEGINNERS",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF6F35A5),

                                ),
                              ),
                            ),
                          ),

                          Container(
                            height: 700.0,

                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                """Here are 4 helpful tips to help you play this iconic Bob Marley tune.
                                
1.	When you're playing the D chord, avoid playing your thickest string. It won't sound good! Pick from the fourth string.

2.	Keep your thumb around the back of the neck to build up the muscles in your hand! You'll need it later on for barre chords and power chords.

3.	Use an anchor finger for your A chord. Leave your first finger down and move the other two fingers - it makes for easier changes between the A & D chord.

4.	Your skills will progress with consistent practice! For now, concentrate on keeping that strumming even - and not stopping between chord changes.
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
                            height: 109.0,
                            //margin: EdgeInsets.only(bottom: 00.0, left: 00.0, right: 00.0),
                            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Color(0xFFE1BEE7),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Center(
                              child:Text(
                                '•	Little tip: Play along with the original song and slow it down if the chord changes are too fast to keep it up. ',
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz3()));
                                  },
                                  style:
                                  ElevatedButton.styleFrom(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(20.0)),
                                    minimumSize: Size(double.infinity, 200.0),
                                    primary: Color(0xFF6F35A5),


                                  ),
                                  child: Text(
                                    "Move to quiz ",
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
