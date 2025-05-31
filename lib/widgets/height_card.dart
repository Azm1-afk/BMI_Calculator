import 'package:flutter/material.dart';

class HeightCard extends StatefulWidget {
  const HeightCard({super.key});

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 140,
      width: 280,

      decoration: BoxDecoration(
        color: Color(0xff041838)
      ),
      
      child: Center(
        child: Column(
          children: [
            Text('HEIGHT', style: TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),

    );
  }
}
