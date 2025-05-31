import 'package:flutter/material.dart';

class MaleCard extends StatefulWidget {
  const MaleCard({super.key});

  @override
  State<MaleCard> createState() => _MaleCardState();
}

class _MaleCardState extends State<MaleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),

      height: 240,
      width: 150,

      decoration: BoxDecoration(
        color: Color.fromARGB(255, 52, 0, 52)
      ),

      
      child: Column(
        children: [
          Text('Male', style: TextStyle(color: Colors.white,
          fontSize: 40),)
        ],
      ),
          
    );
  }
}
