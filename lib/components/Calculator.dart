import 'dart:ffi';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget _keys(double size, var num) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.white, width: 1)),
      width: size,
      height: size,
      child: Center(
        child: Text(
          "$num",
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }

  // Code /// ______________
  List CaluationsList = [];
  String displayValues = "";
  var addedVal = "";
  List calKeys = [7, 8, 9, "/", 4, 5, 6, "*", 1, 2, 3, "-", 0, ".", "=", "+"];

  calculations(var key) {
    switch (calKeys[key]) {
      case "*":
      case "/":
      case "+":
      case "-":
        CaluationsList.add(addedVal);
        CaluationsList.add("${calKeys[key]}");
        addedVal = "";
        setState(() {
          print(displayValues);
          displayValues = "$displayValues ${calKeys[key]}";
        });
        break;
      default:
        addedVal = "$addedVal${calKeys[key]}";
        setState(() {
          displayValues.contains('*') ||
                  displayValues.contains('/') ||
                  displayValues.contains('-') ||
                  displayValues.contains('+')
              ? {displayValues = " $displayValues$addedVal", addedVal = ""}
              : displayValues = "$addedVal";
        });
        print(CaluationsList);
    }
  }

  performCalulations() {
    if (CaluationsList.isNotEmpty) {
      // var calculated = CaluationsList[0];
      for (var i = 1; i < CaluationsList.length; i++) {
        // calculated = calculated
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      const int radio = 4;
      final deviceWidth = contraints.constrainWidth();
      return Column(children: [
        Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text(
                  "$displayValues",
                  style: const TextStyle(fontSize: 40),
                ),
              ),
            )),
        Expanded(
            child: Wrap(
                children: calKeys
                    .asMap()
                    .entries
                    .map(
                      (e) => InkWell(
                          onTap: () {
                            if (e.value == "=") {
                              performCalulations();
                            } else {
                              calculations(e.key);
                            }
                          },
                          child: _keys(deviceWidth / radio, e.value)),
                    )
                    .toList()))
      ]);
    });
  }
}
