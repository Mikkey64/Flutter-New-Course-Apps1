import 'package:flutter/material.dart';

class AnswersStyle extends StatelessWidget {
  const AnswersStyle({
    super.key,
    required this.answersText,
    required this.onTap,
    required this.isCorrect,
  });
  final String answersText;
  final void Function() onTap;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.only(
            right: 45,
            left: 23,
          ),
          backgroundColor: const Color.fromARGB(28, 28, 22, 75),
          foregroundColor: const Color.fromARGB(196, 255, 255, 255),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Text(
        answersText,
      ),
    );
  }
}
