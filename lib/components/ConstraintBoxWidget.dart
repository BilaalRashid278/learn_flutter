import "package:flutter/material.dart";

class ConsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 200,
        maxHeight: 100,
      ),
      child: Container(
        color: Colors.red,
        width: double.infinity,
        height: 150,
      ),
    );
  }
}
