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
  final void Function(int score) reply;

  bool get hasSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = hasSelectedQuestion
        ? questions[selectedQuestion].cast()['answers']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: [
        Question(questionText: questions[selectedQuestion]['text'].toString()),
        ...answers.map((res) {
            return Reply(replyLabel: res['text'] as String, onSelected: () => reply(int.parse(res['score'].toString())));
          }
        )
      ],
    );
  }
}
