import 'package:flutter/material.dart';

class WeightCard extends StatefulWidget {
  const WeightCard({super.key});

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
    return Container(
      height: 173,
      width: 270,

      color: Color(0xff041838),

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
