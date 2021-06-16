import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final int result;
  final Function() startOver;

  Result(this.result, this.startOver, {Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your Score is " + widget.result.toString(),
                    style: TextStyle(fontSize: 25))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  widget.startOver();
                },
                child: Text("Click here to Start Over"),
              )
            ],
          )
        ],
      ),
    );
  }
}
