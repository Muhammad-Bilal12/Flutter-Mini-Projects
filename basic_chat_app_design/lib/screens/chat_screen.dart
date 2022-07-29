import 'package:flutter/material.dart';

import 'chatlist.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  List message = ["Hello"];

  void sendMessage(value) {
    setState(() {
      message.insert(0, value);
    });
  }

  final String name = "bilal";

  final date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: message.length,
            reverse: true,
            itemBuilder: (BuildContext context, int index) {
              return ChatList(text: "${message[index]}");
            },
          ),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _textController,
                  onSubmitted: sendMessage,
                  decoration:
                      const InputDecoration.collapsed(hintText: "Type message"),
                ),
              ),
              Container(
                child: IconButton(
                  onPressed: () {
                    sendMessage(_textController.text);
                  },
                  icon: Icon(
                    Icons.send,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
