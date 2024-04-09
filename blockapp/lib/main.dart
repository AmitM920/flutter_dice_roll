import 'package:flutter/material.dart';
import 'package:blockapp/gradian_container.dart';

void main() {
  runApp(
    //all green color text are widgets and blue are arguements//
    const MaterialApp(
      home: Scaffold(
        body: GradianContainer(
          [],
          colors: [
            Color(0xff1f005c),
            Color(0xff5b0060),
            Color(0xff870160),
            Color(0xffac255e),
            Color(0xffca485c),
            Color(0xffe16b5c),
            Color.fromARGB(255, 239, 149, 104),
            Color(0xffffb56b),
          ],
        ),
      ),
    ),
  );
}
