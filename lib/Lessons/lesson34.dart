import 'package:flutter/material.dart';

import 'lesson35.dart';
import 'lessons3.dart';

void main() => runApp(Lesson34());

class Lesson34 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: 'Lesson 4: The E major chord :'),
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
                      height: 1560,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.transparent,

                      child: Column(
                        children: [
                          Container(
                              child:
                                Text(
                                """
                                
Are you wondering if there's a right way of strumming a guitar correctly?  This lesson is for you. :) You'll learn how to strum a guitar on the beat and practice it through basic strumming guitar patterns. """,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),),),
                         Container(
                            child: Image.asset(
                                "assets/image/lesson4Course3.png"),

                          ),

                          Container(
                            height: 1100.0,

                            //margin: EdgeInsets.only(bottom: 00.0, left: 00.0, right: 00.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),

                            child: Center(
                              child: Text(
                                """
Now let's learn an easy strumming pattern to practice strumming on the beat. It's a powerful rhythm exercise when learning how to play the guitar! The image below shows a bar with 4 down strums - see how this strumming pattern looks like when written down:

•	To play this strumming pattern, strum down once every down-beat. You're strumming your guitar four times per bar.

•	Start with muted strings – don't worry about fretting any chords for this exercise. Wrap your fingers around the neck of your guitar, and practice strumming down a few times. It should feel natural! 

•	Next, you're going to multitask a bit! Strum one beat and tap your foot at the same time. Tapping your foot is a skill on its own - not quite sure how? Learn more about tapping your foot while playing guitar! 

•	At the same time you strum down, count "1, 2, 3, 4" out loud. Counting along as you play the guitar helps you keep track of where the bar starts. Do this until they are both in sync.

•	Practicing will help get this simple rhythm pattern deep in your mind! It will become part of your muscle memory. With practice, it gets natural. The goal is to keep the rhythm and your strums consistent as you play. 

•	When we play songs, we usually change chords at the start of every bar - so it's essential you know where the first beat is in the bar.
         
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson35()));
                                  },
                                  style:
                                  ElevatedButton.styleFrom(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(20.0)),
                                    minimumSize: Size(double.infinity, 200.0),
                                    primary: Color(0xFF6F35A5),


                                  ),
                                  child: Text(
                                    "Move to lesson 5 ",
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
