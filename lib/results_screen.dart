import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestartQuiz});
  final List<String> chosenAnswers;
  final void Function() onRestartQuiz;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int x = 0; x < chosenAnswers.length; x++) {
      summary.add(
        {
          'question_index': x,
          'question': questions[x].text,
          'correct_answer': questions[x].answers[0],
          'user_answer': chosenAnswers[x],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin:
            const EdgeInsetsDirectional.symmetric(horizontal: 40, vertical: 80),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Results",
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 40),
            OutlinedButton.icon(
              onPressed: onRestartQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                iconColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              icon: const Icon(Icons.replay_rounded),
              label: const Text('Restart Quiz', style: TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}
