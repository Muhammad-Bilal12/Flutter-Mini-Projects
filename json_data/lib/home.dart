import 'dart:convert';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List? data;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JSON DATA FETCH"),
      ),
      body: Container(
        color: Colors.amber,
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/json_file/person.json"),
            builder: ((context, snapshot) {
              var myData = json.decode(snapshot.data.toString());

              return ListView.builder(
                itemCount: myData == null ? 0 : myData.length,
                itemBuilder: ((context, index) {
                  return SizedBox(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("Name : ${myData[index]['name']}"),
                              Text("Age : ${myData[index]['age']}"),
                              Text("Height : ${myData[index]['height']}"),
                              Text("Width : ${myData[index]['weight']}"),
                              Text(
                                  "Hair Color : ${myData[index]['hair_color']}"),
                              Text("Gender : ${myData[index]['gender']}"),
                            ]),
                      ),
                    ),
                  );
                }),
              );
            }),
          ),
        ),
      ),
    );
  }
}
