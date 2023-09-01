// ignore_for_file: file_names

import 'Student_Lesson_Boxes.dart';
import 'package:flutter/material.dart';

class StudentGradeClass {
  dynamic name;
  dynamic surname;
  dynamic labGrade;
  dynamic vize;
  dynamic finals;
  StudentGradeClass(
      {required this.name,
      required this.surname,
      required this.vize,
      required this.finals,
      required this.labGrade});
}

class Studentlessonpage extends StatelessWidget {
  Studentlessonpage({super.key, required this.ogrenciid, required this.DersId});
  final int ogrenciid;
  final int DersId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Studentlessonboxes(
                OgrenciId: ogrenciid,
                DersId: DersId,
              );
            },
          ),
        ));
  }
}
