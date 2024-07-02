import 'package:first_app/AppsPage.dart';
import 'package:first_app/DICEAPP/DiceApp.dart';
import 'package:first_app/DICEAPP/test.dart';
import 'package:first_app/QuizApp/QuizApp.dart';
import 'package:first_app/QuizApp/mainquiz.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Apps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AppsPage(),
        '/DiceApp': (context) => const DiceApp(),
        '/Testpage': (context) => const Testpage(),
        '/MainQuiz': (context) => const MainQuiz(),
        '/QuizApp': (context) => const QuizApp(),
      },
    );
  }
}
