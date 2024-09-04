import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainAppState extends State<MainApp> {
  var selectedAnswer = 0;

  void reply() {
    setState(() {
      selectedAnswer++;
    });
    print(selectedAnswer);
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
            Text(questions.elementAt(selectedAnswer)),
            MaterialButton(
              onPressed: reply,
              child: const Text('Answer 1'),
            ),
            MaterialButton(
              onPressed: reply,
              child: Text('Answer 2'),
            ),
            MaterialButton(
              onPressed: reply,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MainAppState();
  }
}
