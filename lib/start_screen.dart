import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 300),
        const SizedBox(height: 80),
        const Text(
          'Learn Flutter the Fun Way',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            iconColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Take Quiz', style: TextStyle(fontSize: 20)),
        )
      ],
    );
  }
}
