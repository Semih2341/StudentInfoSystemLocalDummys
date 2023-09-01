// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class OgrenciDers extends StatelessWidget {
  const OgrenciDers({super.key, required this.DersKodu});
  final String DersKodu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Padding(
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
                    child: Text(
                      DersKodu,
                    ),
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
