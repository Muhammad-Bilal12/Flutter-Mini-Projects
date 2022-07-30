import "package:flutter/material.dart";
import 'package:flutter_http_get_request/body.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Request APi"),
      ),
      body: HttpBody(),
    );
  }
}
