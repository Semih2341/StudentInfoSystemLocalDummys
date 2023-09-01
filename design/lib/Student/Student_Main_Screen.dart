// ignore_for_file: file_names, prefer_const_constructors

import 'package:design/Teacher/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'Stdnt_Drawer.dart';

/*





*/
class StudentMain extends StatelessWidget {
  const StudentMain(
      {super.key,
      required this.name,
      required this.surname,
      required this.number,
      required this.isStudent,
      required this.studentID});
  final String name;
  final String surname;
  final String number;
  final bool isStudent;
  final int studentID;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GlobalThemeColor,
      home: Scaffold(
        appBar: AppBar(),
        drawer: Stnd_Drawer(
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
