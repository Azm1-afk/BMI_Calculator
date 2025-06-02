import 'package:bmi_calculator/widgets/age_card.dart';
import 'package:bmi_calculator/widgets/femalecard.dart';
import 'package:bmi_calculator/widgets/height_card.dart';
import 'package:bmi_calculator/widgets/weight_card.dart';
import 'package:flutter/material.dart';
import 'widgets/malecard.dart';

// then the next step will be get the user input values and calculate the BMI.

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  double height = 100;
  // int weight = 45;

  void updateHeight(double newHeight){
    setState(() {
      height = newHeight;
    });
  }

  // void updateWeight(int newWeight){
  //   setState(() {
  //     newWeight = weight;
  //   });
  // }


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
              children: [
                MaleCard(),
                FemaleCard()
              ],
            ),
          ),

          HeightCard(
            onHeightChanged: updateHeight,
          ),

          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WeightCard(

                ),
                AgeCard()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
