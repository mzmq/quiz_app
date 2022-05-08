import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final question;

  const Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          question,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
