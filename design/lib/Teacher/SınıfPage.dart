// ignore_for_file: file_names, sort_child_properties_last, prefer_const_constructors, non_constant_identifier_names, unrelated_type_equality_checks, must_be_immutable

import 'package:design/Teacher/LoginScreen.dart';
import 'package:design/Teacher/Menu_Items.dart';
import 'package:flutter/material.dart';

import 'AkedemisyenSınııfList.dart';

class SinifNavigatePage extends StatelessWidget {
  SinifNavigatePage(
      {super.key,
      required this.pageName,
      required this.pageToNavigate,
      required this.passGradeindex,
      required this.passGrade});
  final String pageName;
  final Widget pageToNavigate;
  final int passGradeindex;
  dynamic passGrade;
  final _gecmeNotu = TextEditingController();
  void SaveNewGrade() {
    print('içer');
    if (int.tryParse(_gecmeNotu.text.trim())! !=
            teachersLessons[GlobalTeacherID]!.gecmeNotu[passGradeindex] &&
        0 <= int.tryParse(_gecmeNotu.text.trim())! &&
        int.tryParse(_gecmeNotu.text.trim())! <= 100) {
      teachersLessons[GlobalTeacherID]!.gecmeNotu[passGradeindex] =
          int.tryParse(_gecmeNotu.text.trim())!;
      passGrade = int.tryParse(_gecmeNotu.text.trim())!;
      _gecmeNotu.clear();
      print('teoridesave');
    } else {
      print('geçersiz not');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                child: Center(
                  child: FittedBox(
                    child: Text(
                      pageName,
                      style: TextStyle(fontSize: 60),
                    ),
                  ),
                ),
                height: 100,
                color: const Color.fromARGB(255, 181, 173, 173),
              ),
            ),
          ),
          Stack(
            children: [
              MenuBoxes(textd: 'Ögrenciler', pagename: pageToNavigate),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                child: Center(
                  child: TextField(
                    controller: _gecmeNotu,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      // Çerçeve içeriğinin etrafına yatay boşluk ekler
                      labelText: 'GeçmeNotu: $passGrade',
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),

                      suffixText: 'Yeni Not',
                      alignLabelWithHint:
                          true, // hintText'i çerçeve içinde tutar
                      border: OutlineInputBorder(
                        // Çerçeve oluşturur
                        borderSide: BorderSide(
                            width: 1), // Çerçeve kenar çizgisinin kalınlığı
                        borderRadius: BorderRadius.circular(
                            10), // Çerçeve kenarlarını yuvarlatır
                      ),
                    ),
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                height: 100,
                color: const Color.fromARGB(255, 181, 173, 173),
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
    );
  }
}
