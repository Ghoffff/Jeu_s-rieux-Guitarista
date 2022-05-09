import 'package:flutter/material.dart';
import 'lesson32.dart';
import 'lessons3.dart';
void main() => runApp(Lesson31());

class Lesson31 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: 'Lesson1: The E major chord :'),
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
                                "By now, you should know how to read guitar chord boxes. Let's take a look at the E chord diagram:",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,

                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Image.asset(
                                "assets/image/lesson1Course3.png"),

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
                                """If your E chord sounds rough, it’s normal. It takes time and practice to get it right! This exercise will help you out.
The Chord Perfect Exercise is a 4-step process to help with problems you may have when playing a chord. 
It’ll help you quickly correct and master any guitar chord. Let's do it together for the E chord!""",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),

                          Container(
                            height: 700.0,

                            //margin: EdgeInsets.only(bottom: 00.0, left: 00.0, right: 00.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Color(0xFFE1BEE7),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Center(
                              child: Text(
                                """                 Step 1: Finger Placement
Place your fingers on the correct strings in the right frets. Use the chord box diagram to guide you if you need it.
                 
                 Step 2: Strum the Chord
Press down on the strings and strum the chord. If it doesn’t sound great, no worries! We’ll fix it.
                 
                 Step 3: Individual Strings
Play the strings one at a time. Each note should ring out true and clear. If they don’t, we need to find the problem and fix it.  Make sure that the tip of your finger doesn’t touch any athor string and each string should ring flowlessly.
                 
                 Step 4: Strum Again
Strum the chord again. Does it sound better? It should! If not, go through the steps again to check your finger position. You’ll know when you’ve got it. The chord should ring out clearly.
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson32()));
                                  },
                                  style:
                                  ElevatedButton.styleFrom(
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
                  ],),
              ),),
          ],),),);
  }
}
