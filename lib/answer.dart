import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final String answer;
  final Function(String) callback;

  Answer(this.answer, this.callback, {Key? key}) : super(key: key);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150, 40),
        primary: Colors.blue.shade700,
      ),
      onPressed: () {
        widget.callback(widget.answer);
      },
      child: Text(
        widget.answer,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
