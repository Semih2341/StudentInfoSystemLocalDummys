// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MenuBoxes extends StatelessWidget {
  final String textd;
  final Widget pagename;

  const MenuBoxes({Key? key, required this.textd, required this.pagename})
      : super(key: key);

  void _boxMenuHandler(BuildContext context, page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
    // Burada "onTap" olayına bağlı olarak yapmak istediğiniz işlemleri gerçekleştirebilirsiniz.
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 100,
          color: Theme.of(context).colorScheme.secondary,
          child: Center(
            child: MaterialButton(
              onPressed: () {
                _boxMenuHandler(context, pagename);
              },
              child: Text(textd), // Butonun üzerinde metni göstermek için
            ),
          ),
        ),
      ),
    );
  }
}
