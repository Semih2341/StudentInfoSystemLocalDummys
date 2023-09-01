// ignore_for_file: file_names, prefer_const_constructors

import 'package:design/Teacher/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'FirstPageDrawer.dart';

/*





*/
class MainScreen extends StatelessWidget {
  const MainScreen(
      {super.key,
      required this.name,
      required this.surname,
      required this.number,
      required this.isStudent});
  final String name;
  final String surname;
  final String number;
  final bool isStudent;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GlobalThemeColor,
      home: Scaffold(
        appBar: AppBar(),
        drawer: FirstDrawer(
          name: name,
          number: number,
          surname: surname,
        ),
        body: Center(
          child: Stack(
            children: [
              Container(
                color: Colors.blue[200],
              ),
              Center(child: Image.asset('Assets/Image_Assets/2.png'))
            ],
          ),
        ),
      ),
    );
  }
}
