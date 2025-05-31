import 'package:flutter/material.dart';

class WeightCard extends StatefulWidget {
  const WeightCard({super.key});

  @override
  State<WeightCard> createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 280,

      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 15),

            Text(
              'Weight',
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
