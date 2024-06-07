import 'package:flutter/material.dart';

class MyStateFullWidget extends StatefulWidget {
  const MyStateFullWidget({super.key});
  @override
  State createState() => _MyStateFullWidgetState();
}

class _MyStateFullWidgetState extends State<MyStateFullWidget> {
  String name = "Bilal";
  void _update() {
    setState(() {
      if (name == "Bilal") {
        name = "Abdullah";
      } else {
        name = "Bilal";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hello $name"),
        ElevatedButton(onPressed: _update, child: const Text("Change"))
      ],
    );
  }
}
