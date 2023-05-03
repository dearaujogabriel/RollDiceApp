import 'package:flutter/material.dart';
import 'gradiente_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        colors: [
          Colors.purple,
          Colors.red,
          Colors.pink,
        ],
      ),
    ),
  ));
}
