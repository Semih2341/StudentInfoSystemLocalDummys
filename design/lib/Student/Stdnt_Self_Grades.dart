// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:design/Teacher/LoginScreen.dart';
import 'package:flutter/material.dart';

class LessonGrade {
  dynamic studentName;
  dynamic vizeGrade;
  dynamic finalGrade;
  dynamic labGrade;

  LessonGrade(
      {required this.studentName,
      required this.vizeGrade,
      required this.finalGrade,
      required this.labGrade});
}

class LessonStudentGrade {
  final Map<int, LessonGrade> lessonGrades;
  final String DersAdi;

  LessonStudentGrade({required this.lessonGrades, required this.DersAdi});
}

final Map<int, LessonStudentGrade> StudentsGrades = {
  0: LessonStudentGrade(
    DersAdi: 'Matematik',
    lessonGrades: {
      0: LessonGrade(
          studentName: 'semih',
          vizeGrade: '31',
          finalGrade: '11',
          labGrade: '100'),
      1: LessonGrade(
          studentName: 'mahmud',
          vizeGrade: '12',
          finalGrade: '66',
          labGrade: '91'),
    },
  ),
  1: LessonStudentGrade(
    DersAdi: 'fizik',
    lessonGrades: {
      0: LessonGrade(
          studentName: 'Semih',
          vizeGrade: '31',
          finalGrade: '41',
          labGrade: '0'),
      1: LessonGrade(
          studentName: 'deneme2',
          vizeGrade: '49',
          finalGrade: '42',
          labGrade: '17'),
    },
  ),
  2: LessonStudentGrade(
    DersAdi: 'türkçe',
    lessonGrades: {
      0: LessonGrade(
          studentName: 'Semih',
          vizeGrade: '31',
          finalGrade: '41',
          labGrade: '0'),
      1: LessonGrade(
          studentName: 'ahmet',
          vizeGrade: '49',
          finalGrade: '42',
          labGrade: '17'),
    },
  ),
  3: LessonStudentGrade(
    DersAdi: 'ComputerScience',
    lessonGrades: {
      0: LessonGrade(
          studentName: 'Semih',
          vizeGrade: '31',
          finalGrade: '41',
          labGrade: '0'),
      1: LessonGrade(
          studentName: 'deneme222',
          vizeGrade: '49',
          finalGrade: '42',
          labGrade: '17'),
    },
  ),
};

class StdntGrades extends StatelessWidget {
  StdntGrades({super.key, required this.DersID});
  final int DersID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                //İSİM SOY İSİM KISMI
                padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Expanded(
                    child: Container(
                      height: 100,
                      color: Color.fromARGB(255, 181, 173, 173),
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            StudentsGrades[DersID]!.DersAdi + ' ',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                //VİZE NOTU
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 100,
                    color: Color.fromARGB(255, 181, 173, 173),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Vize',
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          StudentsGrades[DersID]!
                                              .lessonGrades[GlobalStudentID]!
                                              .vizeGrade,
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                //FİNAL NOTU
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 100,
                    color: Color.fromARGB(255, 181, 173, 173),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Final',
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          StudentsGrades[DersID]!
                                              .lessonGrades[GlobalStudentID]!
                                              .finalGrade,
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                //LAB NOTU
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 100,
                    color: Color.fromARGB(255, 181, 173, 173),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lab',
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          StudentsGrades[DersID]!
                                              .lessonGrades[GlobalStudentID]!
                                              .labGrade,
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
