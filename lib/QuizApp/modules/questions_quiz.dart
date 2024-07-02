class QuestionsForQuiz {
  final String text;
  final List<String> answers;
  final String correctAnswer;

  const QuestionsForQuiz({
    required this.text,
    required this.answers,
    required this.correctAnswer,
  });

  List<String> getShuffledAnswers() {
    final shuffledAnswers = List<String>.from(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
