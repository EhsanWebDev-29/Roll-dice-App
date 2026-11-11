
import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';
import 'package:roll_dice_app/styled_text.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2B0A0F),
          title: Center(
            child: StyledText(
              text: 'Dice Roller',
              textColor: Colors.white,
              fontSize: 30,
              fontWeight: 800,
            ),
          ),
        ),
        body: GradientContainer(
          colors: [
            Color(0xFF7F1D1D),
            Color(0xFFDC2626),
          ],
          startAlignment: Alignment.topLeft,
          endAlignment: Alignment.bottomRight,
          
        ),
        
      ),
    ),
  );
}
