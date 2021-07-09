import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.tappedFunction});

  final Color colour;
  final Widget cardChild;
  final Function tappedFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tappedFunction,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
