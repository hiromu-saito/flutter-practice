import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.label, @required this.onTap});

  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Center(
          child: Text(
            label,
            style: kLargeButtonTextStyle,
          ),
        ),
        width: double.infinity,
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
