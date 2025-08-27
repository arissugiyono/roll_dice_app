import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  //   void rollDice() {
  //   var diceRoll = Random().nextInt(6) + 1;
  //   setState(() {
  //     activeDiceImage = "assets/images/dice-$diceRoll.png";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$currentDiceRoll.png", width: 200),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.amber),
          ),
          child: Text("Lempar dadu", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
