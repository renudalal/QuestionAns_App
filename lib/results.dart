import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final String text;

  Result(this.resetHandler, this.text, {TextStyle style});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: RaisedButton(
            child: Text(text),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide(color: Colors.red)),
            color: Colors.amberAccent,
            textColor: Colors.black,
            onPressed: resetHandler));
  }
}
