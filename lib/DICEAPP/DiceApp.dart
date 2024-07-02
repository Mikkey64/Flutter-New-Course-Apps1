import 'package:flutter/material.dart';
import 'package:first_app/DICEAPP/gradientandApp.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromRGBO(58, 152, 247, 1),
          Color.fromRGBO(35, 38, 92, 1),
        ),
      ),
    );
  }
}
