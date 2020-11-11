import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;

  Result(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: RaisedButton(
            child: Text('Restart quiz'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide(color: Colors.red)),
            color: Colors.amberAccent,
            textColor: Colors.black,
            onPressed: resetHandler));
  }
}
