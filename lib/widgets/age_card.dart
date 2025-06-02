import 'package:flutter/material.dart';

class AgeCard extends StatefulWidget {
  const AgeCard({super.key});

  final int age = 20;

  @override
  State<AgeCard> createState() => _AgeCardState();

}


class _AgeCardState extends State<AgeCard> {
  int _age = 20;

  void incrementAge() {
    if (_age > 120) {
      return;
    } else {
      setState(() {
        _age++;
      });
    }
  }

  void decrementAge() {
    if (_age < 1) {
      return;
    } else {
      setState(() {
        _age--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(left: 35, top: 28),
      height: 175,
      width: deviceWidth*0.4,

      decoration: BoxDecoration(
          color: Color(0xff041838),
          borderRadius: BorderRadius.circular(5)
      ),

      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 15),

            Text(
              'Age',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Montserrat',
              ),
            ),

            const SizedBox(height: 7),

            Text(
              _age.toString(),
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
                    incrementAge();
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Color(0xFF363AA9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Text(
                    '+',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 30),
                  ),
                ),

                FilledButton(
                  onPressed: () {
                    decrementAge();
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Color(0xFF363AA9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
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
