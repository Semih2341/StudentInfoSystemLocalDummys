// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_final_fields, file_names, non_constant_identifier_names, avoid_print, prefer_const_constructors_in_immutables

import 'package:design/Teacher/LoginScreen.dart';
import 'package:flutter/material.dart';

bool GlobalStudent = false;
bool GlobalTheme = false;

class ButtonToggle extends StatefulWidget {
  const ButtonToggle({super.key});

  @override
  State<ButtonToggle> createState() => _ButtonToggleState();
  GetStudentData(Selected) {
    if (Selected.runtimeType == bool) {
      GlobalStudent = Selected;
    }
  }

  getThemeData(SelectedTheme) {
    if (SelectedTheme.runtimeType == bool) {
      GlobalTheme = SelectedTheme;
    }
  }
}

class _ButtonToggleState extends State<ButtonToggle> {
  List<bool> isSelectedUser = [
    true,
    false,
  ];
  bool get isSelectedUserStudent => isSelectedUser[0];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
          splashColor: GlobalThemeColor.colorScheme.secondary,
          selectedColor: GlobalThemeColor.colorScheme.secondary,
          fillColor: Colors.grey,
          children: [Icon(Icons.person), Icon(Icons.person_2)],
          onPressed: (index) {
            setState(() {
              isSelectedUser[0] = isSelectedUser[1];
              isSelectedUser[1] = !isSelectedUser[0];
              print(isSelectedUserStudent);
            });
            ButtonToggle().GetStudentData(isSelectedUserStudent);
          },
          isSelected: isSelectedUser),
    );
  }
}
