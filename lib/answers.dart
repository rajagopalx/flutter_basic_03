import 'package:flutter/material.dart';

import 'answer.dart';

class Answers extends StatefulWidget {
  final List<String> answers;
  final Function(String) callback;

  Answers(this.answers, this.callback, {Key? key}) : super(key: key);

  @override
  _AnswersState createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 30.0, runSpacing: 8.0, children: [
      for (var ans in widget.answers) Answer(ans, widget.callback)
    ]);
  }
}
