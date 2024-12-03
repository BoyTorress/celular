import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black87), // Reemplazamos bodyText1
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent, // Cambiamos primary a backgroundColor
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.blue,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: Colors.white70), // Reemplazamos bodyText1
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurpleAccent, // Cambiamos primary a backgroundColor
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.deepPurple,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}
