// ignore_for_file: file_names, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, prefer_const_constructors, unrelated_type_equality_checks, avoid_print

import 'package:design/theme/dark_theme.dart';
import 'package:design/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'MainScreen.dart';
import 'ToggleButton.dart';
import 'package:design/Student/Student_Main_Screen.dart';
import 'package:url_launcher/url_launcher.dart';

bool GlobalTheme = true;
ThemeData GlobalThemeColor = darkTheme;
String GlobalName = '';
String GlobalSurname = '';
String GlobalNumber = '';
bool GlobalIsStudent = false;
int GlobalStudentID = 0;
int GlobalTeacherID = 0;

class StudentInf {
  final String username;
  final String password;
  final String name;
  final String surname;
  final String Number;
  final int studentID;
  StudentInf(
      {required this.username,
      required this.password,
      required this.name,
      required this.surname,
      required this.Number,
      required this.studentID});
}

class TeacherInf {
  final String username;
  final String password;
  final String name;
  final String surname;
  final String Number;
  final int teacherID;
  TeacherInf(
      {required this.username,
      required this.password,
      required this.name,
      required this.surname,
      required this.Number,
      required this.teacherID});
}

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool isDarkMode = true;

  void _handleTheme() {
    print('drawer_HandleİçineGirdi');
    setState(() {
      isDarkMode = !isDarkMode;
      if (isDarkMode) {
        GlobalThemeColor = darkTheme;
      } else {
        GlobalThemeColor = lightTheme;
      }
    });
  }

  StudentInf? findUser(String StudentUser) {
    return StudentUsers[StudentUser];
  }

  TeacherInf? findTeacher(String TeacherUser) {
    return TeacherUsers[TeacherUser];
  }

  final Map<String, TeacherInf> TeacherUsers = {
    'osman': TeacherInf(
      username: 'osman',
      password: '123',
      name: 'Osman',
      surname: 'Çetin',
      Number: '190124121',
      teacherID: 0,
    ),
    'kemal': TeacherInf(
      username: 'kemal',
      password: '123',
      name: 'Kemal',
      surname: 'Türk',
      Number: '149101242',
      teacherID: 1,
    ),
  };
  final Map<String, StudentInf> StudentUsers = {
    'semih': StudentInf(
      username: 'semih',
      password: '123',
      name: 'Semih',
      surname: 'Çetin',
      Number: '190234122',
      studentID: 0,
    ),
    'ahmet': StudentInf(
      username: 'ahmet',
      password: '123',
      name: 'Mustafa',
      surname: 'Mahmud',
      Number: '149101242',
      studentID: 1,
    ),
  };
  final _username = TextEditingController();
  final _password = TextEditingController();

  void _handleStudentNav(
      BuildContext context, username, surname, number, isStudent, studentID) {
    GlobalName = username;
    GlobalSurname = surname;
    GlobalNumber = number;
    GlobalIsStudent = isStudent;
    GlobalStudentID = studentID;
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => StudentMain(
                  name: username,
                  number: number,
                  surname: surname,
                  isStudent: isStudent,
                  studentID: GlobalStudentID,
                )));
  }

  void _handleTeacherNav(
      BuildContext context, username, surname, number, isStudent, teacherID) {
    GlobalName = username;
    GlobalSurname = surname;
    GlobalNumber = number;
    GlobalIsStudent = isStudent;
    GlobalTeacherID = teacherID;
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MainScreen(
                  name: username,
                  number: number,
                  surname: surname,
                  isStudent: isStudent,
                )));
    // Burada "onTap" olayına bağlı olarak yapmak istediğiniz işlemleri gerçekleştirebilirsiniz.
  }

  @override
  Widget build(BuildContext context) {
    print('öağrıldı');

    return MaterialApp(
      theme: GlobalThemeColor,
      home: Scaffold(
        //backgroundColor: GlobalThemeColor.colorScheme.primary,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 0, top: 10, right: 10, bottom: 10),
                  child: ButtonToggle(),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 0, top: 10, right: 10, bottom: 10),
                  child: Stack(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          ('Light Theme'),
                        ),
                        Switch(
                          value: isDarkMode,
                          onChanged: (value) => _handleTheme(),
                        ),
                        Text('Dark Theme')
                      ],
                    )
                  ]),
                ),
                TextField(
                  controller: _username,
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).colorScheme.primary,
                    hintText: 'Kullancı E-Posta',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        //silme gelcek;
                        _username.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: _password,
                    decoration: InputDecoration(
                      hintText: 'Şifre',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          //silme gelcek;
                          _password.clear();
                        },
                        icon: Icon(Icons.clear),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0, top: 10, right: 10, bottom: 10),
                      child: Container(
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.5)),
                        child: Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              print('User Type is $GlobalStudent');
                              if (!GlobalStudent) {
                                final username = findTeacher(_username.text);
                                if (username?.username !=
                                    findTeacher(_username.text)) {
                                  if (username?.password == _password.text) {
                                    print('Öğretmen giriş kesinleşti');
                                    _handleTeacherNav(
                                        context,
                                        username?.name,
                                        username?.surname,
                                        username?.Number,
                                        GlobalStudent,
                                        username?.teacherID);
                                  } else {
                                    print('şifre yanlış');
                                    _wrongPassWordAlert(context);
                                  }
                                  print('Kullanıcı Bulundu');
                                  /////burası
                                } else {
                                  print('Kullanıcı Bulunamadı');
                                  _wrongUserAlert(context);
                                }
                              }
                              if (GlobalStudent) {
                                final username = findUser(_username.text);
                                if (username?.username != null) {
                                  if (username?.password == _password.text) {
                                    print('Öğrenci giriş kesinleşti');
                                    _handleStudentNav(
                                        context,
                                        username?.name,
                                        username?.surname,
                                        username?.Number,
                                        GlobalStudent,
                                        username?.studentID);
                                  } else {
                                    print('şifre yanlış');
                                    _wrongPassWordAlert(context);
                                  }
                                  print('Kullanıcı Bulundu');
                                  /////burası
                                } else {
                                  print('Kullanıcı Bulunamadı');
                                  _wrongUserAlert(context);
                                }

                                //_handleHomeTap(context);

                                //Giriş Butonu
                              }
                            },
                            child: Text('Giriş Yap'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0, top: 10, right: 10, bottom: 10),
                      child: Container(
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.5)),
                        child: Expanded(
                          child: MaterialButton(
                            onPressed: () async {
                              //Şifremi Unuttum
                              const url =
                                  'https://www.youtube.com/watch?v=xvFZjo5PgG0';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Aktarılamadı $url';
                              }
                            },
                            child: Text('Şifremi Unuttum'),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}

void _wrongPassWordAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: GlobalThemeColor.drawerTheme.backgroundColor,
        title: Center(child: Text('Hatalı Şifre')),
        content: Text('Lüten Şifrenizi Kontrol Edip Yeniden Deneyin.'),
        icon: Icon(
          Icons.warning_amber_outlined,
          size: 100,
        ),
        iconColor: Colors.red,
      );
    },
  );
}
