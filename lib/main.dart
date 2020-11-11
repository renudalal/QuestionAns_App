import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Red', 'Green', 'Yellow', 'Blue']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Dog', 'Rabbit', 'Lion']
    },
    {
      'questionText': 'What\'s your favourite bird?',
      'answers': ['Parrot', 'Pigeon', 'crow', 'Duck']
    },
  ];
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  void resetApp() {
    setState(() {
      questionIndex = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Question Answer App'),
            ),
            body: questionIndex < questions.length
                ? Column(
                    children: [
                      Question(
                        questions[questionIndex]['questionText'],
                      ),
                      ...(questions[questionIndex]['answers'] as List<String>)
                          .map((answer) {
                        return Answer(answerQuestion, answer);
                      }).toList()
                    ],
                  )
                : Result(resetApp)));
  }
}
