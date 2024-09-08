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
  var _selectedQuestion = 0;

  void _reply() {
    setState(() {
      _selectedQuestion++;
    });
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
      {
        'text': 'Wath is your favorite collor?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'text': 'Wath is your favorite pet?',
        'answers': ['Rabit', 'Sneak', 'Elephant', 'Lion'],
      },
      {
        'text': 'What is your favorite programing language?',
        'answers': ['Dart', 'JS', 'Python', 'Java']
      }
    ];

    List<String> answers = questions[_selectedQuestion].cast()['answers'];
    List<Widget> answersWidget = answers.map((t) => Reply(replyLabel: t, onSelected: _reply)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quizz'),
        ),
        body: Column(
          children: [
            Question(questionText: questions[_selectedQuestion]['text'].toString()),
            ...answersWidget
          ],
        ),
      ),
    );
  }
}
