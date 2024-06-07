import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// import './components/Expanded.dart' as Expanded;
// import './components/Calculator.dart';
import './components/ConstraintBoxWidget.dart';

const baseUrl = "jsonplaceholder.typicode.com";
void main() {
  runApp(FlutterApp());
}

Future getData() async {
  print('runnig....');
  Uri url = Uri.https(baseUrl, "/comments");
  print(url);
  try {
    final res = await http.get(url);
    print(res.body);
  } catch (e) {
    print("Error msldfk");
  }
}

class FlutterApp extends StatelessWidget {
  FlutterApp({super.key});
  List<String> forLoop = [
    "Bilal",
    "Abdullah",
    "Anas",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('App')),
        // body: Row(children: [
        //   for (String name in forLoop)
        //     Padding(
        //       padding: const EdgeInsets.only(left: 5, right: 5),
        //       child: ElevatedButton(
        //           onPressed: () {
        //             getData();
        //           },
        //           child: Text(name)),
        //     )
        // ]),
        body: ConsBox(),
      ),
    );
  }
}
