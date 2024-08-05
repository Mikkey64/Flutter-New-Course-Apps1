import 'package:first_app/DICEAPP/DiceApp.dart';
import 'package:first_app/FinanceApp/finance_app.dart';
import 'package:first_app/QuizApp/mainquiz.dart';
import 'package:flutter/material.dart';

class AppsPage extends StatelessWidget {
  const AppsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(13, 91, 96, 1),
                Color.fromRGBO(5, 63, 78, 1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 4),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/me.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DiceApp(),
                    ),
                  );
                },
                child: const Text('Go to the diceApp'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const MainQuiz()),
                    ),
                  );
                },
                child: const Text('Go to the Quiz'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const FinanceApp())));
                  },
                  child: const Text('FinanceApp'))
            ],
          ),
        ),
      ),
    );
  }
}
