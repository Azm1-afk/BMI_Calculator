import 'package:bmi_calculator/widgets/result_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  String bmiCategory(){
    if (bmi < 18.5) {
      return "UNDERWEIGHT";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "NORMAL";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "OVERWEIGHT";
    } else {
      return "OBESE";
    }
  }

  String getRecommendation(){
    if (bmi < 18.5) {
      return "You are underweight and need to eat more.";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Your BMI is within the perfect range. You need not make any changes.";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "Your BMI is above the normal range. You may need to consider eating less";
    } else {
      return "Your BMI is above the normal range. You may need to consider eating less";
    }
  }
  final num bmi;
  const ResultPage({super.key, required this.bmi});


  @override
  Widget build(BuildContext context) {
    // Color color1 = Color.fromARGB(255, 29, 30, 51);
    Color color2 = Color.fromARGB(255, 9, 14, 33);
    // Color color3 = Color.fromARGB(255,209, 97, 63);
    // Color color4 = Color.fromARGB(255, 50, 51, 70);

    return Scaffold(
      backgroundColor: color2,

      appBar: AppBar(
        backgroundColor: color2,
        title: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 35,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            const SizedBox(
              height: 8.2,
            ),

            ResultCard(passedBMI: bmi, recommendation: getRecommendation(), categoryPassed: bmiCategory(),)

          ],
        ),
      ),

      // body: ,
    );
  }
}
