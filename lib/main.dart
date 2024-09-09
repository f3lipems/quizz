import 'package:flutter/material.dart';
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
      'answers': [
        {'text': 'Black', 'score': 7},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 9}
      ],
    },
    {
      'text': 'Wath is your favorite pet?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snak', 'score': 4},
        {'text': 'Elephant', 'score': 6},
        {'text': 'Lion,', 'score': 8}
      ],
    },
    {
      'text': 'What is your favorite programing language?',
      'answers': [
        { 'text': 'Dart', 'score': 10}, 
        { 'text': 'JS', 'score': 5}, 
        { 'text': 'Python', 'score': 8}, 
        { 'text': 'Java', 'score': 3}
      ]
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
