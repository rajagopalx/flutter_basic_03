import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final int index;
  final int total;
  Counter(this.index, this.total, {Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              (widget.index + 1).toString() + "/" + widget.total.toString()),
        ),
      ],
    );
  }
}
