import 'package:bmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'input.dart';
import 'calculator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required this.bmiResult, required this.resultText, required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text('BMI Calculator'),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
          alignment: Alignment.bottomLeft,
          child: const Text('Your Result',
          style: kyourresult,
          ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(

              colour: const Color(0xFF1D1E33),
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:[
                  Text(resultText.toUpperCase(),
                  style: kbmiresult,
                    textAlign: TextAlign.center,
                  ),
                  Text(bmiResult,
                  style: kbminumber,
                    textAlign: TextAlign.center,
                  ),
                  Text(interpretation,
                  textAlign: TextAlign.center,
                  style: kbmimessage,
                  )
                ],
              ),
            )
          ),
          BottomButton(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Input()));}, title: 'Re-Calculate BMI')
        ],
      ),
      );

  }
}
