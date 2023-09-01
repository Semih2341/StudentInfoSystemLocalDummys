// ignore_for_file: prefer_const_constructors, file_names, avoid_print

import 'package:design/Teacher/LoginScreen.dart';
import 'package:design/Teacher/MainScreen.dart';
import 'package:flutter/material.dart';
import 'AkedemisyenSınııfList.dart';
import 'package:design/theme/dark_theme.dart';
import 'package:design/theme/light_theme.dart';

class FirstDrawer extends StatelessWidget {
  const FirstDrawer({
    super.key,
    required this.name,
    required this.surname,
    required this.number,
  });
  void _handleSinifTap(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => AkedemisyenSinifList()));
    // Burada "onTap" olayına bağlı olarak yapmak istediğiniz işlemleri gerçekleştirebilirsiniz.
  }

  void _handleLogOut(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginWidget()));
  }

  void _themeHandler(BuildContext context) {
    GlobalTheme = !GlobalTheme;
    if (GlobalTheme) {
      GlobalThemeColor = darkTheme;
    } else {
      GlobalThemeColor = lightTheme;
    }

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MainScreen(
                name: GlobalName,
                surname: GlobalSurname,
                number: GlobalNumber,
                isStudent: GlobalIsStudent)));
  }

  final String name;
  final String surname;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: GlobalThemeColor.drawerTheme.backgroundColor,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 100,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(name),
          ),
          ListTile(
            title: Text(surname),
          ),
          ListTile(
            title: Text(number),
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('Home'),
            onTap: () =>
                Navigator.pop(context), // Bu, çekmecenin kapatılmasını sağlar
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('Sınıflar'),
            onTap: () => _handleSinifTap(context), // MainScreen'e geçiş yapar
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Çıkış Yap'),
            onTap: () => _handleLogOut(context),
          ),
          ListTile(
              title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text(
                  ('Light Mode'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Switch(
                  value: GlobalTheme,
                  onChanged: (value) => _themeHandler(context),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text('Dark Mode'),
              )
            ],
          ))
        ],
      ),
    );
  }
}
