// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'Menu_Items.dart';

class Akedemisyen_Sinif_Page extends StatelessWidget {
  Akedemisyen_Sinif_Page({super.key});
  final List boxcount = [
    '',
  ];
  final List<Widget> pagenames = [
    LoginWidget(),
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView.builder(
          itemCount: boxcount.length,
          itemBuilder: (context, index) {
            return MenuBoxes(
                textd: boxcount[index], pagename: pagenames[index]);
          },
        ),
      ),
    );
  }
}
