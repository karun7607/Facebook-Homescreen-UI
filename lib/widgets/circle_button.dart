import 'package:facebook/config/palette.dart';
import 'package:flutter/material.dart';

class CircleButtton extends StatelessWidget {
  final Icon icon;
  final double iconsize;
  final Function onPressed;
  CircleButtton(
      {required this.icon, required this.iconsize, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.blueAccent),
      child: IconButton(
        onPressed: () {
          onPressed;
        },
        icon: icon,
        iconSize: iconsize,
        color: Colors.white,
      ),
    );
  }
}
