import 'package:flutter/material.dart';

class Femalecard extends StatefulWidget {
  const Femalecard({super.key});

  @override
  State<Femalecard> createState() => _FemalecardState();
}

class _FemalecardState extends State<Femalecard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 35, top: 35),
      padding: EdgeInsets.all(20),

      height: 240,
      width: 190,

      decoration: BoxDecoration(
        color: Color(0xff041838),
        boxShadow: [
          BoxShadow(
            color: Color(0xff082952),
            offset: Offset(0, 4), // Horizontal: 0, Vertical: 4
            blurRadius: 6, // Softens the edges
            // spreadRadius: 1,
          ),
        ],
      ),

      child: Column(
        children: [
          Text('Female', style: TextStyle(color: Colors.white, fontSize: 40)),
        ],
      ),
    );
  }
}
