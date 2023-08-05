import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.colour, required this.cardchild});
  final Color colour;
  final Widget cardchild;
  // final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5.0, 5.0, 10.0, 5.0),
      decoration: BoxDecoration(
        // color: Colors.deepOrange,
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardchild,
    );
  }
}