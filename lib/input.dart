import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'button.dart';
import 'result_display.dart';
import 'bottom_button.dart';
import 'calculator.dart';

enum Gender {male, female}

class Input extends StatefulWidget {
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  // late Gender selectedGender = Gender.Null;
  late Gender selectedGender ;
  Color malecardcolor = inactivecolour;
  Color femalecardcolor = activecolour;
  void update(selectedGender) {
    if (selectedGender == Gender.male) {
      if (malecardcolor == inactivecolour) {
        malecardcolor = activecolour;
        femalecardcolor = inactivecolour;
      } else {
        malecardcolor = inactivecolour;
        femalecardcolor = activecolour;
      }
    } else {
      if (femalecardcolor == inactivecolour) {
        femalecardcolor = activecolour;
        malecardcolor = inactivecolour;
      } else {
        femalecardcolor = inactivecolour;
        malecardcolor = activecolour;
      }
    }
  }

  int height = 180;
  int weight = 60;
  int age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                        update(selectedGender);
                      });
                    },
                    child: ReusableCard(
                      colour: malecardcolor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 20.0,
                          ),
                          Icon(
                            // Icons.man_outlined,
                            FontAwesomeIcons.mars,
                            size: 100.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                        update(selectedGender);
                      });
                    },
                    child: ReusableCard(
                      colour: femalecardcolor,
                      // height: 200.0,
                      // width: 170.0,

                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 20.0,
                          ),
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 100.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activecolour,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: knumberText,
                      ),
                      const Text(
                        'cm',
                        style: klabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: const Color(0xFFEB1555),
                      overlayColor: const Color(0xFFEB1555),
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 220.0,
                      activeColor: const Color(0xFFEB1555),
                      inactiveColor: const Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ReusableCard(
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        'WEIGHT',
                        style: klabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: knumberText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(FontAwesomeIcons.minus, () {
                            setState(() {
                              weight--;
                            });
                          }),
                          const SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(FontAwesomeIcons.plus, () {
                            setState(() {
                              weight++;
                            });
                          }),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                  colour: const Color(0xFF1D1E33),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        'AGE',
                        style: klabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: knumberText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(FontAwesomeIcons.minus, () {
                            setState(() {
                              age--;
                            });
                          }),
                          const SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(FontAwesomeIcons.plus, () {
                            setState(() {
                              age++;
                            });
                          }),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                  colour: const Color(0xFF1D1E33),
                ),
              ),
            ],
          ),
          BottomButton(onTap:(){
            CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
              bmiResult: calc.calculate(),
              resultText: calc.getResult(),
              interpretation: calc.getInterpretation(),
            )));},
              title: 'Calculate BMI')
        ],
      ),
    );
  }
}
