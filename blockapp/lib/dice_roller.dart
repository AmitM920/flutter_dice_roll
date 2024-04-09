import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState(); //executing the constuctor fun of dicerollerstate
  }
} //this underscore means its a private class which cant be used if imported

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rolldice() {
    /*constructor function*/ var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    }); //passing anonymous function as a arg for setState function
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 100),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            child: const Text('Roll Dice'))
        //for onpressed a function is passed as a value , where we can pass () {}
        //its a anonymous function for which we can write code in between {}
        //so when the button is pressed those code of lines executed
        //but here we created a void function and pass it here , Rolldice
      ],
    );
  }
}
