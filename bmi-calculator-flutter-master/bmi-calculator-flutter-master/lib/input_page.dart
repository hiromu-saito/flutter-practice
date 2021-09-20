import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const bottomContainerHeight = 80.0;
const reusableCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: reusableCardColor,
                    cardChild: IconContent(
                      icon: Icons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: reusableCardColor,
                    cardChild: IconContent(
                      icon: Icons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: reusableCardColor),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: reusableCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: reusableCardColor),
                )
              ],
            )),
            Container(
              width: double.infinity,
              color: bottomContainerColor,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ],
        ));
  }
}
