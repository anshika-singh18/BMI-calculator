import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({ required this.onTap, required this.title});
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.red,
        height: 60.0,
        child: Center(
          child: Text(title,
              style: kcalcbmibutton,
          ),
        ),
        padding: const EdgeInsets.only(bottom: 10.0),
      ),
    );
  }
}
