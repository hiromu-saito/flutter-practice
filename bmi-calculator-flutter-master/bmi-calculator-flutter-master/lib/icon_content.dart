import 'package:flutter/material.dart';

const double iconSize = 80;
const textStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8d8E98),
);

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: textStyle,
        )
      ],
    );
  }
}
