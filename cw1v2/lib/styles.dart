import 'package:flutter/material.dart';
import 'package:cw1v2/count_incrementer.dart';

class Styles extends StatelessWidget {
  const Styles(this.firstColor, this.secondColor,{super.key});

  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstColor,
            secondColor
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: CountIncrementer(),
      ),
    );
  }
}
