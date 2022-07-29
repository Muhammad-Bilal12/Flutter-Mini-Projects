import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  ChatList({
    this.text,
    Key? key,
  }) : super(key: key);

  final String? text;

  final String name = "bilal";

  final date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: Text(
          name[0].toUpperCase(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      title: Text(text!),
      subtitle: Text(
        '${date.day}/${date.month}/${date.year}',
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
