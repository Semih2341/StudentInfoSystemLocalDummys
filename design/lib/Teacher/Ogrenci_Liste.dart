// ignore_for_file: camel_case_types, file_names, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Ogrenci_list extends StatelessWidget {
  Ogrenci_list({super.key, required this.OgrenciNo, required this.OgrenciPage});
  final String OgrenciNo;
  final Widget OgrenciPage;

  void _handleOgrenciNavigator(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OgrenciPage));
    // Burada "onTap" olayına bağlı olarak yapmak istediğiniz işlemleri gerçekleştirebilirsiniz.
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 100,
            color: Color.fromARGB(255, 181, 173, 173),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: MaterialButton(
                    onPressed: () {
                      _handleOgrenciNavigator(context);
                    },
                    child: (Text(
                      OgrenciNo,
                      style: TextStyle(fontSize: 40),
                    )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
