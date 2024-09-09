import 'package:flutter/material.dart';
import './question.dart';
import './reply.dart';
import './result.dart';

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
    List<String> answers = hasSelectedQuestion
        ? _questions[_selectedQuestion].cast()['answers']
        : [];
    List<Widget> answersWidget =
        answers.map((t) => Reply(replyLabel: t, onSelected: _reply)).toList();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Quizz'),
          ),
          body: hasSelectedQuestion
              ? Column(
                  children: [
                    Question(
                        questionText:
                            _questions[_selectedQuestion]['text'].toString()),
                    ...answersWidget
                  ],
                )
              : const Result()),
    );
  }
}
