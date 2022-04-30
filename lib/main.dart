import 'package:flutter/material.dart';
import 'package:henry_portfolio_card/view/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Henry Le | Apps',
      theme: ThemeData(
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
      ),
      home: HomePage(),
    );
  }
}
