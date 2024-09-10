import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.score});
  final int score;

  String get resultFrase {
    if (score < 8) {
      return 'Congrats!';
    } else if (score < 12) {
      return 'You Rock!';
    } else if (score < 16) {
      return 'Wow! Awesome!';
    } else {
      return 'You are a Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      resultFrase,
      style: const TextStyle(fontSize: 28),
    ));
  }
}
