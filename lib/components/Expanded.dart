// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            width: 100,
            height: 70,
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: 100,
            height: 70,
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: 100,
            height: 70,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
