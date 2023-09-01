// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:design/Student/Stdnt_Self_Grades.dart';
import 'package:design/Teacher/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'Ogrenci_Liste.dart';
import 'Student_LessonPage.dart';

// ignore: must_be_immutable
class Sinif_Info extends StatelessWidget {
  Sinif_Info({super.key, required this.dersID});
  final int dersID;

  late Widget currentstudent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalThemeColor.appBarTheme.backgroundColor,
      ),
      body: Container(
        color: GlobalThemeColor.backgroundColor,
        child: Expanded(
          child: ListView(
            children: [
              Column(
                children: [],
              ), // Üst Kısım
              Column(
                children: [
                  for (int index = 0; ////////////////Burası
                      index < StudentsGrades[dersID]!.lessonGrades.length;
                      index++)
                    //2tane var
                    Ogrenci_list(
                        OgrenciNo: StudentsGrades[dersID]!
                            .lessonGrades[index]!
                            .studentName,
                        OgrenciPage:
                            Studentlessonpage(ogrenciid: index, DersId: dersID))

                  //Ogrenci_list(OgrenciNo: OgrenciSinif[index],OgrenciPage: ,),
                ],
              ), // Alt Kısım
            ],
          ),
        ),
      ),
    );
  }
}
