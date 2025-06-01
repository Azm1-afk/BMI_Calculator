import 'package:bmi_calculator/widgets/age_card.dart';
import 'package:bmi_calculator/widgets/height_card.dart';
import 'package:bmi_calculator/widgets/weight_card.dart';
import 'package:flutter/material.dart';
import 'widgets/malecard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e1c),

      appBar: AppBar(
        backgroundColor: Color(0xff071c34),
        title: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),

      body: AgeCard(),
    );
  }
}
