import 'package:flutter/material.dart';
import 'lesson5.dart';
import 'lessons1.dart';


void main() => runApp(Lesson4());

class Lesson4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: 'How to strum:  '),
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
                      width: double.infinity,
                      height:1300,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.transparent,

                      child: Column(
                        children:[
                          Align(
                            alignment: Alignment.centerLeft,
                            child:Padding(padding: EdgeInsets.all(5),
                              child: Text('''
You can either use a guitar pick or your thumb to strum.
You should start your guitar journey with a very thin pick, as thin as you can find!
Follow the two steps below to master your pick position:
''',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                  color:Colors.black,
                                ),),), ),

                          Text("""Step 1 - Place the pick on finger 1. Its point should follow the direction of your finger - the pick should point out the top of it.
          """,style:TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6F35A5),
                          ),),

                          Container(
                            child:Image.asset("assets/image/step1lesson4.png",width: 500,height:300),
                          ),

                          Align(
                            alignment: Alignment.centerLeft,
                            child:Padding(padding: EdgeInsets.all(5),
                              child: Text('''Step 2 - Place your thumb on top so that the pick is coming out of the side of your thumb.
''',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF6F35A5),
                                ),),), ),
                          Image.asset("assets/image/step2lesson4.png",width: 500,height:300),

                          Align(
                            alignment: Alignment.centerLeft,
                            child:Padding(padding: EdgeInsets.all(5),
                              child: Text('''HOW TO STRUM THE GUITAR WITH YOUR THUMB ?
                              
Strumming with your thumb gives you a rounder sound, and strumming with a pick gives you a brighter sound. 
Things to keep in mind when learning how to strum the guitar with your thumb:

 
•	With the down strums, use the fleshier part of your thumb. On the up strums, your nail may catch the string.
 That results in a brighter sound that doesn’t always make sense, so be careful not to sound awkward.
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson5()));
                            },
                            style:ElevatedButton.styleFrom(
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
            ),




          ],),),);
  }
}