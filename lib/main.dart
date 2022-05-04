import 'package:flutter/material.dart';
import 'package:henry_portfolio_card/model/my_profile_data.dart';
import 'package:henry_portfolio_card/model/theme_data.dart';
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
      theme: lightThemeData,
      home: HomePage(
        profileData: profileData,
      ),
    );
  }
}
