// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});
  @override
  State<Buttons> createState() => _ButtonsActions();
}

class _ButtonsActions extends State<Buttons> {
  int counter = 0;
  Color changeColor = Colors.greenAccent;
  Future<String> hloPromise(int time) {
    return Future.delayed(Duration(seconds: time), () => "Hello How Are You!");
  }

  sayHello() {
    setState(() {
      switch (counter) {
        case 0:
          changeColor = Colors.red;
          counter++;
          break;
        case 1:
          changeColor = Colors.blue;
          counter++;
          break;
        case 2:
          changeColor = Colors.yellow;
          counter++;
          break;
        case 3:
          changeColor = Colors.orange;
          counter++;
          break;
        default:
          changeColor = Colors.greenAccent;
          counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('hello'),
        InkWell(
            onTap: () {
              print("Gesture.....");
            },
            child: const Text('Click Me!')),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(100, 35),
              backgroundColor: changeColor,
              padding: const EdgeInsets.all(15)),
          onPressed: sayHello,
          child: const Text(
            "Hello",
            style: TextStyle(color: Colors.white),
          ),
        ),
        IconButton(
            onPressed: () async {
              print("IconButton");
              final str = await hloPromise(2);
              print(str);
            },
            icon: const Icon(Icons.person_2))
      ],
    );
  }
}
