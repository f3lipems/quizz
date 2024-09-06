import 'package:flutter/material.dart';
import './question.dart';
import './reply.dart';

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
      'Wath is your favorite pet?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quizz'),
        ),
        body: Column(
          children: [
            Question(questionText: questions.elementAt(_selectedAnswer)),
            Reply(replyLabel: 'Answer 1', onSelected: _reply),
            Reply(replyLabel: 'Answer 2', onSelected: _reply),
            Reply(replyLabel: 'Answer 3', onSelected: _reply),
          ],
        ),
      ),
    );
  }
}
