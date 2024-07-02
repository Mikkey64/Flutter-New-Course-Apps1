import 'package:flutter/material.dart';
import 'dart:math';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

var currentdiceroll = 1;

class _DiceRollerState extends State<DiceRoller> {
  void rolldice() {
    setState(() {
      currentdiceroll = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdiceroll.png',
          width: 200,
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(118, 67, 126, 159),
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Roll a dice'),
        )
      ],
    );
  }
}
