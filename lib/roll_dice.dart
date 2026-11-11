import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

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
  var currentImage = 2;

  void changeImage() {
    setState(() {
      currentImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentImage.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: changeImage,
          child: StyledText(
            text: 'Roll Dice',
            textColor: Colors.white,
            fontSize: 25,
            fontWeight: (600),
          ),
        ),
      ],
    );
  }
}
