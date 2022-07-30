import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HttpBody extends StatefulWidget {
  const HttpBody({Key? key}) : super(key: key);

  @override
  State<HttpBody> createState() => _HttpBodyState();
}

class _HttpBodyState extends State<HttpBody> {
  var url = Uri.parse("https://swapi.dev/api/people/");
  List? data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    var response = await http.get(url, headers: {"Accept": "application/json"});

    setState(() {
      var jsonResponse = convert.json.decode(response.body);
      print(jsonResponse.runtimeType);
      data = jsonResponse['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: ElevatedButton(
    //     onPressed: getData,
    //     child: Text("data"),
    //   ),
    // );

    return ListView.builder(
        itemCount: data == null ? 0 : data!.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.yellow[200],
            child: Container(
              padding: EdgeInsets.all(16),
              child: Text("${data![index]['name']}"),
            ),
          );
        });
  }
}
