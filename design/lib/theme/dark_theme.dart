// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
      background: Color.fromARGB(255, 18, 36, 53),
      primary: Color.fromARGB(255, 168, 41, 41), //Seçilenler
      secondary: Color.fromARGB(255, 67, 107, 240),
      primaryVariant: Color.fromARGB(255, 13, 7, 72), //switch gibiler,
      onSecondary: const Color.fromARGB(255, 40, 40, 40)),
);
//255, 54, 42, 42