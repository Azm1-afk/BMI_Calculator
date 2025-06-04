import 'dart:math';
import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/widgets/age_card.dart';
import 'package:bmi_calculator/widgets/femalecard.dart';
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
  double height = 100; // this value is showing when calling print(height)✅
  int weight = 40; // we need to pass this value into the weight card widget ✅
  int age = 20; // we need to pass this value into the age card widget ✅

  void updateHeight(double newHeight) {
    setState(() {
      height = newHeight;
    });
  }

  void incrementWeight() {
    setState(() {
      weight++;
    });
  }

  void decrementWeight() {
    if (weight < 10) {
      return;
    } else {
      setState(() {
        weight--;
      });
    }
  }

  void incrementAge() {
    if (age > 120) {
      return;
    } else {
      setState(() {
        age++;
      });
    }
  }

  void decrementAge() {
    if (age < 1) {
      return;
    } else {
      setState(() {
        age--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e1c),

      appBar: AppBar(
        backgroundColor: Color(0xff071c34),
        title: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [MaleCard(), FemaleCard()],
            ),
          ),

          HeightCard(onHeightChanged: updateHeight),

          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WeightCard(
                  onIncrement: incrementWeight,
                  onDecrement: decrementWeight,
                  weight: weight,
                ),

                AgeCard(
                  onIncrement: incrementAge,
                  onDecrement: decrementAge,
                  age: age,
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          FilledButton(
            onPressed: () {
              num requiredHeight = pow(height / 100, 2);
              num requiredBMI = weight / requiredHeight;
              // print("Your BMI is $bmi");

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultPage(bmi: requiredBMI)),
              );
            },
            style: FilledButton.styleFrom(
              backgroundColor: Color(0xFF363AA9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Text(
              'Calculate',
              style: TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
            ),
          ),
        ],
      ),
    );
  }
}
