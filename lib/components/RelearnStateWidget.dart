import 'package:flutter/material.dart';

abstract class ReLearn extends State<StatefulWidget> {
  State createState() {
    return _ReLearnWidget();
  }
}

class _ReLearnWidget extends ReLearn {
  @override
  Widget build(BuildContext context) {
    return Text("Hello");
  }
}
