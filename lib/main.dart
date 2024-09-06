import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  var _selectedAnswer = 0;

  void _reply() {
    setState(() {
      _selectedAnswer++;
    });
    print(_selectedAnswer);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      'Wath is your favorite collor?',
      'Wath is you favorite pet?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quizz'),
        ),
        body: Column(
          children: [
            Question(questionText: questions.elementAt(_selectedAnswer)),
            MaterialButton(
              onPressed: _reply,
              child: const Text('Answer 1'),
            ),
            MaterialButton(
              onPressed: _reply,
              child: Text('Answer 2'),
            ),
            MaterialButton(
              onPressed: _reply,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
