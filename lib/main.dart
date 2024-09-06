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
    final List<Map<String, Object>> questions = [
      {
        'text': 'Wath is your favorite collor?',
        'answer': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'text': 'Wath is your favorite pet?',
        'answer': ['Rabit', 'Sneak', 'Elephant', 'Lion'],
      },
      {
        'text': 'What is your favorite programing language?',
        'answer': ['Dart', 'JS', 'Python', 'Java']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quizz'),
        ),
        body: Column(
          children: [
            Question(questionText: questions[_selectedAnswer]['text'].toString()),
            Reply(replyLabel: 'Answer 1', onSelected: _reply),
            Reply(replyLabel: 'Answer 2', onSelected: _reply),
            Reply(replyLabel: 'Answer 3', onSelected: _reply),
          ],
        ),
      ),
    );
  }
}
