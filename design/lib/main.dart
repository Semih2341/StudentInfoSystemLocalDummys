// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Teacher/LoginScreen.dart';

void main() {
  runApp(Main());
}

// ignore: use_key_in_widget_constructors
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: GlobalThemeColor,
      home: LoginWidget(),
    );
  }
}
