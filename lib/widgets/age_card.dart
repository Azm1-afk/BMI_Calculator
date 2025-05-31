import 'package:flutter/material.dart';

class AgeCard extends StatefulWidget {
  const AgeCard({super.key});

  final int age = 20;

  @override
  State<AgeCard> createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 140,
      width: 280,

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
          ],
        ),
      ),
    );
  }
}
