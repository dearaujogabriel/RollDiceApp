import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var curretDiceRoll = 1;

  void rollDice() {
    setState(() {
      curretDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$curretDiceRoll.png',
          width: 250,
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          '$curretDiceRoll',
          style: const TextStyle(
            color: Colors.green,
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            'Jogar o dado',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
            ),
          ),
        ),
      ],
    );
  }
}
