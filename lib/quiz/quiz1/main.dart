import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(Quiz1());
}

class Quiz1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF6F35A5),
      ),
      home: Home(),
    );
  }
}
