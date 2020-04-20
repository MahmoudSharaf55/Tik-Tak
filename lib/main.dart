import 'package:flutter/material.dart';
import 'package:tiktak/constants.dart';
import 'package:tiktak/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tik Tak',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        splashColor: kPrimaryColor,
        buttonColor: kPrimaryColor,
      ),
      home: HomeScreen(),
    );
  }
}