import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'question.dart';
import 'answers.dart';
import 'counter.dart';
import 'result.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  Quiz({Key? key}) : super(key: key);
  // final int _index = 0;
  final List<Map<String, dynamic>> quizSet = [
    {
      "question": "What is your Fav Animal ?",
      "answers": ["Lion", "Tiger", "Cat", "Dog"],
      "correct_answer": "Lion",
    },
    {
      "question": "What is your Fav Color ?",
      "answers": ["Blue", "Green", "Red", "Pink"],
      "correct_answer": "Red",
    }
  ];

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _index = 0;
  int _result = 0;

  void callback(givenAns) {
    int obtainedMark = 0;
    if (givenAns == widget.quizSet[_index]['correct_answer']) {
      obtainedMark = 5;
    }
    setState(() {
      _index += 1;
      _result += obtainedMark;
    });
  }

  void startOver() {
    setState(() {
      _index = 0;
      _result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text("General Quiz"),
        ),
        body: _index != widget.quizSet.length
            ? Column(
                children: [
                  Counter(_index, widget.quizSet.length),
                  Question(widget.quizSet[_index]['question'].toString()),
                  Answers(widget.quizSet[_index]['answers'], callback),
                ],
              )
            : Result(_result, startOver));
  }
}
