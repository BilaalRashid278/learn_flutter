// ignore_for_file: non_constant_identifier_names, library_prefixes, avoid_print

import 'package:flutter/material.dart';
import './components/Containers.dart' as Containers;
// import 'package:http/http.dart' as http;
// import 'd'

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // ignore: avoid_unnecessary_containers
      home: Scaffold(
          appBar: AppBar(title: const Text('My App')),
          body: const Containers.LearnContainer()),
    );
  }
}
