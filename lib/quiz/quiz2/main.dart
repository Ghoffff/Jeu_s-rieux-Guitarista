import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(Quiz2());
}

class Quiz2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF6F35A5),
      ),
      home: Home(),
    );
  }
}
