import 'package:flutter/material.dart';

import 'myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mini Calculator App",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyHomePage(),
    );
  }
}
