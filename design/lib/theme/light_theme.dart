// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: Color.fromARGB(255, 22, 130, 239),
        primary: Color.fromARGB(255, 28, 138, 207),
        secondary: Color.fromARGB(255, 64, 118, 139), //appbar
        onSecondary: Color.fromARGB(255, 64, 118, 139)),
    drawerTheme:
        DrawerThemeData(backgroundColor: Color.fromARGB(255, 150, 145, 214)));
