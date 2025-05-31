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

      decoration: BoxDecoration(color: Color(0xff041838)),

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

            const SizedBox(height: 10),

            Text(
              'Enter your height below (in cm)',
              style: TextStyle(color: Colors.white),
            ),

            const SizedBox(height: 2),

            Container(
              width: 70,

              child: TextField(
                cursorColor: Colors.white,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white), // ✅ Light text color here
                decoration: InputDecoration(contentPadding: EdgeInsets.all(20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
