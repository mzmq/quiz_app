import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  Function() questionIndexZero ;
  int viewScore ;
  Result(this.questionIndexZero , this.viewScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child:  Column(
        children: [
          const Text('Good Answer', style: TextStyle(fontSize: 20),),
           Text('Score: $viewScore /30', style: TextStyle(fontSize: 20),),
          ElevatedButton(onPressed: (){
            questionIndexZero();
          }, child: const Text('Restart Quiz')) ,

          
        ],
      ),
    );
  }
}
