import 'package:flutter/material.dart';

class QuestionsSummaryQuestion extends StatelessWidget {
  const QuestionsSummaryQuestion(
      {super.key, required this.question, required this.color});
  final Object? question;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        question as String,
        style: TextStyle(color: color, fontSize: 20),
      ),
    );
  }
}
