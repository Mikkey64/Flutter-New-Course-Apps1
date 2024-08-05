import 'package:first_app/QuizApp/QuizApp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizEnd extends StatelessWidget {
  final List<Map<String, dynamic>> userAnswers;

  const QuizEnd({super.key, required this.userAnswers});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(83, 59, 145, 1),
                    Color.fromRGBO(33, 20, 49, 1),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 25,
              right: 25,
              child: AppBar(
                backgroundColor: const Color.fromARGB(53, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                title: Center(
                  child: Text(
                    'Quiz Results',
                    style: GoogleFonts.gantari(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Your Answers:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ...userAnswers.map((answer) {
                    return Text(
                      "${answer['answer']} - ${answer['isCorrect'] ? 'Correct' : 'Wrong'}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    );
                  }).toList(),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const QuizApp()),
                        ),
                      );
                    },
                    child: const Text('Restart Quiz'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
