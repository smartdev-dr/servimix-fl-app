import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.green,
  Color(0xFFFF6307),
  Color.fromARGB(255, 0, 0, 0),
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.amber,
  Colors.deepPurple,
  Colors.indigo,
  Colors.lightBlue,
  Colors.lime,
  Colors.cyan,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'el color seleccionado no es valido');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
      );
}
