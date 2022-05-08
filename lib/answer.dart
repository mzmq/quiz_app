import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final  String getAnswer ;
  final Function() getFunctionBtn ;
  Answer(this.getFunctionBtn,this.getAnswer) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: ElevatedButton(onPressed: getFunctionBtn, child: Text(getAnswer)),


    );
  }
}
