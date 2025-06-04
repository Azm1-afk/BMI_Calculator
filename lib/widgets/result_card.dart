import 'package:bmi_calculator/bmi_calc.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.height;

    return Container(
      height: screenWidth * 0.6,

      decoration: BoxDecoration(
        color: Color.fromARGB(255, 29, 30, 51),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              'UNDERWEIGHT',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20,
                color: Color.fromARGB(255, 209, 97, 63),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              '15.4',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 45,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Normal BMI Range: 18.5 - 25 kg/m2',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Montserrat',
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 35),

            Text(
              'You have a lower than normal body weight. Try to bulk.',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Montserrat',
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
              },
              child: Text('Re-calculate?', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}
