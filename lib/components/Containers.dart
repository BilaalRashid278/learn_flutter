// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class LearnContainer extends StatelessWidget {
  const LearnContainer({super.key});
  Widget multiContainer() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        color: Colors.amber.shade700,
        // gradient: const LinearGradient(colors: [
        //   Colors.black,
        //   Color.fromARGB(101, 203, 72, 62),
        //   Colors.green,
        //   Colors.blueAccent,
        // ]),
        // border: Border.all(width: 1, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 2.0,
              blurRadius: 10.0,
              offset: Offset(5, 2))
        ],
      ),
      alignment: Alignment.center,
      width: 200,
      height: 200,
      // color: Colors.blueAccent,
      child: const Text(
        "Container",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Color.fromARGB(255, 13, 75, 145)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            multiContainer(),
            multiContainer(),
            multiContainer(),
            multiContainer(),
            multiContainer(),
            multiContainer(),
            multiContainer(),
            // ignore: sized_box_for_whitespace
            Container(
              width: 200,
              height: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(10),
                  child: const Image(
                      filterQuality: FilterQuality.low,
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,
                      image: NetworkImage(
                          "https://th.bing.com/th/id/OIP.SNdpZscc0xEnwxfK73xWpAAAAA?rs=1&pid=ImgDetMain"))),
            )
          ],
        ),
      ),
    );
  }
}
