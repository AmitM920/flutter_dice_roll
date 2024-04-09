import 'package:blockapp/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft; //variable type alignment
const endAlignment = Alignment.bottomCenter; //variable type alignment

/* class GradianContainer extends StatelessWidget {
  /*a custom widget is added with 
  a class statelessWiget and a function called build which again return a 
  Widget*/
  const GradianContainer(this.color1, this.color2, {super.key});
  //here we adding const for out own custom widget class to make it optimizable
  /*and a key is forwarded to statelessWidget class*/
  /* named aregument are optional*/
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: Styledtext('hello world!')),
    );
  }
} */

class GradianContainer extends StatelessWidget {
  /*a custom widget is added with 
  a class statelessWiget and a function called build which again return a 
  Widget*/
  const GradianContainer(List<Color> list, {super.key, required this.colors});
  //here we adding const for out own custom widget class to make it optimizable
  /*and a key is forwarded to statelessWidget class*/
  /* named aregument are optional*/
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
        /*child: const Center(child: Styledtext('hello world!')),*/
      ),
    );
  }
}
/*   Color(0xff1f005c),
            Color(0xff5b0060),
            Color(0xff870160),
            Color(0xffac255e),
            Color(0xffca485c),
            Color(0xffe16b5c),
            Color(0xfff39060),
            Color(0xffffb56b),*/
