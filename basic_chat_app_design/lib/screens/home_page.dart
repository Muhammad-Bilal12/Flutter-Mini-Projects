import 'package:basic_chat_app_design/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GupShup"),
        centerTitle: true,
      ),
      body: ChatScreen(),
    );
  }
}
