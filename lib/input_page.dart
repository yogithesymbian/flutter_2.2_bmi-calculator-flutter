import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/reusable_card_icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xFFEB1555);
const reuseAbleCardActiveColor = Color(0xFF1D1E33);
const reuseAbleCardInActiveColor = Color(0xFF111328);
const paddingFiveTeen = 15.0;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? genderSelect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(paddingFiveTeen),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            genderSelect = Gender.male;
                          });
                        },
                        child: ReusAbleCard(
                          colour: genderSelect == Gender.male
                              ? reuseAbleCardActiveColor
                              : reuseAbleCardInActiveColor,
                          cardChild: ReusAbleCardIconContent(
                            icon: FontAwesomeIcons.mars,
                            label: 'MALE',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: paddingFiveTeen,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            genderSelect = Gender.female;
                          });
                        },
                        child: ReusAbleCard(
                          colour: genderSelect == Gender.female
                              ? reuseAbleCardActiveColor
                              : reuseAbleCardInActiveColor,
                          cardChild: ReusAbleCardIconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'FEMALE',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(paddingFiveTeen),
                child: ReusAbleCard(
                  colour: reuseAbleCardActiveColor,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(paddingFiveTeen),
                child: Row(
                  children: [
                    Expanded(
                      child: ReusAbleCard(
                        colour: reuseAbleCardActiveColor,
                        cardChild: ReusAbleCardIconContent(
                          icon: FontAwesomeIcons.female,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: paddingFiveTeen,
                    ),
                    Expanded(
                      child: ReusAbleCard(
                        colour: reuseAbleCardActiveColor,
                        cardChild: ReusAbleCardIconContent(
                          icon: FontAwesomeIcons.female,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: paddingFiveTeen),
              color: bottomContainerColour,
            ),
          ],
        ));
  }
}
