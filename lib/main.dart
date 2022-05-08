import 'package:flutter/material.dart';
import 'package:quiz_app/questionandanswer.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {




  @override
  State<MyApp> createState() => _MyAppState();
}

int questionIndex = 0;
int _totalScore = 0 ;

final List<Map<String, Object>> _question = [
  {
    'questionText': 'what\'s your favorite color ?',
    'answer': [
      {'text': 'red', 'score': 10},
      {'text': 'green', 'score': 0},
      {'text': 'blue', 'score': 0},
      {'text': 'Magenta', 'score': 0},
    ],
  },
  {
    'questionText': 'what\'s your favorite home ?',
    'answer': [
      {'text': 'jabal alhusan', 'score': 10},
      {'text': 'alnozha', 'score': 0},
      {'text': 'alda7ea', 'score': 0},
      {'text': 'almadena', 'score': 0},
    ],
  },
  {
    'questionText': 'what\'s your favorite Pc ?',
    'answer': [
      {'text':'Dell', "score": 10},
      {'text':'Hp', "score": 0},
      {'text':'Lenovo', "score": 0},

    ],
  },
];

class _MyAppState extends State<MyApp> {
  int questionIndexZero = 0;

  void resetQuiz() {
    setState(() {
      _totalScore = 0 ;
      questionIndex = 0;
      questionIndexZero = questionIndex;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score ;
    setState(() {
      questionIndex += 1;
    });

    print('answer $questionIndex');
    print('$_totalScore');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 30),
          width: double.infinity,
          child: questionIndex < _question.length
              ? QuestionAndAnswer(question: _question,questionIndex:  questionIndex, answerQuestion: answerQuestion)
              : Result(resetQuiz , _totalScore),
        ),
      ),
    );
  }
}
