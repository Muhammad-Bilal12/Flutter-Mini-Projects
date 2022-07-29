import 'dart:html';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController tc1 = TextEditingController(text: '0');
  TextEditingController tc2 = TextEditingController(text: '0');
  int num1 = 0, num2 = 0, result = 0;

  void doAddition() {
    setState(() {
      num1 = int.parse(tc1.text);
      num2 = int.parse(tc2.text);
      result = (num1 + num2);
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(tc1.text);
      num2 = int.parse(tc2.text);
      result = (num1 - num2);
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(tc1.text);
      num2 = int.parse(tc2.text);
      result = (num1 * num2);
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(tc1.text);
      num2 = int.parse(tc2.text);
      result = (num1 / num2).round();
    });
  }

  void clear() {
    setState(() {
      tc1.text = '0';
      tc2.text = '0';

      tc1.clear();
      tc2.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calculator App",
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Output : $result",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          TextField(
            controller: tc1,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: "Enter Num 1",
            ),
          ),
          TextField(
            controller: tc2,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: "Enter Num 1",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                color: Colors.teal,
                onPressed: doAddition,
                child: const Text("+"),
              ),
              MaterialButton(
                color: Colors.teal,
                onPressed: doSub,
                child: const Text("-"),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                color: Colors.teal,
                onPressed: doMul,
                child: const Text("*"),
              ),
              MaterialButton(
                color: Colors.teal,
                onPressed: doDiv,
                child: const Text("/"),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            color: Colors.teal,
            onPressed: clear,
            child: const Text("Clear"),
          ),
        ]),
      ),
    );
  }
}
