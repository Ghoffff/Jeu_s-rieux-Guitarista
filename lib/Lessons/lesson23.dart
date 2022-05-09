import 'package:flutter/material.dart';
import 'lesson24.dart';
import 'lessons2.dart';


void main() => runApp(Lesson23());

class Lesson23 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guitarista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F35A5),

      ),
      home: MyHomePage(title: 'Lesson 3: Strumming and Bars:  '),
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
                      height: 800,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.transparent,

                      child: Column(
                        children:[
                          Align(
                            alignment: Alignment.centerLeft,
                            child:Padding(padding: EdgeInsets.all(5),
                              child: Text('''
                              
                              
Most songs have a regular and consistent pulse or beat.
It's the reason why, when you listen to music, you might begin to tap your foot or nod your head along with the tune. 
A bar (or a measure) divides musical rhythms into a consistent form.
A bar is a specific space of time!
''',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                  color:Colors.black,
                                ),),), ),


                          Align(
                            alignment: Alignment.centerLeft,
                            child:Padding(padding: EdgeInsets.all(5),
                              child: Text('''
A time signature specifies how many beats are in a bar. 
The most common time signature in music is 4:4 - four beats in a bar! 
You might also see it written as 4/4.
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
If you’re playing the same chord in the next bar, make sure you're strumming only on Beat 1.
If your chord changes are slow, try lifting your fingers off the strings earlier. 
It'll give you a bit more time to set up for your next chord!
	''',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),),), ),
                          Container(
                            height: 225.0,
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
                               Little tips:
                               
 •	Counting “1, 2, 3, 4” out loud as a song plays helps you get used to feeling the beats!
 •	A metronome is a useful tool in these situations. Grab one online, set it to a slow speed in the beginning and follow along.

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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Lesson24()));
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