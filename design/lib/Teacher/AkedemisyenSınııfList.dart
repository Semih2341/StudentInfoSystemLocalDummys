// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:design/Student/Stdnt_Self_Grades.dart';
import 'package:design/Teacher/S%C4%B1n%C4%B1fPage.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'Menu_Items.dart';
import 'Sinif_Info_Page.dart';

final Map<int, TeacherInf> teachersLessons = {
  0: TeacherInf(
    lessonNames: [
      0,
      1,
      2,
    ],
    gecmeNotu: [
      50,
      63,
      40,
    ],
  ),
  1: TeacherInf(
    lessonNames: [
      3,
    ],
    gecmeNotu: [
      47,
    ],
  )
  // Diğer öğretmenler burada eklenebilir.
};

class TeacherInf {
  final List<int> lessonNames;
  final List<int> gecmeNotu;
  TeacherInf({required this.lessonNames, required this.gecmeNotu});
}

class TeacherInfPages {
  final List<int> lessonNames;

  TeacherInfPages({required this.lessonNames});
}

class AkedemisyenSinifList extends StatelessWidget {
  AkedemisyenSinifList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AkedemisyenSınıfList'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: teachersLessons[GlobalTeacherID]!.lessonNames.length,
          itemBuilder: (context, index) {
            return MenuBoxes(
              textd: StudentsGrades[
                      teachersLessons[GlobalTeacherID]!.lessonNames[index]]!
                  .DersAdi,
              pagename: SinifNavigatePage(
                pageName: StudentsGrades[
                        teachersLessons[GlobalTeacherID]!.lessonNames[index]]!
                    .DersAdi,
                pageToNavigate: Sinif_Info(
                  dersID: teachersLessons[GlobalTeacherID]!.lessonNames[index],
                ),
                passGradeindex: index,
                passGrade: teachersLessons[GlobalTeacherID]!.gecmeNotu[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
