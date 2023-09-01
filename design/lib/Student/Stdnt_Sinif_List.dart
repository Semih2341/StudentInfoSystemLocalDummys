// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:design/Student/Stdnt_Self_Grades.dart';
import 'package:design/Teacher/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'Stdnt_Menu_Items.dart';

class TeacherInf {
  final List<int> lessonNames;

  TeacherInf({required this.lessonNames});
}

class StdntSinifList extends StatelessWidget {
  StdntSinifList({super.key});

  final Map<int, TeacherInf> StudentsLessons = {
    0: TeacherInf(
      lessonNames: [
        0,
        1,
        2,
      ],
    ),
    1: TeacherInf(
      lessonNames: [
        3,
      ],
    )
    // Diğer öğretmenler burada eklenebilir.
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stdntsnflts'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: StudentsLessons[GlobalStudentID]!.lessonNames.length,
          itemBuilder: (context, index) {
            return MenuBoxes(
                textd: StudentsGrades[
                        StudentsLessons[GlobalStudentID]!.lessonNames[index]]!
                    .DersAdi,
                pagename: StdntGrades(
                  DersID: StudentsLessons[GlobalStudentID]!.lessonNames[index],
                ));
          },
        ),
      ),
    );
  }
}
