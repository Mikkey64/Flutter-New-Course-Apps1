import 'package:first_app/QuizApp/QuizEnd.dart';
import 'package:first_app/QuizApp/data/question_data.dart';
import 'package:first_app/QuizApp/modules/AnswersStyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var currentQuestionIndex = 0;
  List<Map<String, dynamic>> userAnswers = [];

  void answersQuestion(String answer) {
    final currentQuestion = questions[currentQuestionIndex];
    final isCorrect = answer == currentQuestion.correctAnswer;
    setState(() {
      userAnswers.add({'answer': answer, 'isCorrect': isCorrect});
      currentQuestionIndex++;
    });

    if (currentQuestionIndex >= questions.length) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QuizEnd(userAnswers: userAnswers),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestionIndex >= questions.length) {
      return Container();
    }

    final currentQuestion = questions[currentQuestionIndex];

    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(83, 59, 145, 1),
                Color.fromRGBO(33, 20, 49, 1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.josefinSans(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ...currentQuestion.getShuffledAnswers().map(
                (answers) {
                  return AnswersStyle(
                    answersText: answers,
                    onTap: () => answersQuestion(answers),
                    isCorrect: answers == currentQuestion.correctAnswer,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
