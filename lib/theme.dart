import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.lightBlue,
    scaffoldBackgroundColor: Colors.grey.shade100,
    colorScheme: ColorScheme.light(
      primary: Colors.lightBlue,
      secondary: Colors.lightBlue.shade100,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.lightBlue,
    colorScheme: ColorScheme.dark(
      primary: Colors.lightBlue.shade800,
      secondary: Colors.lightBlue.shade600,
    ),
  );
}
