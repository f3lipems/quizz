import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
            Text(questions.elementAt(0)),
            const MaterialButton(
              onPressed: null,
              child: Text('Answer 1'),
            ),
            const MaterialButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            const MaterialButton(
              onPressed: null,
              child: Text('Answer 3'),
            ),
          ],
        ),


      ),
    );
  }
}
