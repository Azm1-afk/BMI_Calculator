import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'bmi_calc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ResultPage());
  }
}
