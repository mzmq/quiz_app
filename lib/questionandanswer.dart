import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'answer.dart';

class QuestionAndAnswer extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int s) answerQuestion;

  QuestionAndAnswer({required this.question,required this.questionIndex, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1, child: Question(question[questionIndex]['questionText'])),
        Expanded(
          flex: 10,
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                ...(question[questionIndex]['answer']
                        as List<Map<String, Object>>)
                    .map((value) {
                  return Answer(
                      () =>
                          answerQuestion(int.parse(value['score'].toString())),
                      value['text'].toString());
                }).toList(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
