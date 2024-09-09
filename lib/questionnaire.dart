import 'package:flutter/material.dart';
import './question.dart';
import './reply.dart';

class Questionnaire extends StatelessWidget {
  const Questionnaire({
    super.key,
    required this.questions,
    required this.selectedQuestion,
    required this.reply,
  });

  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function() reply;

  bool get hasSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers = hasSelectedQuestion
        ? questions[selectedQuestion].cast()['answers']
        : [];

    return Column(
      children: [
        Question(questionText: questions[selectedQuestion]['text'].toString()),
        ...answers.map((t) => Reply(replyLabel: t, onSelected: reply))
      ],
    );
  }
}
