// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:design/Student/Stdnt_Self_Grades.dart';
import 'package:flutter/material.dart';

class Studentlessonboxes extends StatelessWidget {
  Studentlessonboxes({Key? key, required this.DersId, required this.OgrenciId})
      : super(key: key);
  final int DersId;
  final int OgrenciId;
  final _newvizegrade = TextEditingController();
  final _newfinalgrade = TextEditingController();
  final _newlabgrade = TextEditingController();
  void SaveNewGrade() {
    print('içer');
    if (_newfinalgrade.text !=
            StudentsGrades[DersId]!.lessonGrades[OgrenciId]!.finalGrade &&
        0 <= int.tryParse(_newfinalgrade.text)! &&
        int.tryParse(_newfinalgrade.text)! <= 100) {
      StudentsGrades[DersId]!.lessonGrades[OgrenciId]!.finalGrade =
          _newfinalgrade.text;
      _newfinalgrade.text =
          StudentsGrades[DersId]!.lessonGrades[OgrenciId]!.finalGrade;
      print('teoridesave');
    } else {
      print('geçersiz not');
    }
    if (_newvizegrade.text !=
            StudentsGrades[DersId]!.lessonGrades[OgrenciId]!.vizeGrade &&
        0 <= int.tryParse(_newvizegrade.text)! &&
        int.tryParse(_newvizegrade.text)! <= 100) {
      StudentsGrades[DersId]!.lessonGrades[OgrenciId]!.vizeGrade =
          _newvizegrade.text;
      _newvizegrade.text =
          StudentsGrades[DersId]!.lessonGrades[OgrenciId]!.vizeGrade;
      print('teoridesave');
    } else {
      print('geçersiz not');
    }
    if (_newlabgrade.text !=
            StudentsGrades[DersId]!.lessonGrades[OgrenciId]!.labGrade &&
        0 <= int.tryParse(_newlabgrade.text)! &&
        int.tryParse(_newlabgrade.text)! <= 100) {
      StudentsGrades[DersId]!.lessonGrades[OgrenciId]!.labGrade =
          _newlabgrade.text;
      _newlabgrade.text =
          StudentsGrades[DersId]!.lessonGrades[OgrenciId]!.labGrade;
      print('teoridesave');
    } else {
      print('geçersiz not');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              //İSİM SOY İSİM KISMI
              padding: const EdgeInsets.all(8.0),
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
                          StudentsGrades[DersId]!
                                  .lessonGrades[OgrenciId]!
                                  .studentName +
                              ' ',
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
                                      child: TextField(
                                        controller: _newvizegrade,
                                        textAlign: TextAlign.end,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal:
                                                  20), // Çerçeve içeriğinin etrafına yatay boşluk ekler
                                          hintText: StudentsGrades[DersId]!
                                              .lessonGrades[OgrenciId]!
                                              .vizeGrade, //students[OgrenciID]!.vize,
                                          hintStyle: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold),
                                          suffixText: 'Yeni Not',
                                          alignLabelWithHint:
                                              true, // hintText'i çerçeve içinde tutar
                                          border: OutlineInputBorder(
                                            // Çerçeve oluşturur
                                            borderSide: BorderSide(
                                                width:
                                                    1), // Çerçeve kenar çizgisinin kalınlığı
                                            borderRadius: BorderRadius.circular(
                                                10), // Çerçeve kenarlarını yuvarlatır
                                          ),
                                        ),
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
                                      child: TextField(
                                        controller: _newfinalgrade,
                                        textAlign: TextAlign.end,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal:
                                                  20), // Çerçeve içeriğinin etrafına yatay boşluk ekler
                                          hintText: StudentsGrades[DersId]!
                                              .lessonGrades[OgrenciId]!
                                              .finalGrade,
                                          hintStyle: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold),
                                          suffixText: 'Yeni Not',
                                          alignLabelWithHint:
                                              true, // hintText'i çerçeve içinde tutar
                                          border: OutlineInputBorder(
                                            // Çerçeve oluşturur
                                            borderSide: BorderSide(
                                                width:
                                                    1), // Çerçeve kenar çizgisinin kalınlığı
                                            borderRadius: BorderRadius.circular(
                                                10), // Çerçeve kenarlarını yuvarlatır
                                          ),
                                        ),
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
                                      child: TextField(
                                        controller: _newlabgrade,
                                        textAlign: TextAlign.end,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal:
                                                  20), // Çerçeve içeriğinin etrafına yatay boşluk ekler
                                          hintText: StudentsGrades[DersId]!
                                              .lessonGrades[OgrenciId]!
                                              .labGrade,
                                          hintStyle: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold),
                                          suffixText: 'Yeni Not',
                                          alignLabelWithHint:
                                              true, // hintText'i çerçeve içinde tutar
                                          border: OutlineInputBorder(
                                            // Çerçeve oluşturur
                                            borderSide: BorderSide(
                                                width:
                                                    1), // Çerçeve kenar çizgisinin kalınlığı
                                            borderRadius: BorderRadius.circular(
                                                10), // Çerçeve kenarlarını yuvarlatır
                                          ),
                                        ),
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
              padding: const EdgeInsets.all(2),
              child: IconButton(
                icon: Icon(Icons.save),
                iconSize: 100,
                color: Colors.yellow,
                onPressed: () {
                  SaveNewGrade();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
