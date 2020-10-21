import 'package:flutter/material.dart';

class Square extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SquareContainer();
  }
}

class _SquareContainer extends State<Square> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("广场"),);
  }
}