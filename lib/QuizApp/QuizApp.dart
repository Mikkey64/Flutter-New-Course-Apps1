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

  void answersQuestion() {
    setState(() {
      currentQuestionIndex++;
      print("questions current index: $currentQuestionIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
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
              Center(
                child: Text(
                  currentQuestion.text,
                  style: GoogleFonts.lobster(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ...currentQuestion.getShuffledAnswers().map(
                (answers) {
                  return AnswersStyle(
                    answersText: answers,
                    onTap: answersQuestion,
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
