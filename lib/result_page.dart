import 'package:bmi_calculator/widgets/result_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

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

            ResultCard()

          ],
        ),
      ),

      // body: ,
    );
  }
}
