// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class InfoBoxes extends StatelessWidget {
  InfoBoxes({
    Key? key,
    required this.textd,
    required this.fieldName,
    required this.page,
  }) : super(key: key);

  final String textd;
  final String fieldName;
  final Widget page;
  final _not1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 100,
          color: Color.fromARGB(255, 181, 173, 173),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        textd,
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextField(
                          controller: _not1,
                          decoration: InputDecoration(
                            hintText: 'Şifre',
                            border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: () {
                                // silme gelecek;
                                _not1.clear();
                              },
                              icon: Icon(Icons.clear),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
