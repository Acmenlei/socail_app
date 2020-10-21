import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChatContainer();
  }
}

class _ChatContainer extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("聊天s"),);
  }
}