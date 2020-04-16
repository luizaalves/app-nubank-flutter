import 'package:flutter/material.dart';
import 'package:nubank/pages/widgets/shape_circle.dart';

class MyDocsApp extends StatelessWidget {
  final int currentIndex;

  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  const MyDocsApp({Key key, this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        shapeCircle(getColor(0)),
        SizedBox(width: 8),
        shapeCircle(getColor(1)),
        SizedBox(width: 8),
        shapeCircle(getColor(2))
      ],
    );
  }
}