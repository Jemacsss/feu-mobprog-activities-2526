import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;
  final AudioPlayer _audioPlayer = AudioPlayer();

  void rollDice() async{
     setState(() {
       currentDice = Random().nextInt(6) + 1;
     });

     await _audioPlayer.play(AssetSource('sounds/dice_roll.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assests/img/dice$currentDice.png', 
              width: 250
              ),
              const SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 32,
                )
              ),
              onPressed: rollDice, 
              child: const Text('Roll the Dice')),
          ],
        );
  }
}