import 'package:flutter/material.dart';

class MeuTema {
  static final ThemeData tema = ThemeData(
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      // ignore: deprecated_member_use
      headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      // ignore: deprecated_member_use
      bodyText2: TextStyle(fontSize: 16),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
        .copyWith(secondary: Colors.green),
  );
}
