import 'package:first_app/QuizApp/QuizApp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainQuiz extends StatelessWidget {
  const MainQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(33, 20, 49, 1),
                Color.fromRGBO(83, 59, 145, 1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Container(
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(247, 43, 24, 81),
                      width: 2,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/mikkeyquiz.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Text('Welcome to the knownledge quiz',
                      style: GoogleFonts.ubuntu(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(168, 131, 104, 172),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const QuizApp()),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_right_sharp),
                    label: const Text(
                      'Start quiz',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
