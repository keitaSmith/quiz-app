class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList
        .shuffle(); //returns void meaning it shuffles the copy of the answers list called "shuffledList of type List<String>"
    return shuffledList;
  }
}
