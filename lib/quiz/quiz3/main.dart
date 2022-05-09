
import 'package:flutter/material.dart';
import 'home.dart';
void main() {
  runApp(Quiz3());
}

class Quiz3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz 3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF6F35A5),
      ),
      home: Home(),
    );
  }
}
