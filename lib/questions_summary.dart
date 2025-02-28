import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary_question.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...summaryData.map((data) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 30, // Ensures a perfect circle
              height: 30,
              alignment: Alignment.center, // Centers text inside the circle
              decoration: BoxDecoration(
                color: questions[data['question_index'] as int].answers[0] ==
                        data['user_answer'] as String
                    ? const Color.fromARGB(255, 80, 218, 0)
                    : const Color.fromARGB(
                        255, 255, 71, 71), // Background color
                shape: BoxShape.circle, // Makes it a circle
              ),
              child: Text(
                ((data['question_index'] as int) + 1).toString(),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                children: [
                  QuestionsSummaryQuestion(
                      question: data['question'], color: Colors.white),
                  QuestionsSummaryQuestion(
                      question: data['user_answer'],
                      color: const Color.fromARGB(255, 255, 71, 71)),
                  QuestionsSummaryQuestion(
                      question: data['correct_answer'],
                      color: const Color.fromARGB(255, 80, 218, 0)),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        );
      }),
    ]);
  }
}
