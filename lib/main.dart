import 'package:flutter/material.dart';
import './question.dart';
import './reply.dart';
import './result.dart';
import './questionnaire.dart';

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
  final List<Map<String, Object>> _questions = const [
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

  void _reply() {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Quizz'),
          ),
          body: hasSelectedQuestion
              ? Questionnaire(
                  questions: _questions,
                  selectedQuestion: _selectedQuestion,
                  reply: _reply,
                )
              : const Result()),
    );
  }
}
