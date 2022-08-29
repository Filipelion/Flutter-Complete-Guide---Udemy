import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final void Function(int) answerQuestion;

  const Quiz({
    Key? key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  }) : super(key: key);

  bool get onSelectQuestion {
    return questionIndex < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
        onSelectQuestion ? questions[questionIndex].cast()['answers'] : [];

    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText'].toString()),
        ...answers.map((ans) {
          return Answer(
            ans['text'].toString(),
            () => answerQuestion(int.parse(ans['score'].toString())),
          );
        }).toList(),
      ],
    );
  }
}
