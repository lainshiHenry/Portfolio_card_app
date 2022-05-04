import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF232323),
  iconTheme: const IconThemeData(
    color: Color(0xFF6c6e71),
  ),
  hoverColor: Colors.black,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
    ),
  ),
);
