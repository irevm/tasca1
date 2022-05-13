import 'package:flutter/material.dart';
import 'package:tasca1/src/pages/home_page.dart';
import 'package:tasca1/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      home: HomePage(
      ),
    );
  }
}