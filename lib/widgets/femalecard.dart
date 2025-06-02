import 'package:flutter/material.dart';

class FemaleCard extends StatefulWidget {
  const FemaleCard({super.key});

  @override
  State<FemaleCard> createState() => _FemaleCardState();
}

class _FemaleCardState extends State<FemaleCard> {
  Color _cardColor = Color(0xff041838);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 35, top: 35, bottom: 25),
        padding: EdgeInsets.all(20),

        height: 215,
        width: 190,

        decoration: BoxDecoration(
          color: _cardColor,
          // boxShadow: [
          //   BoxShadow(
          //     color: Color(0xff082952),
          //     offset: Offset(0, 4), // Horizontal: 0, Vertical: 4
          //     blurRadius: 6, // Softens the edges
          //     // spreadRadius: 1,
          //   ),
          // ],
        ),

        child: Column(
          children: [
            Text('Female', style: TextStyle(color: Colors.white, fontSize: 40)),
            SizedBox(height: 15),
            Icon(Icons.female, size: 100, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
