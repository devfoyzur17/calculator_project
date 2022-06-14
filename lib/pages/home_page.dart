// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field, unnecessary_string_escapes

import 'package:calculator_project/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _displayInformation = '';
  var _displayResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17181A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerRight,
                width: double.infinity,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        child: Container(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              _displayInformation,
                              style: TextStyle(
                                  overflow: TextOverflow.clip,
                                  color: Color(0xff818181),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24),
                            ))),
                    Expanded(
                        child: Text(
                      _displayResult,
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w500,
                          fontSize: 48),
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff616161),
                          textColor: Color(0xffA5A5A5),
                          buttonText: "AC",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation = '';
                              _displayResult = '';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff616161),
                          textColor: Color(0xffA5A5A5),
                          buttonText: "DEL",
                          buttonTabbed: () {
                            setState(() {
                              if (_displayInformation.length > 0) {
                                _displayInformation =
                                    _displayInformation.substring(
                                        0, _displayInformation.length - 1);
                              }
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff005DB2),
                          textColor: Color(0xff339DFF),
                          buttonText: "%",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '%';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff005DB2),
                          textColor: Color(0xff339DFF),
                          buttonText: "+",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '+';
                            });
                          })),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff303136),
                          textColor: Color(0xff29A8FF),
                          buttonText: "4",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '4';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff303136),
                          textColor: Color(0xff29A8FF),
                          buttonText: "5",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '5';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff303136),
                          textColor: Color(0xff29A8FF),
                          buttonText: "6",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '6';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff005DB2),
                          textColor: Color(0xff24A5FF),
                          buttonText: "-",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '-';
                            });
                          })),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff303136),
                          textColor: Color(0xff29A8FF),
                          buttonText: "7",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '7';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff303136),
                          textColor: Color(0xff29A8FF),
                          buttonText: "8",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '8';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff303136),
                          textColor: Color(0xff29A8FF),
                          buttonText: "9",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '9';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff005DB2),
                          textColor: Color(0xff24A5FF),
                          buttonText: "*",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '*';
                            });
                          })),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff303136),
                          textColor: Color(0xff29A8FF),
                          buttonText: "1",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '1';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff303136),
                          textColor: Color(0xff29A8FF),
                          buttonText: "2",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '2';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff303136),
                          textColor: Color(0xff29A8FF),
                          buttonText: "3",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '3';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff005DB2),
                          textColor: Color(0xff24A5FF),
                          buttonText: "+",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '+';
                            });
                          })),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff303136),
                          textColor: Color(0xff29A8FF),
                          buttonText: "0",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '0';
                            });
                          })),
                  Expanded(
                      child: CustomButton(
                          buttonColor: Color(0xff303136),
                          textColor: Color(0xff29A8FF),
                          buttonText: ".",
                          buttonTabbed: () {
                            setState(() {
                              _displayInformation += '.';
                            });
                          })),
                  Expanded(
                      flex: 2,
                      child: CustomButton(
                          buttonColor: Color(0xff1a90ff),
                          textColor: Color(0xffB2DAFF),
                          buttonText: "=",
                          buttonTabbed: () {
                            setState(() {
                              equalTab();
                            });
                          })),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == '*' || x == '-' || x == '+' || x == '%') {
      return true;
    }
    return false;
  }

  void equalTab() {
    String finalQuestion = _displayInformation;
    Parser p = Parser();
    Expression exp = p.parse(finalQuestion);

    ContextModel cm = ContextModel();
    var eval = exp.evaluate(EvaluationType.REAL, cm);

    _displayResult = "\=${eval.toString()}";
  }
}
