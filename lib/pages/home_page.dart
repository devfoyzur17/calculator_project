// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field, unnecessary_string_escapes, no_leading_underscores_for_local_identifiers

import 'package:calculator_project/widget/landscape.dart';
import 'package:calculator_project/widget/portrait.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

var displayInformation = '';
var displayResult = '';

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      backgroundColor: Color(0xff17181A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: _isLandscape ? BuildLandscape() : BuildPortrait(),
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
}

void equalTab() {
  String finalQuestion = displayInformation;
  Parser p = Parser();
  Expression exp = p.parse(finalQuestion);

  ContextModel cm = ContextModel();
  var eval = exp.evaluate(EvaluationType.REAL, cm);

  displayResult = "\=${eval.toString()}";
}
