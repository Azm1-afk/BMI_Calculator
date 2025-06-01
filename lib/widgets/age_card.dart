import 'package:flutter/material.dart';

class AgeCard extends StatefulWidget {
  const AgeCard({super.key});

  final int age = 20;

  @override
  State<AgeCard> createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {

  int _age = 20;

  void incrementAge(){
    setState(() {
      _age++;
    });
  }
  void decrementAge(){
    setState(() {
      _age--;
    });
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
              'Age',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Montserrat',
              ),
            ),

            const SizedBox(height: 7),

            Text(_age.toString(), style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'Montserrat')),

            const SizedBox(height: 13),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing:15,
              children: [

                FilledButton(
                  onPressed: () {
                    incrementAge();
                  },
                  child: Text('+', style: TextStyle(fontFamily: 'Montserrat',fontSize: 30)),
                ),

                FilledButton(
                  onPressed: () {
                    decrementAge();
                  },
                  child: Text('-', style: TextStyle(fontFamily: 'Montserrat',fontSize: 30)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
