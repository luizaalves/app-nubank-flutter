import 'package:flutter/material.dart';
import 'package:nubank/pages/widgets/shape_circle.dart';

class MyDocsApp extends StatelessWidget {
  final int currentIndex;
  final double top;
  final bool showMenu;

  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  const MyDocsApp({Key key, this.currentIndex, this.top, this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 0 : 1,
          child: Row(
            children: <Widget>[
                shapeCircle(getColor(0)),
                SizedBox(width: 8),
                shapeCircle(getColor(1)),
                SizedBox(width: 8),
                shapeCircle(getColor(2))
            ],
          ),
        ),
    );
  }
}