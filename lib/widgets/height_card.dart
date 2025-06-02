import 'package:flutter/material.dart';

class HeightCard extends StatefulWidget {
  const HeightCard({super.key});

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  double _initSliderValue = 100;

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 180,
      width: deviceWidth*0.86,

      decoration: BoxDecoration(
        color: Color(0xff041838),
        borderRadius: BorderRadius.circular(9),
      ),

      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),

            Text(
              'HEIGHT',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 7),

            Text(
              'Enter your height below (in cm)',
              style: TextStyle(color: Colors.white),
            ),

            const SizedBox(height: 7),

            Text(
              _initSliderValue.round().toString(),
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 25,
              ),
            ),

            const SizedBox(height: 4),

            Container(
              child: Slider(
                value: _initSliderValue,
                max: 250,
                min: 100,
                divisions: 150,
                // label: _initSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _initSliderValue = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
