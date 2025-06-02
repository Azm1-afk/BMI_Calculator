import 'package:flutter/material.dart';

class WeightCard extends StatefulWidget {

  const WeightCard({super.key});   // NEW

  @override
  State<WeightCard> createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
  int _weight = 45;

  void incrementWeight() {
    setState(() {
      _weight++;
    });
  }

  void decrementWeight() {
    if (_weight < 10) {
      return;
    } else {
      setState(() {
        _weight--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(

      decoration: BoxDecoration(
        color: Color(0xff041838),
        borderRadius: BorderRadius.circular(5)
      ),

      margin: EdgeInsets.only(left: 35, top: 28),
      height: 175,
      width: deviceWidth*0.4,

      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 15),

            Text(
              'Weight (kg)',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Montserrat',
              ),
            ),

            const SizedBox(height: 7),

            Text(
              _weight.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Montserrat',
              ),
            ),

            const SizedBox(height: 13),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15,
              children: [
                FilledButton(
                  onPressed: () {
                    incrementWeight();
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 30),
                  ),
                ),

                FilledButton(
                  onPressed: () {
                    decrementWeight();
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
